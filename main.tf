data "aws_s3_bucket_notification" "s3_bucket_notification_lookup" {
  for_each = var.s3_bucket_notification_lookup

  bucket = each.value.bucket
  region = each.value.region
}

