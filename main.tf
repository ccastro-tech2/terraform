provider "aws" {
    version = "~> 3.0"
    region  = "us-east-1"
}
provider "aws" {
    alias = "us-east-2"
    version = "~> 3.0"
    region  = "us-east-2"
}

resource "aws_instance" "dev"{
    count = 3
    ami = "ami-042e8287309f5df03"
    instance_type = "t2.micro"
    key_name = "terrform-aws"
    tags = {
        name = "dev${count.index}"
           } 
    vpc_security_group_ids = ["${aws_security_group.acesso-ssh.id}"] #terraform show para ver o id do security      
}

resource "aws_instance" "dev4"{
    ami = "ami-042e8287309f5df03"
    instance_type = "t2.micro"
    key_name = "terrform-aws"
    tags = {
        name = "dev4"
    } 
    vpc_security_group_ids = ["${aws_security_group.acesso-ssh.id}"] 
    depends_on = [aws_s3_bucket.dev4]
}

resource "aws_instance" "dev5"{
    #provider = "aws-us-east-1" pq não encontra o modulo
    ami = "ami-042e8287309f5df03"
    instance_type = "t2.micro"
    key_name = "terrform-aws"
    tags = {
        name = "dev5"
    } 
    vpc_security_group_ids = ["${aws_security_group.acesso-ssh.id}"] 
    #depends_on = [aws_s3_bucket.dev4]
}

resource "aws_instance" "dev6"{
    #provider = "aws-us-east-1" pq não encontra o modulo
    ami = "ami-042e8287309f5df03"
    instance_type = "t2.micro"
    key_name = "terrform-aws"
    tags = {
        name = "dev5"
    } 
    vpc_security_group_ids = ["${aws_security_group.acesso-ssh.id}"] 
    depends_on = [aws_dynamodb_table.dynamodb-lab]
}

#inclusão de instancia com variavel
resource "aws_instance" "dev7"{
    #count = 3
    ami = var.ami
    instance_type = var.instance_type
    key_name = "terrform-aws"
    tags = {
        name = "dev7"
           } 
    vpc_security_group_ids = ["${aws_security_group.acesso-ssh.id}"] #terraform show para ver o id do security      
}


resource "aws_instance" "dev8"{
    #count = 3
    ami = var.ami
    instance_type = var.instance_type
    key_name = "terrform-aws"
    tags = {
        name = "dev8"
           } 
    vpc_security_group_ids = ["${aws_security_group.acesso-ssh.id}"] #terraform show para ver o id do security      
}


#instancia com variaveis verificar arquivo vars.tf
resource "aws_instance" "dev9"{
    #count = 3
    ami = var.ami
    instance_type = var.instance_type
    key_name = var.key_name
    tags = {
        name = "dev9"
           } 
    vpc_security_group_ids = ["${aws_security_group.acesso-ssh.id}"] #terraform show para ver o id do security      
}