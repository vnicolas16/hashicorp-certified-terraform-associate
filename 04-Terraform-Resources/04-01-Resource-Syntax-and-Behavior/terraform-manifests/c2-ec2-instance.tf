# Create EC2 Instance
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance

resource "aws_instance" "my-ec2-vm-Nico" {
  ami               = "ami-08982f1c5bf93d976"
  instance_type     = "t2.micro"
  availability_zone = "us-east-1a"
  #availability_zone = "us-east-1b"
  tags = {
    "Name" = "web"
    "tag1" = "Update-test-1"    
  }
}

