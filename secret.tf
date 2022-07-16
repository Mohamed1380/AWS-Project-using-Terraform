resource "aws_secretsmanager_secret" "secretprod2" {
  name = "secretprod2"
}

resource "aws_secretsmanager_secret_version" "version" {
  secret_id     = aws_secretsmanager_secret.secretprod2.id
  secret_string = tls_private_key.mykey.id
}

output "instance_id" {
  value = aws_instance.ec2host.id
}

output "secretsmanager_secret" {
  value = aws_secretsmanager_secret.secretprod2.id
}

# output "secretsmanager_secret_version" {
#   value = aws_secretsmanager_secret_version.version.id
# }
