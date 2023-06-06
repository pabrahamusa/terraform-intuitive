# VPC Variables
vpc_name = "myvpc"
vpc_cidr_block = "100.94.32.0/20"
vpc_availability_zones = ["us-east-1a"]
vpc_public_subnets = ["100.94.45.128/27"]
vpc_private_subnets = ["100.94.32.0/22"]
vpc_enable_nat_gateway = true  
vpc_single_nat_gateway = true

# Generic Variables
aws_region = "us-east-1"
env = "dev"
project_team = "devops"

# EC2 Instance Variables
instance_type = "t3.micro"
instance_keypair = "prakash-kube-test"
private_instance_count = 2