output "s3_bucket_notification_lookup_bucket" {
  description = "Map of bucket values across all s3_bucket_notification_lookup, keyed the same as var.s3_bucket_notification_lookup"
  value       = { for k, v in data.aws_s3_bucket_notification.s3_bucket_notification_lookup : k => v.bucket if v.bucket != null && length(v.bucket) > 0 }
}
output "s3_bucket_notification_lookup_eventbridge" {
  description = "Map of eventbridge values across all s3_bucket_notification_lookup, keyed the same as var.s3_bucket_notification_lookup"
  value       = { for k, v in data.aws_s3_bucket_notification.s3_bucket_notification_lookup : k => v.eventbridge if v.eventbridge != null }
}
output "s3_bucket_notification_lookup_lambda_function" {
  description = "Map of lambda_function values across all s3_bucket_notification_lookup, keyed the same as var.s3_bucket_notification_lookup"
  value       = { for k, v in data.aws_s3_bucket_notification.s3_bucket_notification_lookup : k => v.lambda_function if v.lambda_function != null && length(v.lambda_function) > 0 }
}
output "s3_bucket_notification_lookup_queue" {
  description = "Map of queue values across all s3_bucket_notification_lookup, keyed the same as var.s3_bucket_notification_lookup"
  value       = { for k, v in data.aws_s3_bucket_notification.s3_bucket_notification_lookup : k => v.queue if v.queue != null && length(v.queue) > 0 }
}
output "s3_bucket_notification_lookup_region" {
  description = "Map of region values across all s3_bucket_notification_lookup, keyed the same as var.s3_bucket_notification_lookup"
  value       = { for k, v in data.aws_s3_bucket_notification.s3_bucket_notification_lookup : k => v.region if v.region != null && length(v.region) > 0 }
}
output "s3_bucket_notification_lookup_topic" {
  description = "Map of topic values across all s3_bucket_notification_lookup, keyed the same as var.s3_bucket_notification_lookup"
  value       = { for k, v in data.aws_s3_bucket_notification.s3_bucket_notification_lookup : k => v.topic if v.topic != null && length(v.topic) > 0 }
}

