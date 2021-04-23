resource "aws_security_group" "acesso-ssh" {
  name        = "acesso-ssh"
  description = "acesso-ssh"
  #vpc_id      = aws_vpc.main.id

  ingress {
    #description      = "TLS from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
cidr_blocks      = var.cidr_acesso_remoto
    #ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
  }

  tags = {
    Name = "ssh"
  }
}

#alias 2
#resource "aws_security_group" "acesso-ssh-us-east-2" {
#  provider = "aws.us-east-2"  
#  name        = "acesso-ssh"
#  description = "acesso-ssh"
#  #vpc_id      = aws_vpc.main.id

 # ingress {
 #   #description      = "TLS from VPC"
 #   from_port        = 22
 #   to_port          = 22
 #   protocol         = "tcp"
#cidr_blocks      = ["179.208.103.3/32","0.0.0.0/0"]
    #ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
 # }

 # tags = {
 #   Name = "ssh"
 # }
#}