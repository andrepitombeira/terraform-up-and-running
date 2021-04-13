# output "neo_arn" {
#   value = aws_iam_user.example[0].arn
#   description = "The ARN for the user neo"
# }

# output "all_arn" {
#   value = aws_iam_user.example[*].arn
#   description = "The ARN for all users"
# }

output "all_users" {
  value = aws_iam_user.example
}

output "all_arns" {
  value = values(aws_iam_user.example)[*].arn
}