#root

module "secgrp" {
  source = "./secgrp"
}

module "ec2" {
  source        = "./ec2"
  ami           = "ami-07d9b9ddc6cd8dd30"
  keypair       = "aws-keypair"
  instance_type = "t2.micro"
  secgrp        = module.secgrp.sg_grp

}