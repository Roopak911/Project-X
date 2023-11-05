# Security group creation
resource "aws_security_group" "sg" {
  description = "Default SG to alllow traffic from the VPC"
  vpc_id      = var.vpcid
  depends_on = [
    var.vpcid
  ]

    ingress {
    from_port = "0"
    to_port   = "0"
    protocol  = "all"
    self      = true
    cidr_blocks = ["0.0.0.0/0"] 
  }

  egress {
    from_port = "0"
    to_port   = "0"
    protocol  = "all"
    self      = "true"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "${var.environment}-sg"
  }
}
