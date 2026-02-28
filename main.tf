resource "aws_vpc" "main" {
    cidr_block = var.vpc_cidr
    instance_tenancy = "default"
    enable_dns_hostname = true

    tags = merge(
        local.common_tags,
        {
            name = "${var.project}-${var.environment}"
        },
        var.vpc_tags
    ) 
}