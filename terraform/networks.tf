module "network-prod" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "backslash.aws.network@nicoric.com"
    AccountName               = "network-prod"
    ManagedOrganizationalUnit = "prod (ou-qihz-ma683dls)"
    SSOUserEmail              = "backslash.aws.network@nicoric.com"
    SSOUserFirstName          = "network-prod"
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
    change_reason       = "Provision a network management account"
  }

  custom_fields = {
    group = "prod"
    type = "prod"
  }

  account_customizations_name = "sandbox"
}



module "network-test" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "backslash.aws.network-test@nicoric.com"
    AccountName               = "network-test"
    ManagedOrganizationalUnit = "stag (ou-qihz-2n0zs70s)"
    SSOUserEmail              = "backslash.aws.network-test@nicoric.com"
    SSOUserFirstName          = "network-test"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "bs:owner"           = "craig.shepherd@backslashstudios.com"
    "bs:environment"     = "test"
    "bs:compliance:pci"  = "false"
    "bs:compliance:gdpr" = "false"
  }

  change_management_parameters = {
    change_requested_by = "Craig Shepherd"
    change_reason       = "Provision a network testing account"
  }

  custom_fields = {
    group = "test"
    type = "test"
  }

  account_customizations_name = "sandbox"
}
