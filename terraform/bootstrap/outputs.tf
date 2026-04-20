output "state_bucket" {
  description = "Name of the s3 bucket holding terraform state"
  value       = aws_s3_bucket.tfstate.id
}