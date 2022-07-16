terraform {
  backend "s3" {
    bucket         = "mybucket-abdelhady"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "abdelhady"
  }
}