terraform {
  backend "s3" {
    bucket         = "my-eks-jenkins-bucket"
    region         = "us-east-1"
    key            = "Jenkins-EKS-TF/EKS-TF/terraform.tfstate"
  }
  required_version = ">=0.13.0"
  required_providers {
    aws = {
      version = ">= 2.7.0"
      source  = "hashicorp/aws"
    }
  }
}
