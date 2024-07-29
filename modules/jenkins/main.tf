#create ec2 instance for jenkins
resource "aws_instance" "jenkins" {
    ami           = data.aws_ami.ubuntu.id # replace with your AMI ID
    instance_type = "t2.micro"
    key_name     = var.key_pair # replace with your key pair name
    subnet_id = var.subnet_id
    associate_public_ip_address = true

    user_data = file("${path.module}/userdata.sh")

    tags = {
        Name = "jenkins"
    }
}

