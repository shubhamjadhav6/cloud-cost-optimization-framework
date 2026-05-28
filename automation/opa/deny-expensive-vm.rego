OPA policy example.

```rego
package finops

deny[msg] {
  input.resource_type == "azurerm_linux_virtual_machine"
  input.vm_size == "Standard_E64s_v3"

  msg := "High-cost VM requires architecture review approval"
}
```

---
