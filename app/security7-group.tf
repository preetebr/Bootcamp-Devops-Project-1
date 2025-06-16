resource "aws_security_group" "allow_ssh" {
    name = "allow_ssh"
    description = "Permitir acesso remoto via ssh porta 22"

    ingress = {
        description = "SSH from VPC"
        from_port   = 22
        to_port     = 22
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
      name = "allow_ssh"
    }
  
}

resource "aws_security_group" "allow_http" {
    name = "allow_ssh"
    description = "Permitir acesso remoto via ssh porta 22"

    ingress = {
        description = "http from VPC"
        from_port   = 80
        to_port     = 80
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
      name = "allow_http"
    }
  
}

resource "aws_security_group" "allow_egress" {
    name = "allow_ssh"
    description = "Permitir acesso remoto via ssh porta 22"

    ingress = {
        description = "SSH from VPC"
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
      name = "allow_egress"
    }
  
}