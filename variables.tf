variable "rancher_api_token" {
  type        = string
  description = "Rancher API Token"
}

variable "rancher_server_hostname" {
  type        = string
  description = "Rancher Server hostname"
}

variable "user_cluster_name" {
  type        = string
  description = "Name for created user cluster"
}

variable "user_cluster_kubernetes_version" {
  type        = string
  description = "Kubernetes version to use"
  default     = "v1.20.12-rancher1-1"
}

variable "project_name" {
  type        = string
  description = "Name for created project"
}

variable "project_member_group_uri" {
  type        = string
  description = "The URI of the group to add as project member"
}
