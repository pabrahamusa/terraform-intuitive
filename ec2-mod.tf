
# Bastion Host - EC2 Instance that will be created in VPC Public Subnet
module "ec2_public" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "4.5.0"
  name                   = "${var.env}-DummyHost"
  ami                    = data.aws_ami.this.id
  instance_type          = var.instance_type
  key_name               = var.instance_keypair
  subnet_id              = module.vpc.public_subnets[0]
  vpc_security_group_ids = [module.public_bastion_sg.this_security_group_id]
  tags = local.common_tags
}

# EC2 Instances that will be created in VPC Private Subnets
module "ec2_private" {
  depends_on = [ module.vpc ] 
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "4.5.0"
  for_each = toset(["0", "1"])
  name                   = "${var.env}-vm-${each.key}"
  ami                    = data.aws_ami.this.id
  instance_type          = var.instance_type
  key_name               = var.instance_keypair
  vpc_security_group_ids = [module.private_sg.this_security_group_id]
  subnet_id =  element(module.vpc.private_subnets, tonumber(each.key))
  user_data = file("${path.module}/userdata.sh")
  tags = local.common_tags
}
 

# Attach EBS volume 
resource "aws_ebs_volume" "volume_disk" {
  for_each = toset(["0", "1"])
  availability_zone = "us-east-1a"
  size              = 1
}

resource "aws_volume_attachment" "this" {
  for_each = toset(["0", "1"])
  device_name = "/dev/sdh"
  volume_id   = aws_ebs_volume.volume_disk[each.key].id
  instance_id = module.ec2_private[each.key].id
}