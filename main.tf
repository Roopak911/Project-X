module "vpc" {
  source               = "./vpc_module"
  environment          = "Project-X"
  vpc_cidr             = "192.168.0.0/16"
  public_subnets_cidr  = ["192.168.1.0/24", "192.168.2.0/24"]
  private_subnets_cidr = ["192.168.3.0/24", "192.168.4.0/24"]
  availability_zones   = ["us-east-1a", "us-east-1b"]
}


module "security-group" {
  source       = "./sg_module"
  environment  = "Project-X"
  vpcid        = module.vpc.vpc-id
}



module "ec2" {
  source        = "./ec2_module"
  environment   = "Project-X"
  ami-id        = "ami-05c13eab67c5d8861"
  instance-type = "t2.micro"
  sg_id         = [module.security-group.all-traffic-sg-id]
  subnet-id     = module.vpc.public-subnet-id-1
  vpc_id        = module.vpc.vpc-id
}
