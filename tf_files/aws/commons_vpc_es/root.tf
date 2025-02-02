terraform {
  backend "s3" {
    encrypt = "true"
  }
}

provider "aws" {}


module "commons_vpc_es" {
  source          = "../modules/commons-vpc-es"
  vpc_name        = "${var.vpc_name}"
  slack_webhook   = "${var.slack_webhook}"
  secondary_slack_webhook = "${var.secondary_slack_webhook}"
  instance_type = "${var.instance_type}"
  ebs_volume_size_gb = "${var.ebs_volume_size_gb}"
}

