# terraform-gameplay

- Install terraform
   - `choco install terraform`

- Update infrastructure
   - `terraform init`
   - `terraform plan -out main.tfplan`
   - `terraform apply main.tfplan`
   
- Set env variables
   - `$TF_VAR_postgres_admin_username = "razumovsky_r"`
   - `$TF_VAR_postgres_admin_password = "4YJ544gB4VjiruhBs8fT"`