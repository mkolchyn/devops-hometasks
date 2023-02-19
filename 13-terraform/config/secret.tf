resource "kubernetes_secret_v1" "github-pull-secret" {
  depends_on = [
    kubernetes_namespace_v1.mkolchyn-namespace
  ]
  metadata {
    name      = var.secret_name
    namespace = var.namespace_name
  }

  type = "kubernetes.io/dockerconfigjson"

  data = {
    ".dockerconfigjson" = jsonencode({
      auths = {
        "ghcr.io" = {
          "username" = var.secret_docker_username
          "password" = var.secret_docker_password
        }
      }
    })
  }
}