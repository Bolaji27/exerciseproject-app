resource "aws_instance" "exerciseproject_app" {
  ami             = var.ami
  instance_type   = var.instance_type
  security_groups = [aws_security_group.exerciseproject_sg.name]
  key_name        = var.key_name
  tags = {
    Name = "exerciseproject-app-${var.environment}"
  }
  user_data = filebase64("userdata.sh")
}