# Create a VPC
resource "aws_vpc" "example" {
 cidr_block  = var.cidr_block
 tags        = var.vpc_tags
}

# Create a Subnet 
resource "aws_subnet" "example" {
 vpc_id                   = aws_vpc.example.id
 cidr_block               = var.subnet_cidr_block
 availability_zone        = var.subnet_availablity_zone
 map_public_ip_on_launch  = var.public_ip_launch
 tags                     = var.subnet_tags
}

# Create a Internet GateWay
resource "aws_internet_gateway" "example" {
 vpc_id       = aws_vpc.example.id
 depends_on   = [aws_vpc.example]
 tags         = var.igw_tags
}

# Create a Route Table
resource "aws_route_table" "example" {
 vpc_id        = aws_vpc.example.id
 route {
   cidr_block  = "0.0.0.0./0"
   gateway_id  = aws_internet_gateway.example.id
 }
 tags          = var.route_table_tags
}

# Attaching a Subnet to Route table
resource "aws_route_table_association" "example" {
 subnet_id       = aws_subnet.example.id
 route_table_id  = aws_route_table.example.id
}

# Create a EKS Cluster IAM role
resource "aws_iam_role" "cluster" {
  name = var.cluster_iam_role_name
  assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
         "Service": "eks.amazonaws.com"
       },
       "Action": "sts:AssumeRole"
    }
  ]   
}
POLICY
}

# Attach the policy to eks cluster role
resource "aws_iam_role_policy_attachment" "example" {
 policy_arn  = var.policy_arn
 role        = aws_iam_role.cluster.name
}

# Create a EKS Cluster
resource "aws_eks_cluster" "example" {
 name           = var.eks_name
 role_arn       = aws_iam_role.cluster.arn
 version        = var.eks_cluster_version 
 encryption_config {
   provider {
     key_arn = var.eks_kms_key
   }
   resources = {
     secrets = var.eks_secret
     config_maps = var.eks_config_map
   }
 }

# outpost_config {
#   control_plane_instance_type = 
# }

 vpc_config {
   vpc_id                    = aws_vpc.example.id
   security_group_ids        = aws_security_group.eks_cluster.id
   subnet_ids                = [aws_subnet.example.id]
   endpoint_private_access   = var.eks_endpoint_private_access
   endpoint_public_access    = var.eks_endpoint_public_access
   public_access_cidrs       = var.eks_public_access_cidrs 
 }

 kubernetes_network_config {
    service_ipv4_cidr = var.eks_service_ipv4_cidr
    ip_family         = "ipv4"
 }

 timeouts {
    create = "60m"
    delete = "30m"
    update = "30m"
 }
 tags = {
   Name = "UAT"
 }
 depends_on = [
   aws_iam_role_policy_attachment.example
 ]
}

# Create a Security Group for EKS Cluster
resource "aws_security_group" "eks_cluster" {
 name        = var.eks_cluster_sg_name
 description = "Cluster Communication with Worker Nodes"
 vpc_id      = aws_vpc.example.id
 tags        = var.eks_cluster_sg_tags
}

# Create a Security Group for EKS Node
resource "aws_security_group" "eks_node" {
 name        = var.eks_node_sg_name
 description = "Security Group for all Nodes in the Cluster"
 vpc_id      = aws_vpc.example.id
 
 egress {
   from_port    = 0
   to_port      = 0
   protocol     = "-1"
   cidr_blocks  = ["0.0.0.0/0"]
 }
 tags        = var.eks_node_sg_tags
}

resource "aws_security_group_rule" "nodes_internal" {
 description = "Allow node to communicate with each other."
 type        = "ingress"
 from_port   = 0
 to_port     = 65535
 protocol    = "-1"
 security_group_id  = aws_security_group.eks_node.id
 source_security_group_id  = aws_security_group.eks_node.id
}
 
resource "aws_security_group_rule" "node_cluster_inbound" {
 description = "Allow worker kubelet and pods to receive communication from the cluster control plane."
 type        = "ingress"
 from_port   = 1025
 to_port     = 65535
 protocol    = "tcp"
 security_group_id  = aws_security_group.eks_node.id
 source_security_group_id  = aws_security_group.eks_cluster.id
}

resource "aws_security_group_rule" "cluster_inbound" {
 description = "Allow worker node to communicate with the cluster API Server."
 type        = "ingress"
 from_port   = 443
 to_port     = 443
 protocol    = "tcp"
 security_group_id  = aws_security_group.eks_cluster.id
 source_security_group_id  = aws_security_group.eks_node.id
}

resource "aws_security_group_rule" "cluster_outbound" {
 description = "Allow cluster API Server to communicate with the worker node."
 type        = "egress"
 from_port   = 1024
 to_port     = 65535
 protocol    = "tcp" 
 security_group_id  = aws_security_group.eks_cluster.id
 source_security_group_id  = aws_security_group.eks_node.id
}

# IAM role for EKS Node
resource "aws_iam_role" "node" {
  name = var.node_iam_role_name
  assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
         "Service": "eks.amazonaws.com"
       },
       "Action": "sts:AssumeRole"
    }
  ]   
}
POLICY
}

# Attach the policy to eks node role
resource "aws_iam_role_policy_attachment" "node_AmazonEKSWorkerNodePolicy" {
 policy_arn  = var.node_AmazonEKSWorkerNodePolicy
 role        = aws_iam_role.node.name
}

# Attach the policy to eks node role
resource "aws_iam_role_policy_attachment" "node_AmazonEKS_CNI_Policy" {
 policy_arn  = var.node_AmazonEKS_CNI_Policy
 role        = aws_iam_role.node.name
}

# Attach the policy to eks node role
resource "aws_iam_role_policy_attachment" "node_AmazonEC2ContainerRegistryReadOnly" {
 policy_arn  = var.node_AmazonEC2ContainerRegistryReadOnly
 role        = aws_iam_role.node.name
}


