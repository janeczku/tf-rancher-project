provider "rancher2" {

  api_url  = "https://${var.rancher_server_hostname}"
  insecure = true
  token_key = var.rancher_api_token
}
