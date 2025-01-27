variable "region" {
  description = "The AWS region to deploy the instance in"
  type        = string
  default = "us-west-2"
}

variable "ami" {
  description = "The AMI ID to use for the instance"
  type        = string
  default     = "ami-0fa40e25bf4dda1f6"
}

variable "instance_type" {
  description = "The type of instance to deploy"
  type        = string
  default     = "t2.micro"   

}

variable "tags" {
  description = "A map of tags to assign to the instance"
  type        = map(string)
  default     = {
    Name = "ExampleInstance"
  }
}

