provider "aws" {
  region = "ap-south-1"  # Change this to your preferred AWS region
}

resource "aws_instance" "my_instance" {
  ami           = "ami-053b12d3152c0cc71"  # Replace with your AMI ID
  instance_type = "t2.micro"

  tags = {
    Name = "MyEC2Instance"
  }
}

output "instance_id" {
  value = aws_instance.my_instance.id
}

output "public_ip" {
  value = aws_instance.my_instance.public_ip
}