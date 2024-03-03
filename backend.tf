terraform {
  backend "s3" {
    bucket = "mybucket-sr"
    key    = "ec2-gitlab/state"
    region = "us-east-1"
  }
}
