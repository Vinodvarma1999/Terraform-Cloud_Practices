    // VPC Configuration
    cidr_block                 = "10.0.0.0/16"
    vpc_tags                   = { Name = "MyVPC" }
    
    // Subnet Configuration
    subnet_cidr_block          = "10.0.1.0/24"
    subnet_availablity_zone    = "us-east-1a"
    public_ip_launch           = true
    subnet_tags                = { Name = "MySubnet" }

    subnet_2_cidr_block          = "10.0.2.0/24"
    subnet_2_availablity_zone    = "us-east-1b"
    public_ip_launch_2           = true
    subnet_2_tags                = { Name = "MySubnet-2" }
    
    // Internet Gateway Configuration
    igw_tags                   = { Name = "MyInternetGateway" }
    
    // Route Table Configuration
    route_table_tags           = { Name = "MyRouteTable" }
    
    // EKS Cluster Configuration
    cluster_iam_role_name      = "MyEKSClusterRole"
    policy_arn                 = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
    eks_name                   = "MyEKS"
    eks_cluster_version        = "1.26"
    eks_kms_key                = "arn:aws:kms:us-east-1:743350769568:key/a0ce61d3-04a7-4724-bb70-d8452a3eaf7b"
    eks_endpoint_private_access = true
    eks_endpoint_public_access  = false
    eks_public_access_cidrs     = ["0.0.0.0/0"]
    eks_service_ipv4_cidr       = "10.100.0.0/16"
    eks_resource_encryption     = ["secrets"]
    
    // EKS Cluster Security Group Configuration
    eks_cluster_sg_name        = "MyEKSClusterSG"
    eks_cluster_sg_tags        = { Name = "MyEKSClusterSG" }
    
    // EKS Node Security Group Configuration
    eks_node_sg_name           = "MyEKSNodeSG"
    eks_node_sg_tags           = { Name = "MyEKSNodeSG" }
    
    // Node IAM Role Configuration
    node_iam_role_name         = "MyEKSNodeRole"
    node_AmazonEKSWorkerNodePolicy   = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"
    node_AmazonEKS_CNI_Policy        = "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"
    node_AmazonEC2ContainerRegistryReadOnly = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"
