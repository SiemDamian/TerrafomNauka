provider "aws" { 
    region =  "us-east-2" 
    access_key = var.aws_access_key_id
    secret_key = var.aws_secret_access_key

} 

resource "aws_instance" "example" { 
     ami = "ami-0fb653ca2d3203ac1" 
    instance_type = "t2.micro" 
        tags = { 
        Name = "terraform-example-one" 
    } 
} 