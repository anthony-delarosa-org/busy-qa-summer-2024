# ec2 resource
#resource "aws_instance" "first-instance" {
#  ami                    = var.ami_id
#  instance_type          = var.instance_type
#  availability_zone      = "ca-west-1a"
#  key_name               = var.key_name
#  vpc_security_group_ids = [aws_security_group.allow_ssh.id]
#  root_block_device {
#    volume_size           = 10
#    volume_type           = "gp3"
#    encrypted             = true
#    delete_on_termination = true
#  }
#
#  tags = {
#    Name = "${var.name}-instance"
#  }
#}
#
## ec2 sg resource
#resource "aws_security_group" "allow_ssh" {
#  name        = "Allow-SSH"
#  description = "Allow SSH Inbound Traffic"
#  vpc_id      = var.vpc_id
#
#  ingress {
#    description = "Allow-SSH"
#    from_port   = 22
#    to_port     = 22
#    protocol    = "tcp"
#    cidr_blocks = [var.public_ip]
#  }
#
#  egress {
#    from_port        = 0
#    to_port          = 0
#    protocol         = "-1"
#    cidr_blocks      = ["0.0.0.0/0"]
#    ipv6_cidr_blocks = ["::/0"]
#  }
#
#  tags = {
#    Name = "${var.name}-allow-SSH"
#  }
#}
#
#output "ec2_public_ip" {
#  value = aws_instance.first-instance.public_ip
#}
