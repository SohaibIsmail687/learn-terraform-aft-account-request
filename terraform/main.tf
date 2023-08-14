module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "landingzone+Sandbox-acc@iconnect.technology"
    AccountName               = "sandbox-aft"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "landingzone+Sandbox-acc@iconnect.technology"
    SSOUserFirstName          = "Sandbox"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}
