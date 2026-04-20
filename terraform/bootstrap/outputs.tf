output "state_bucket" {
  description = "Name of the s3 bucket holding terraform state"
  value       = aws_s3_bucket.tfstate.id
}

output "lock_table" {
  description = "Name of the DynamoDB table for state locking"
  value       = aws_dynamodb_table.tflock.name
}