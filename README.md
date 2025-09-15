# github-actions-s3_bucket-creation
# Terraform S3 Bucket with GitHub Actions CI/CD

This project creates an **S3 bucket** using Terraform and manages state with:
- **S3 backend** for remote state
- **DynamoDB table** for state locking

---

## 🚀 One-Time Setup

### 1. Create Backend Resources
Before running the pipeline, create the backend S3 bucket and DynamoDB table manually:

```bash
aws s3 mb s3://my-terraform-backend-bucket --region us-east-1
aws dynamodb create-table \
  --table-name terraform-locks \
  --attribute-definitions AttributeName=LockID,AttributeType=S \
  --key-schema AttributeName=LockID,KeyType=HASH \
  --billing-mode PAY_PER_REQUEST \
  --region us-east-1
