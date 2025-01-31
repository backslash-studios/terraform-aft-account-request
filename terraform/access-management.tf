module "access-management" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "backslash.aws.access@nicoric.com"
    AccountName               = "access-management"
    ManagedOrganizationalUnit = "Management"
    SSOUserEmail              = "backslash.aws.access@nicoric.com"
    SSOUserFirstName          = "access-management"
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
    change_reason       = "Provision a central user access account"
  }

  custom_fields = {
    # alternate_contact = jsonencode(
    #   {
    #     "billing"= {
    #       "email-address" = "backslash.aws.access@nicoric.com",
    #       "name"          = "Account Receiveable",
    #       "phone-number"  = "+447956230952",
    #       "title"         = "Billing Department"
    #     },
    #     "operations"= {
    #       "email-address" = "backslash.aws.access@nicoric.com",
    #       "name"          = "Operations 24/7",
    #       "phone-number"  = "+447956230952",
    #       "title"         = "DevOps Team"
    #     },
    #     "security"= {
    #       "email-address" = "backslash.aws.access@nicoric.com",
    #       "name"          = "Security Ops Center",
    #       "phone-number"  = "+447956230952",
    #       "title"         = "SOC Team"
    #     }
    #   }
    # )
    group = "prod"
    type = "prod"
  }

  account_customizations_name = "access-management-customisations"
}
