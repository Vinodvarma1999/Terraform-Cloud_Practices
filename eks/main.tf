module "my-module" {
  source    = "..//Modules//eks"

  // VPC Configuration
  cidr_block                 = var.eks_cluster.cidr_block
  vpc_tags                   = var.eks_cluster.vpc_tags

  // Subnet Configuration
  subnet_cidr_block          = var.eks_cluster.subnet_cidr_block
  subnet_availablity_zone    = var.eks_cluster.subnet_availablity_zone
  public_ip_launch           = var.eks_cluster.public_ip_launch
  subnet_tags                = var.eks_cluster.subnet_tags

  // Internet Gateway Configuration
  igw_tags                   = var.eks_cluster.igw_tags

  // Route Table Configuration
  route_table_tags           = var.eks_cluster.route_table_tags

  // EKS Cluster Configuration
  cluster_iam_role_name      = var.eks_cluster.cluster_iam_role_name
  policy_arn                 = var.eks_cluster.policy_arn
  eks_name                   = var.eks_cluster.eks_name
  eks_cluster_version        = var.eks_cluster.eks_cluster_version
  eks_kms_key                = var.eks_cluster.eks_kms_key
  eks_endpoint_private_access = var.eks_cluster.eks_endpoint_private_access
  eks_endpoint_public_access  = var.eks_cluster.eks_endpoint_public_access
  eks_public_access_cidrs     = var.eks_cluster.eks_public_access_cidrs
  eks_service_ipv4_cidr      = var.eks_cluster.eks_service_ipv4_cidr
  eks_config_map             = var.eks_cluster.eks_config_map
  eks_secret                 = var.eks_cluster.eks_secret
  eks_cluster_sg_name        = var.eks_cluster.eks_cluster_sg_name
  eks_cluster_sg_tags        = var.eks_cluster.eks_cluster_sg_tags
  eks_node_sg_name           = var.eks_cluster.eks_node_sg_name
  eks_node_sg_tags           = var.eks_cluster.eks_node_sg_tags
  node_iam_role_name         = var.eks_cluster.node_iam_role_name
  node_AmazonEKSWorkerNodePolicy     = var.eks_cluster.node_AmazonEKSWorkerNodePolicy
  node_AmazonEKS_CNI_Policy  = var.eks_cluster.node_AmazonEKS_CNI_Policy
  node_AmazonEC2ContainerRegistryReadOnly = var.eks_cluster.node_AmazonEC2ContainerRegistryReadOnly
  aws_access_key          = var.aws_access_key
  aws_secret_key          = var.aws_secret_key
}

