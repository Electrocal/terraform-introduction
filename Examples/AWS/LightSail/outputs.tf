output "lightsail_address" {
  description = "The IPv6 address of your new LightSail instance"
  value       = aws_lightsail_instance.nginx_lightsail_app.ipv6_addresses
}

output "lightsail_keys" {
  description = "Keys for Lightsail"
  value       = aws_lightsail_key_pair.example_key_pair.fingerprint
}