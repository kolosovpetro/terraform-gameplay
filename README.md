# Terraform-Gameplay

- Install terraform
   - `choco install terraform`

- Update infrastructure
   - `terraform init`
   - `terraform plan -out main.tfplan`
   - `terraform apply main.tfplan`
   
- Set env variables
   - `$TF_VAR_postgres_admin_username = "razumovsky_r"`
   - `$TF_VAR_postgres_admin_password = "4YJ544gB4VjiruhBs8fT"`

# Infrastructure

## Define variables

- `$RESOURCE_GROUP_NAME="pkolosov-tstate-rg"`
- `$STORAGE_ACCOUNT_NAME="pkolosovfstate673"`
- `$CONTAINER_NAME="pkolosovtfstate"`

## Create resource group

- `az group create --name $RESOURCE_GROUP_NAME --location "westus"`

## Create storage account

- `az storage account create --resource-group $RESOURCE_GROUP_NAME --name $STORAGE_ACCOUNT_NAME --sku "Standard_LRS" --encryption-services blob`

## Get storage account key

- `$ACCOUNT_KEY=$(az storage account keys list --resource-group $RESOURCE_GROUP_NAME --account-name $STORAGE_ACCOUNT_NAME --query [0].value -o tsv)`

## Create blob container

- `az storage container create --name $CONTAINER_NAME --account-name $STORAGE_ACCOUNT_NAME --account-key $ACCOUNT_KEY`
- `echo "storage_account_name: $STORAGE_ACCOUNT_NAME"`
- `echo "container_name: $CONTAINER_NAME"`
- `echo "access_key: $ACCOUNT_KEY"`

## Create Service Principal

- `az ad sp create-for-rbac --role="Contributor" --scopes="/subscriptions/f32f6566-8fa0-4198-9c91-a3b8ac69e89a" --name="GithubActions-Terraform"`