## Budget monitoring automation.

```hcl
resource "azurerm_consumption_budget_resource_group" "budget" {
  name              = "monthly-budget"
  resource_group_id = azurerm_resource_group.example.id

  amount     = 5000
  time_grain = "Monthly"

  notification {
    enabled   = true
    threshold = 80

    contact_emails = [
      "finops@company.com"
    ]
  }
}
```
