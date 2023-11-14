// Generated by insterra

module "instellar_link_antares_qhb" {
  source  = "upmaru/bootstrap/instellar"
  version = "0.5.3"

  bootstrap_node        = module.aws_compute_antares_bcg.bootstrap_node
  cluster_address       = module.aws_compute_antares_bcg.cluster_address
  cluster_name          = module.aws_compute_antares_bcg.identifier
  insterra_component_id = 34
  nodes                 = module.aws_compute_antares_bcg.nodes
  password_token        = module.aws_compute_antares_bcg.trust_token
  provider_name         = "aws"
  region                = var.aws_region

}

module "instellar_link_antares_bcz" {
  source  = "upmaru/bootstrap/instellar//modules/service"
  version = "0.5.3"

  channels = ["develop"]
  cluster_ids = [
    module.instellar_link_antares_qhb.cluster_id
  ]
  credential = {
    host     = module.aws_database_antares_xov.address
    password = module.aws_database_antares_xov.password
    port     = module.aws_database_antares_xov.port
    resource = module.aws_database_antares_xov.db_name
    username = module.aws_database_antares_xov.username
    secure   = true
  }

  driver                = "database/postgresql"
  driver_version        = module.aws_database_antares_xov.engine_version
  insterra_component_id = 35
  provider_name         = "aws"
  slug                  = module.aws_database_antares_xov.identifier
}