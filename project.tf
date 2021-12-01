#data "rancher2_role_template" "member_role" {
#  name = "configmaps-manage"
#  context = "project"
#}

resource "rancher2_role_template" "create_secrets" {
  name = "memberz"
  context = "project"
  description = "Example project role"
  rules {
    api_groups = ["*"]
    resources = ["secrets"]
    verbs = ["create"]
  }
}


module "rancher2-project" {
  source = "github.com/janeczku/terraform-rancher-project-collection"

  project = {
    cluster_id = rancher2_cluster.user_cluster.id
    disable_prefix = true
    name = var.project_name
    project_limit = {
      limits_cpu = "1"
      limits_memory = "2Gi"
      requests_storage = "10Gi"
    }
    namespace_default_limit = {
      limits_cpu = "0.5"
      limits_memory = "1Gi"
      requests_storage = "10Gi"
    }
    container_resource_limit = {
      limits_cpu = "20m"
      limits_memory = "20Mi"
      requests_cpu = "1m"
      requests_memory = "1Mi"
    }
    role_bindings = {
      admin = {
        role_template_id = rancher2_role_template.create_secrets.id
        group_principal_id = var.project_member_group_uri
      }
    }
  }
}
