resource "aws_security_group" "exerciseproject_sg" {
  name        = "exerciseproject-sg"
  description = "exercise project security group"
  vpc_id      = var.vpc_id
}

resource "aws_security_group_rule" "ssh_access" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.exerciseproject_sg.id
}

resource "aws_security_group_rule" "http_access" {
  type              = "ingress"
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.exerciseproject_sg.id
}

resource "aws_security_group_rule" "exerciseproject_outbound_access" {
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.exerciseproject_sg.id
}