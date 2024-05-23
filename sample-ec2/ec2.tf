# created ec2
resource "aws_instance" "web" {
  ami           = data.aws_ami.ubuntu.id # ami id is the argument
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}

# 
output "privateip" {
    value = aws_instance.web.private_ip # private ip is the attribute 
  
}

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}