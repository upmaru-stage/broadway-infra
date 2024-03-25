// Generated by insterra

module "aws_database_antares_xov" {
  source  = "upmaru/instellar/aws//modules/database"
  version = "0.7.6"

  db_name             = "instellardb"
  db_size             = "db.t3.small"
  db_username         = "instellar"
  deletion_protection = false
  engine              = "postgres"
  engine_version      = "15"
  identifier          = "antares-xov"
  port                = 5432
  region              = var.aws_region
  security_group_ids = [
    module.aws_compute_antares_bcg.nodes_security_group_id,
    module.aws_compute_antares_bcg.bastion_security_group_id,
    module.aws_compute_deneb_ebf.nodes_security_group_id
  ]
  skip_final_snapshot = true
  subnet_ids          = module.aws_networking_antares_uoo.public_subnet_ids
  vpc_id              = module.aws_networking_antares_uoo.vpc_id
}
