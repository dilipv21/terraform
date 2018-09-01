//Provider -> Helps in deciding with GCP/AWS/AZURE etc.

provider "aws" {
  region = "ap-southeast-2"
  profile = "saml"
}


// find VPC's

//terraform init -> Finds all the dependencies related aws

resource "aws_instance" "terraform-image" {
  ami = "ami-71f8e112"
  instance_type = "t2.micro"
}


resource "aws_instance" "frontend" {
  ami = "ami-71f8e112"
  instance_type = "t2.micro"
}


# variables

#String

variable "iamstrting" {
  type = "string"
  description = "Can explicity type provide string else default is string itself"
}

#or
variable "stringwithouttype" {
  default = "iamstring"
}


#List

variable "iamlist" {
  type = "list"
  default = [
    "a",
    "b",
    3]
}

#boolean
variable "iamboolean" {

  default = true
}


#map


variable "iammap" {
  type = "map"
  default = {
    "key1" = "value"
    "key2"= "value"
   }
}


