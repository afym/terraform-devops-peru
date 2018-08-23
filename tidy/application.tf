resource "aws_instance" "application_server" {
  ami           = "${var.ami_id}"
  instance_type = "${var.instance_type}"
  iam_instance_profile = "${aws_iam_instance_profile.application_profile.id}"
  key_name = "${var.key_name}"

  tags {
      Name = "My application server"
  }
}