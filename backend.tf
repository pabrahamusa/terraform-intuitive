terraform {
  backend "s3" {
    bucket = "prakash-terraform-state"
    key    = "statefile"
    region = "us-east-1"
  }
}