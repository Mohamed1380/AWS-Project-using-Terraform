output "vpc_id" {
  value = aws_vpc.myvpc.id
}

output "public1_id" {
  value = aws_subnet.publicsubnet1.id
}

output "public2_id" {
  value = aws_subnet.publicsubnet2.id
}

output "private1_id" {
  value = aws_subnet.privatesubnet1.id
}

output "private2_id" {
  value = aws_subnet.privatesubnet2.id
}