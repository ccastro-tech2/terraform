#instacias
variable "ami" {
  description = "AWS AMI to be used "
  default = "ami-042e8287309f5df03"
}

#instance type
variable "instance_type" {
  description = "AWS Instance type defines the hardware configuration of the machine"
  default = "t2.micro"
}

#security group
variable "cidr_acesso_remoto" {
    #type = "list"
    default = ["179.208.103.3/32","0.0.0.0/0"]
}

#keys
variable "key_name"{
    default = "terrform-aws"

}