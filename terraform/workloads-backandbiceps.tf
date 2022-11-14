module "backandbiceps-prod" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "backslash.aws.backandbiceps-prod@nicoric.com"
    AccountName               = "backandbiceps-prod"
    ManagedOrganizationalUnit = "prod (ou-qihz-ma683dls)"
    SSOUserEmail              = "backslash.aws.backandbiceps-prod@nicoric.com"
    SSOUserFirstName          = "backandbiceps-prod"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "bs:owner"           = "craig.shepherd@backslashstudios.com"
    "bs:environment"     = "prod"
    "bs:compliance:pci"  = "false"
    "bs:compliance:gdpr" = "false"
  }

  change_management_parameters = {
    change_requested_by = "Craig Shepherd"
    change_reason       = "Provision a backandbiceps prod workload account"
  }

  custom_fields = {
    group = "prod"
    type = "prod"
  }

  account_customizations_name = "sandbox"
}


module "backandbiceps-stag" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "backslash.aws.backandbiceps-stag@nicoric.com"
    AccountName               = "backandbiceps-stag"
    ManagedOrganizationalUnit = "stag (ou-qihz-1mlaqz5l)"
    SSOUserEmail              = "backslash.aws.backandbiceps-stag@nicoric.com"
    SSOUserFirstName          = "backandbiceps-stag"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "bs:owner"           = "craig.shepherd@backslashstudios.com"
    "bs:environment"     = "stag"
    "bs:compliance:pci"  = "false"
    "bs:compliance:gdpr" = "false"
  }

  change_management_parameters = {
    change_requested_by = "Craig Shepherd"
    change_reason       = "Provision a backandbiceps stag workload account"
  }

  custom_fields = {
    group = "stag"
    type = "stag"
  }

  account_customizations_name = "sandbox"
}
