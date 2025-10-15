# Create EC2 Instance
resource "aws_instance" "web" {
  ami = "ami-052064a798f08f0d3" # Amazon Linux
  instance_type = "t2.micro"
  subnet_id = "subnet-09c76da31475bffe7"
  tags = {
    "Name" = "web-2"
  }
/*
  lifecycle {
    prevent_destroy = true # Default is false
  }
*/
}

