#GCP Command Reference
=====================

These gcloud commands are used throughout the course:

## 00_04_Exercise_Files
**Enable APIs:**
gcloud services enable iam.googleapis.com

gcloud services enable cloudresourcemanager.googleapis.com


## 04_03_Terraform_Cloud_Setup
```
gcloud.cmd iam service-accounts create terraform-cloud `
    --description="SA for Terraform Cloud operations" `
    --display-name="terraform-cloud"

 gcloud.cmd projects add-iam-policy-binding advanced-terraform-459518 `
    --member="serviceAccount:terraform-cloud@advanced-terraform-459518.iam.gserviceaccount.com" `
    --role="roles/owner"

gcloud.cmd iam service-accounts keys create tf_sa_key `
    --iam-account=terraform-cloud@advanced-terraform-459518.iam.gserviceaccount.com
```