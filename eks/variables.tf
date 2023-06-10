# main.tf

variable "eks_cluster" {
  type    = map(any)
  default = {
    cidr_block                    = var.cidr_block
    vpc_tags                      = var.vpc_tags
    subnet_cidr_block             = var.subnet_cidr_block
    subnet_availablity_zone       = var.subnet_availablity_zone
    public_ip_launch              = var.public_ip_launch
    subnet_tags                   = var.subnet_tags
    igw_tags                      = var.igw_tags
    route_table_tags              = var.route_table_tags
    cluster_iam_role_name         = var.cluster_iam_role_name
    policy_arn                    = var.policy_arn
    eks_name                      = var.eks_name
    eks_cluster_version           = var.eks_cluster_version
    eks_kms_key                   = var.eks_kms_key
    eks_endpoint_private_access   = var.eks_endpoint_private_access
    eks_endpoint_public_access    = var.eks_endpoint_public_access
    eks_public_access_cidrs       = var.eks_public_access_cidrs
    eks_service_ipv4_cidr         = var.eks_service_ipv4_cidr
    eks_config_map                = var.eks_config_map
    eks_secret                    = var.eks_secret
    eks_cluster_sg_name           = var.eks_cluster_sg_name
    eks_cluster_sg_tags           = var.eks_cluster_sg_tags
    eks_node_sg_name              = var.eks_node_sg_name
    eks_node_sg_tags              = var.eks_node_sg_tags
    node_iam_role_name            = var.node_iam_role_name
    node_AmazonEKSWorkerNodePolicy = var.node_AmazonEKSWorkerNodePolicy
    node_AmazonEKS_CNI_Policy     = var.node_AmazonEKS_CNI_Policy
    node_AmazonEC2ContainerRegistryReadOnly = var.node_AmazonEC2ContainerRegistryReadOnly
  }
}
