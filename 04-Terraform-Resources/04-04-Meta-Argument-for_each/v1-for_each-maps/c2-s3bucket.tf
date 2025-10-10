# Create S3 Bucket per environment with for_each and maps
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket

resource "random_id" "bucket_sufix" {
  byte_length = 8 
}

resource "aws_s3_bucket" "mys3bucket" {

  # for_each Meta-Argument
  for_each = {
    dev  = "my-dapp-bucket"
    qa   = "my-qapp-bucket"
    stag = "my-sapp-bucket"
    prod = "my-papp-bucket"
  }

  bucket = "${each.key}-${each.value}-${random_id.bucket_sufix.hex}"
  #acl    = "private" no need this 2025

  tags = {
    Environment = each.key
    bucketname  = "${each.key}-${each.value}"
    eachvalue   = each.value
  }
}
