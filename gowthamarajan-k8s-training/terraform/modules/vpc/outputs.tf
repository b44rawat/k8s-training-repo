#--------------------------------------------------------------------------------
#VPC
#---

output "vpc_id" {
    value = aws_vpc.opstree_vpc.id
}

output "vpc_cidr" {
    value = split(",", aws_vpc.opstree_vpc.cidr_block)
}

#----------------------------------------------------------------------------------
#Public subnets
#--------------

output "public_subnet_id" {
    value = element(aws_subnet.opstree_public_subnet.*.id, 0)
}

output "public_subnet_ids_count" {
    value = length(aws_subnet.opstree_public_subnet.*.id)
}

output "public_subnet_ids" {
    value = aws_subnet.opstree_public_subnet.*.id
}

output "public_subnet_cidrs" {
    value = aws_subnet.opstree_public_subnet.*.cidr_block
}

#----------------------------------------------------------------------------------
#Private subnets for EKS
#-----------------------

output "eks_subnet_ids_count" {
    value = length(aws_subnet.opstree_eks_subnet.*.id)
}

output "eks_subnet_ids" {
    value = aws_subnet.opstree_eks_subnet.*.id
}

output "eks_subnet_cidrs" {
    value = aws_subnet.opstree_eks_subnet.*.cidr_block
}

