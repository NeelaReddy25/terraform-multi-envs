resource "aws_instance" "expense" {
  for_each = var.instance_names #each.key and each.value
  ami = data.aws_ami.ami_info.id
  vpc_security_group_ids = ["sg-039a1e225ec0846a9"]
  instance_type = each.value
  tags = merge(
    var.common_tags,
    {
        Name = "${each.key}.${var.environment}"
        Module = "${each.key}.${var.environment}"
        Environment = var.environment
    }
  )
}