resource "local_file" "foo" {
  content  = "I love myself :)"
  filename = "my_special_file"
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"

  key_name      = "first_ec2"   # The name of your key pair

  tags = {
    Name = "ec2-for-jenkins"
  }
}
