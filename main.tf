provider "aws" {
  region = "us-west-2" // Specify your desired region
}
module "ec2_instance_ExampleInstance1" {
  source        = "./ec2_instance"
  region        = "us-west-2"
  ami           = "ami-0fa40e25bf4dda1f6"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleInstance1"
  }
}
module "ec2_instance_ExampleInstance2" {
  source        = "./ec2_instance"
  region        = "us-west-2"
  ami           = "ami-0fa40e25bf4dda1f6"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleInstance2"
  }
}
module "ec2_instance_ExampleInstance3" {
  source        = "./ec2_instance"
  region        = "us-west-2"
  ami           = "ami-0fa40e25bf4dda1f6"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleInstance3"
  }
}
module "ec2_instance_ExampleInstance4" {
  source        = "./ec2_instance"
  region        = "us-west-2"
  ami           = "ami-0fa40e25bf4dda1f6"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleInstance4"
  }
}
