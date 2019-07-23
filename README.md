# gcs_terraform

Google cloud storage creation using terraform,example given for 4 type of storage class availavle in google cloud,i.e

  i) Multi-Regional 
  
 ii) Regional
 
iii) Nearline

 iv) Coldline 
 
 
 For detail explanation of different type of storage class , please follow the google link 
 https://cloud.google.com/storage/docs/storage-classes
 
 Steps for running terraform to create the buckets
 
 1.Initialize Terraform.
   terraform init
  
 2.Plan for Terraform
  terraform plan -out=tfplan_gcs -var-file=config.tfvars
  
 3.Run Terraform
   terraform apply "tfplan_gcs"
 
 4.Derstroy Terraform (Optional)
 terraform destroy -var-file=config.tfvars
