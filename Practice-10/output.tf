output "cluster_name" {
  value = aws_eks_cluster.my-eks.name
}

output "cluster_endpoint" {
  value = aws_eks_cluster.my-eks.endpoint
}

output "cluster_ca_certificate" {
  value = aws_eks_cluster.my-eks.certificate_authority[0].data
}
