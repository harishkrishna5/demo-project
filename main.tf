provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "my_instance" {
  ami           = "ami-053b12d3152c0cc71" 
  instance_type = "t2.micro"
   metadata_options {
      http_endpoint = "enabled"
      http_tokens   = "required"
}

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
