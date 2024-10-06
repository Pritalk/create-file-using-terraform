provider "aws" {
    access_key = var.access_key
    secret_key = var.secret_key
    region = var.aws_region
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"

  tags = {
    Name = "ec2-for-jenkins"
  }
}
