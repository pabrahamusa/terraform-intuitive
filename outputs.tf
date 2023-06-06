# VPC Output Values

# VPC ID
output "vpc_id" {
  description = "The ID VPC"
  value       = module.vpc.vpc_id
}

# VPC CIDR 
output "vpc_cidr_block" {
  description = "The CIDR for VPC"
  value       = module.vpc.vpc_cidr_block
}

# Private Subnets
output "private_subnets" {
  description = "private subnets"
  value       = module.vpc.private_subnets
}

# Public Subnets
output "public_subnets" {
  description = "public subnets"
  value       = module.vpc.public_subnets
}

# VPC NAT gateway Public IP
output "nat_public_ips" {
  description = "Elastic IPs in AWS NAT Gateway"
  value       = module.vpc.nat_public_ips
}

# VPC AZs
output "azs" {
  description = "Availiability Zones"
  value       = module.vpc.azs
}

# Public Bastion Host Security Group Outputs
## public_bastion_sg_group_id
output "public_bastion_sg_group_id" {
  description = "security group"
  value       = module.public_bastion_sg.this_security_group_id
}

## public_bastion_sg_group_vpc_id
output "public_bastion_sg_group_vpc_id" {
  description = "VPC ID"
  value       = module.public_bastion_sg.this_security_group_vpc_id
}

## public_bastion_sg_group_name
output "public_bastion_sg_group_name" {
  description = "security group"
  value       = module.public_bastion_sg.this_security_group_name
}

# Private EC2 Instances Security Group Outputs
## private_sg_group_id
output "private_sg_group_id" {
  description = "security group"
  value       = module.private_sg.this_security_group_id
}

## private_sg_group_vpc_id
output "private_sg_group_vpc_id" {
  description = "VPC ID"
  value       = module.private_sg.this_security_group_vpc_id
}

## private_sg_group_name
output "private_sg_group_name" {
  description = "security group"
  value       = module.private_sg.this_security_group_name
}



output "ec2_bastion_public_instance_ids" {
  description = "instances IDs"
  value       = module.ec2_public.id
}

## ec2_bastion_public_ip
output "ec2_bastion_public_ip" {
  description = "instances IPs"
  value       = module.ec2_public.public_ip 
}


## ec2_private_instance_ids

output "ec2_private_instance_ids" {
  description = "List of IDs of instances"
  value = [for ec2private in module.ec2_private: ec2private.id ]   
}

## ec2_private_ip
output "ec2_private_ip" {
  description = "IP addresses"
  value = [for ec2private in module.ec2_private: ec2private.private_ip ]  
}


