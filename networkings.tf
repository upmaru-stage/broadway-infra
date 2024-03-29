// Generated by insterra

variable "identifier" {}
module "aws_networking_antares_uoo" {
  source  = "upmaru/instellar/aws//modules/network"
  version = "0.7.6"

  identifier          = var.identifier
  public_subnet_cidrs = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  region              = var.aws_region
  vpc_ip_range        = "10.0.0.0/16"
}
