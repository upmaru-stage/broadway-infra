// Generated by insterra

module "instellar_link_antares_qhb" {
  source  = "upmaru/bootstrap/instellar"
  version = "0.6.1"

  bootstrap_node        = module.aws_compute_antares_bcg.bootstrap_node
  cluster_address       = module.aws_compute_antares_bcg.cluster_address
  cluster_name          = module.aws_compute_antares_bcg.identifier
  insterra_component_id = 34

  nodes          = module.aws_compute_antares_bcg.nodes
  password_token = module.aws_compute_antares_bcg.trust_token
  provider_name  = "aws"
  region         = var.aws_region

}

module "instellar_link_deneb_rir" {
  source  = "upmaru/bootstrap/instellar"
  version = "0.6.1"

  bootstrap_node        = module.aws_compute_deneb_ebf.bootstrap_node
  cluster_address       = module.aws_compute_deneb_ebf.cluster_address
  cluster_name          = module.aws_compute_deneb_ebf.identifier
  insterra_component_id = 133
  kit_slug              = "pro"
  nodes                 = module.aws_compute_deneb_ebf.nodes
  password_token        = module.aws_compute_deneb_ebf.trust_token
  provider_name         = "aws"
  region                = var.aws_region
  uplink_channel        = "develop"
}

module "instellar_link_antares_bcz" {
  source  = "upmaru/bootstrap/instellar//modules/service"
  version = "0.6.1"

  certificate = module.aws_database_antares_xov.certificate_url
  channels    = ["develop"]
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

module "instellar_link_orion_mhe" {
  source  = "upmaru/bootstrap/instellar//modules/service"
  version = "0.6.1"


  channels = ["develop"]
  cluster_ids = [
    module.instellar_link_antares_qhb.cluster_id
  ]
  credential = {
    host     = module.aws_bucket_orion_xri.host
    password = module.aws_bucket_orion_xri.secret_access_key
    port     = module.aws_bucket_orion_xri.port
    resource = module.aws_bucket_orion_xri.region
    username = module.aws_bucket_orion_xri.access_key_id
    secure   = true
  }

  driver                = "bucket/aws-s3"
  driver_version        = module.aws_bucket_orion_xri.version
  insterra_component_id = 125
  provider_name         = "aws"
  slug                  = module.aws_bucket_orion_xri.identifier
}
