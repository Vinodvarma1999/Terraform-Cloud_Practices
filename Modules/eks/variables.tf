varibale "cidr_block" {
 type = string
 description = "Represents the CIDR block for the VPC."
}

varibale "vpc_tags" {
 type = map(string)
 description = "A map of string values used to tag the VPC resource."
}

varibale "subnet_cidr_block" {
 type = string
 description = "Represents the CIDR block for a subnet."
}

varibale "subnet_availablity_zone" {
 type = string
 description = "Represents the availability zone where a subnet will be created."
}

varibale "public_ip_launch" {
 type = bool
 description = "Determines whether instances launched in the subnet will have public IP addresses."
}

varibale "var.subnet_tags" {
 type = map(string)
 description = "A map of string values used to tag the subnet resource."
}

varibale "igw_tags" {
 type = map(string)
 description = "A map of string values used to tag the internet gateway resource."
}

variable "route_table_tags" {
 type = map(string)
 description = "A map of string values used to tag the route table resource."
}

varibale "cluster_iam_role_name" {
 type = string
 description = "Represents the name of the IAM role for the EKS cluster."
}

varibale "policy_arn" {
 type = string
 description = " Represents the ARN (Amazon Resource Name) of a policy."
}

varibale "eks_name" {
 type = string
 description = "Represents the name of the EKS cluster."
}

varibale "eks_cluster_version" {
 type = string
 description = " Represents the version of the EKS cluster."
}

variable "eks_kms_key" {
 type = string
 description = "The ARN of the Key Management Service (KMS) customer master key (CMK). The CMK must be symmetric, created in the same region as the cluster"
}

varibale "eks_endpoint_private_access" {
 type = bool
 description = "Determines whether the EKS cluster has private endpoint access."
}

varibale "eks_endpoint_public_access" {
 type = bool
 description = "Determines whether the EKS cluster has public endpoint access."
}

variable "eks_public_access_cidrs" {
 type = list
 description = "List of CIDR blocks. Indicates which CIDR blocks can access the Amazon EKS public API server endpoint when enabled. EKS defaults this to a list with 0.0.0.0/0"
}

variable "eks_service_ipv4_cidr" {
 type = string
 description = "The CIDR block to assign Kubernetes pod and service IP addresses from. If you don't specify a block, Kubernetes assigns addresses from either the 10.100.0.0/16 or 172.20.0.0/16 CIDR blocks"
} 

variable "eks_config_map" {
 type = bool
 description = "Encryption enabled for config_map."
}

variable "eks_secret" {
 type = bool
 description = "Encryption enabled for secrets."
}

varibale "eks_cluster_sg_name" {
 type = string
 description = "Represents the name of the security group for EKS cluster."
}

varibale "eks_cluster_sg_tags" {
 type = map(string)
 description = "A map of string values used to tag the security group resource for the EKS cluster."
}

varibale "eks_node_sg_name" {
 type = string
 description = "Represents the name of the security group for EKS worker nodes."
}

varibale "eks_node_sg_tags" {
 type = map(string)
 description = "A map of string values used to tag the security group resource for EKS worker nodes."
}

varibale "node_iam_role_name" {
 type = string
 description = "Represents the name of the IAM role for EKS worker nodes."
}

varibale "node_AmazonEKSWorkerNodePolicy" {
 type = string
 description = "Represents the policy associated with EKS worker nodes."
}

varibale "node_AmazonEKS_CNI_Policy" {
 type = string
 description = "Represents the policy associated with the Amazon EKS CNI (Container Network Interface)."
}

varibale "node_AmazonEC2ContainerRegistryReadOnly" {
 type = string
 description = "Represents the policy associated with read-only access to the Amazon ECR (Elastic Container Registry)."
}

