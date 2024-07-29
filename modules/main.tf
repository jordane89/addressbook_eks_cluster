#provider blocks
provider "aws" {
    region = "us-east-1" 
}

#jenkins module

module "jenkins" {
    source = "../modules/jenkins"
}

#terraform module
module "terraform" {
    source = "../modules/terraform"
}
