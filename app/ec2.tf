resource "aws_intance" "amb-prod"{
    ami = "ami-0fc5d935ebf8bc2bc"
    instance_type = "t2.micro"
    key_name = "Terraform"
    security_group = ["allow_ssh", "allow_http", "allow_egress"]
    user_data = file("script.sh")

    

    tags = {
        Name = "amb-prod"
    }
}