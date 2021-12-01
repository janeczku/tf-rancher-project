resource "rancher2_cluster" "user_cluster" {
  name = var.user_cluster_name
  description = "Example User Cluster"
  rke_config {
    network {
      plugin = "canal"
    }
    kubernetes_version = var.user_cluster_kubernetes_version
  }
}