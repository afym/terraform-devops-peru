provider "aws" {
  #access_key = "ACCESS_KEY"
  #secret_key = "SECRET_KEY"
  region     = "${var.region}"
}
variable "region" {}
variable "key_name" {
  default = "INVALID-KEY-PAIR"
}
variable "instance_type" {
  default = "t2.micro"
}
variable "ami_id" {
  default = "ami-6cd6f714"
}
variable "bucket_name" {
  default = "defaultbucket"
}
variable "role_name" {
  default = "default"
}
variable "policy_name" {}
variable "profile_name" {}