module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "my-vpc"
  cidr = "10.0.0.0/16"

   public_subnets  = ["10.0.101.0/24"]

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}
