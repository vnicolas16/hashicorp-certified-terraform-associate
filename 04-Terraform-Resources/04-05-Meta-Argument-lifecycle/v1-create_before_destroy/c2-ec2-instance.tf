
# Create EC2 Instance
resource "aws_instance" "web" {
  ami               = "ami-052064a798f08f0d3" # Amazon Linux
  instance_type     = "t2.micro"
  subnet_id = "subnet-09c76da31475bffe7"
  #subnet_id =  "subnet-019858be7e0c54cda"
  #availability_zone = "us-east-1b"
  availability_zone = "us-east-1a"
  tags = {
    "Name" = "web-1"
  }
  
  lifecycle {
    create_before_destroy = true
  }

}
