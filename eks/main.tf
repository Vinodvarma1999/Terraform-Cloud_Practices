module "my-module" {
  source    = "..//Modules//eks"
  for_each  = var.eks_cluster

  // VPC Configuration
  cidr_block                 = each.value.cidr_block
  vpc_tags                   = each.value.vpc_tags

  // Subnet Configuration
  subnet_cidr_block          = each.value.subnet_cidr_block
  subnet_availablity_zone    = each.value.subnet_availablity_zone
  public_ip_launch           = each.value.public_ip_launch
  subnet_tags                = each.value.subnet_tags

  // Internet Gateway Configuration
  igw_tags                   = each.value.igw_tags

  // Route Table Configuration
  route_table_tags           = each.value.route_table_tags

  // EKS Cluster Configuration
  cluster_iam_role_name      = each.value.cluster_iam_role_name
  policy_arn                 = each.value.policy_arn
  eks_name                   = each.value.eks_name
  eks_cluster_version        = each.value.eks_cluster_version
  eks_kms_key                = each.value.eks_kms_key
  eks_endpoint_private_access = each.value.eks_endpoint_private_access
  eks_endpoint_public_access  = each.value.eks_endpoint_public_access
  eks_public_access_cidrs     = each.value.eks_public_access_cidrs
  eks_service_ipv4_cidr      = each.value.eks_service_ipv4_cidr
  eks_config_map             = each.value.eks_config_map
  eks_secret                 = each.value.eks_secret
  eks_cluster_sg_name        = each.value.eks_cluster_sg_name
  eks_cluster_sg_tags        = each.value.eks_cluster_sg_tags
  eks_node_sg_name           = each.value.eks_node_sg_name
  eks_node_sg_tags           = each.value.eks_node_sg_tags
  node_iam_role_name         = each.value.node_iam_role_name
  node_AmazonEKSWorkerNodePolicy     = each.value.node_AmazonEKSWorkerNodePolicy
  node_AmazonEKS_CNI_Policy  = each.value.node_AmazonEKS_CNI_Policy
  node_AmazonEC2ContainerRegistryReadOnly = each.value.node_AmazonEC2ContainerRegistryReadOnly
  aws_access_key          = var.aws_access_key
  aws_secret_key          = var.aws_secret_key
}
