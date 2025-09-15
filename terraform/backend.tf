terraform {
  backend "s3" {
    bucket         = "my-terraform-backend-bucket" # Replace with your backend bucket
    key            = "s3-project/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
