resource "aws_security_group" "aws_sg" {
  
  name = "aws_sg"
  
  ingress {

    from_port = "22"
    to_port = "22"
    protocol = "tcp"
    description = "allow ssh"
    cidr_blocks = [ "0.0.0.0/0" ]
  }

  ingress {

    from_port = "443"
    to_port = "443"
    protocol = "tcp"
    description = "allow http"
    cidr_blocks = [ "0.0.0.0/0" ]

  }
  ingress {

    from_port = "80"
    to_port = "80"
    protocol = "tcp"
    description = "allow http"
    cidr_blocks = [ "0.0.0.0/0" ]

  }

  egress {

    from_port = "0"
    to_port = "0"
    protocol = "-1"
    description = "outgoing traffic"
    cidr_blocks = [ "0.0.0.0/0" ]
  }

  tags = {
    "Name" = "allow ssh and http traffic"
  }

}
