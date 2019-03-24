
module "s3-bucket" {
  bucket_name   = "${var.bucket_name}"
  force_destroy = true
  public        = false
  versioned     = true
  bucket_tags   = {}
}
