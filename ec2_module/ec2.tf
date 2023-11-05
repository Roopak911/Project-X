resource "aws_instance" "new" {
  ami                    = var.ami-id
  instance_type          = var.instance-type
  subnet_id              = var.subnet-id
  key_name               = "jake-new-practice-key-pair"
  vpc_security_group_ids = var.sg_id
  user_data              = file("./ec2_module/user-data.sh")
  tags = {
    Name = "${var.environment}-Bastion-Host-with-NginX"
  }
}
