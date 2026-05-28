## Architecture Diagram

flowchart 

A[Developer Commit] --> B[GitLab CI Pipeline]

B --> C[Terraform Validation]
B --> D[Infracost Analysis]
B --> E[OPA Policy Validation]

D --> F[Pull Request Cost Diff]

E --> G[Compliance Approval]

G --> H[Terraform Apply]

H --> I[Cloud Infrastructure]

I --> J[Billing Export]

J --> K[AI Analytics Engine]

K --> L[Anomaly Detection]
K --> M[Forecasting]
K --> N[Optimization Recommendations]

N --> O[Human Approval]

O --> P[Automated Remediation]
