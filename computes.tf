// Generated by insterra

module "aws_compute_antares_bcg" {
  source  = "upmaru/instellar/aws"
  version = "0.6.10"

  cluster_topology = [
  ]

  identifier           = "antares-bcg"
  network_dependencies = module.aws_networking_antares_uoo.dependencies
  node_size            = "t3a.medium"
  public_subnet_ids    = module.aws_networking_antares_uoo.public_subnet_ids
  ssh_keys             = ["zack-studio"]
  storage_size         = 40
  volume_type          = "gp3"
  vpc_id               = module.aws_networking_antares_uoo.vpc_id
  vpc_ip_range         = module.aws_networking_antares_uoo.vpc_ip_range
}
