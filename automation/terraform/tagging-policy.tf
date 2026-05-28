## Terraform tagging enforcement.

```hcl
variable "mandatory_tags" {
  default = {
    Owner       = "PlatformTeam"
    Environment = "Production"
    CostCenter  = "ENG"
  }
}

resource "azurerm_resource_group" "example" {
  name     = "rg-finops-prod"
  location = "Central India"

  tags = var.mandatory_tags
}
````
