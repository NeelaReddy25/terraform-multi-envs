resource "aws_route53_record" "expense" {
  for_each = aws_instance.expense
  zone_id = var.zone_id
  name = each.key == "frontend-prod" ? var.domain_name : "${each.key}.${var.domain_name}"
  type = "A"
  ttl = 1
  records = startswith(each.key, "frontend") ? [each.values.public_ip] : [each.values.private_ip]
  #if records already exists
  allow_overwrite = true
}