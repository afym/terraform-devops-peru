resource "aws_iam_role" "application_role" {
  name = "${var.role_name}"
  path = "/"
    assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
}
resource "aws_iam_role_policy" "application_policy" {
  name = "${var.policy_name}"
  role = "${aws_iam_role.application_role.id}"
  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Action": "s3:*",
            "Effect": "Allow",
            "Resource": [
                "arn:aws:s3:::${var.bucket_name}",
                "arn:aws:s3:::${var.bucket_name}/*"
            ]
        }
    ]
}
EOF
}
resource "aws_iam_instance_profile" "application_profile" {
  name = "${var.profile_name}"
  role = "${aws_iam_role.application_role.name}"
}