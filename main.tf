
provider "aws" {
  region = "us-west-2" // Specify your desired region
}
module "ec2_instance_ExampleInstance11" {
  source        = "./ec2_instance"
  region        = "us-west-2"
  ami           = "ami-0fa40e25bf4dda1f6"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleInstance11"
  }
}
module "ec2_instance_ExampleInstance12" {
  source        = "./ec2_instance"
  region        = "us-west-2"
  ami           = "ami-0fa40e25bf4dda1f6"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleInstance12"
  }
}
module "ec2_instance_sachin" {
  source        = "./ec2_instance"
  region        = "us-west-2"
  ami           = "ami-0fa40e25bf4dda1f6"
  instance_type = "t2.micro"

  tags = {
    Name = "sachin"
  }
}
module "ec2_instance_santosh1" {
  source        = "./ec2_instance"
  region        = "us-west-2"
  ami           = "ami-0fa40e25bf4dda1f6"
  instance_type = "t2.micro"

  tags = {
    Name = "santosh1"
  }
}
