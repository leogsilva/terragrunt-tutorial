
terraform {
  backend "s3" {}
}

module "s3-bucket" {
  source        = "git::https://github.com/felipefrizzo/terraform-aws-s3-bucket.git?ref=master"
  bucket_name   = "${var.bucket_name}"
  force_destroy = true
  public        = false
  versioned     = true
  bucket_tags   = {}
}
