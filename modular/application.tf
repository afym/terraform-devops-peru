resource "aws_instance" "application_server" {
  ami           = "${var.ami_id}"
  instance_type = "${var.instance_type}"
  #iam_instance_profile = "${module.iam_instance_profile.profile_id}"
  iam_instance_profile = "${module.iam_application_profile.profile_id}"
  key_name = "${var.key_name}"

  tags {
      Name = "My application server"
  }
}