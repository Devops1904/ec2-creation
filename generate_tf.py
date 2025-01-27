import jinja2
import os

# Read the EC2 data from the text file
ec2_data_path = 'ec2data.txt'
if not os.path.exists(ec2_data_path):
    print(f"Error: {ec2_data_path} does not exist.")
    exit(1)

with open(ec2_data_path) as f:
    ec2_data = [line.strip() for line in f.readlines()]

# Parse the EC2 data into a list of dictionaries
ec2_instances = []
for data in ec2_data:
    instance_info = {}
    for item in data.split(','):
        key_value = item.split('=')
        if len(key_value) == 2:
            instance_info[key_value[0]] = key_value[1]
    ec2_instances.append(instance_info)

# Load the Jinja2 template
template_loader = jinja2.FileSystemLoader(searchpath="./")
template_env = jinja2.Environment(loader=template_loader)
template = template_env.get_template('ec2_instance_template.j2')

# Check if main.tf exists
main_tf_path = 'main.tf'
if not os.path.exists(main_tf_path):
    print(f"Error: {main_tf_path} does not exist.")
    exit(1)

# Read the current content of main.tf to check for existing instance names
with open(main_tf_path, 'r') as f:
    main_tf_content = f.read()

# Render the template for each EC2 instance and append to main.tf if the instance name does not exist
new_instance_added = False
try:
    with open(main_tf_path, 'a') as f:
        for instance in ec2_instances:
            instance_name = instance['instance_name']
            if f'module "ec2_instance_{instance_name}"' in main_tf_content:
                print(f"Instance {instance_name} already exists in {main_tf_path}. Skipping.")
            else:
                rendered_template = template.render(instance)
                f.write(rendered_template + '\n')
                print(f"Appended configuration for {instance_name} to {main_tf_path}")
                new_instance_added = True
except Exception as e:
    print(f"Error writing to {main_tf_path}: {e}")

if new_instance_added:
    with open('tf_run_required.flag', 'w') as flag_file:
        flag_file.write('true')

print("All configurations have been appended successfully.")
