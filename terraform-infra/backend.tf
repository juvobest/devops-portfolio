terraform {
  backend "s3" {
    bucket         = "devops-portfolio-tfstate-uj-euw2"
    key            = "terraform-infra/terraform.tfstate"
    region         = "eu-west-2"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
