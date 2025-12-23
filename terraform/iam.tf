resource "aws_iam_user" "github_user" {
  name = "github-actions-user"
}

resource "aws_iam_access_key" "github_key" {
  user = aws_iam_user.github_user.name
}

output "access_key_id" {
  value = aws_iam_access_key.github_key.id
}

output "secret_access_key" {
  value = aws_iam_access_key.github_key.secret
}
