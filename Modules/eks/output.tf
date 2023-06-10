output "eks_cluster_arn" {
 value       = aws_eks_cluster.example.arn
 description = "The Amazon Resource Name (ARN) of the EKS Cluster."
}

output "eks_cluster_endpoint" {
 value       = aws_eks_cluster.example.endpoint
 description = "The endpoint URL of the EKS Cluster's API Server."
}

output "eks_cluster_ca_certificate" {
 value       = aws_eks_cluster.example.certificate_authority[0].data
 description = "The CA Certificate data used fro authenticating and establishing secure connection with the EKS cluster."
}

output "eks_cluster_version" {
  value       = aws_eks_cluster.example.version
  description = "The version of the EKS cluster."
}

output "eks_cluster_id" {
  value       = aws_eks_cluster.example.id
  description = "The ID of the EKS Cluster."
}

