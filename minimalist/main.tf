provider "aws" {
  #access_key = "Access Key"
  #secret_key = "Secrey Key"
  region     = "us-west-2"
}
resource "aws_instance" "minimalist" {
  ami           = "ami-6cd6f714"
  instance_type = "t2.nano"

  tags {
      Name = "Minimalist"
  }
}