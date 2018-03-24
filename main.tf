provider "aws" {
    region = "${var.region}"
}

resource "aws_s3_bucket" "version_bucket" {
  bucket = "${var.prefix}-ftratings"
}

resource "aws_s3_bucket_object" "beanstalk_file" {
  bucket = "${aws_s3_bucket.version_bucket.id}"
  key    = "beanstalk_app.zip"
  source = "beanstalk_app.zip"
}

resource "aws_elastic_beanstalk_application" "beanstalk_application" {
  name        = "${var.prefix}-ftratings"
  description = "ftratings application"
}

resource "aws_elastic_beanstalk_application_version" "ftratings_version" {
  name        = "${var.prefix}-ftratings-prod"
  application = "${var.prefix}-ftratings"
  description = "prod version of ftraings application"
  bucket      = "${aws_s3_bucket.version_bucket.id}"
  key         = "${aws_s3_bucket_object.beanstalk_file.id}"
}

resource "aws_elastic_beanstalk_environment" "ftratings_prod" {
  name                = "${var.prefix}-ftratings-prod"
  application         = "${aws_elastic_beanstalk_application.beanstalk_application.name}"
  cname_prefix        = "${var.prefix}-ftratings"
  solution_stack_name = "64bit Amazon Linux 2017.09 v2.9.1 running Docker 17.12.0-ce"
  version_label       = "${aws_elastic_beanstalk_application_version.ftratings_version.name}"

  setting {
    namespace = "aws:autoscaling:launchconfiguration"
    name      = "InstanceType"
    value     = "${var.instance_type}"
  }
}