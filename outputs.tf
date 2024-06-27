output "public_id" {
  description = "Public Id of EC2 Instance"
  value = aws_instance.example.public_ip
}
