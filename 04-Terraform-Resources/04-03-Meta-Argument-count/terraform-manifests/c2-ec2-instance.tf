# Create EC2 Instance
resource "aws_instance" "web" {
  ami           = "ami-052064a798f08f0d3" # Amazon Linux
  instance_type = "t2.micro"
  subnet_id     = "subnet-066bda0f1fd4421c4"
  count         = 5
  tags = {
    #"Name" = "web"
    "Name" = "web-${count.index}"
  }
}
