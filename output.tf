output "node_registration_command" {
  value       = rancher2_cluster.user_cluster.cluster_registration_token.0.node_command
  description = "Docker command used to add a node to the quickstart cluster"
}