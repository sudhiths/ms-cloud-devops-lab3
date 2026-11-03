# Lab 3 - Terraform on Kubernetes
### Stage 1: First Terraform Configuration
Plan summary for v1: Plan: 2 to add, 0 to change, 0 to destroy.
### Stage 2: Update Application Image
Plan summary for v2: Plan: 0 to add, 1 to change, 0 to destroy.
### Stage 3: Drift Detection
When manually scaled to 5 replicas, Terraform detected the drift and planned to revert to 2 to match the configuration.
### Stage 4: Reusable Modules
Plan summary for modules: Plan: 4 to add, 0 to change, 2 to destroy.
### Stage 5: State Loss and Recovery
When the state file was lost, Terraform attempted to recreate all resources. Restoring the state file successfully reconciled the configuration with the cluster.
