resource "kubernetes_deployment_v1" "wcg-dep" {
    depends_on = [
    kubernetes_namespace_v1.mkolchyn-namespace,
    kubernetes_secret_v1.github-pull-secret
  ]
  metadata {
    name      = var.deployment_name
    namespace = var.namespace_name
  }

  spec {
    replicas = var.deployment_replica_number

    selector {
      match_labels = local.labels
    }

    template {
      metadata {
        labels = local.labels
      }
      spec {
        container {
          image             = var.deployment_container_image
          name              = var.deployment_container_name
          image_pull_policy = "Always"
        }
        image_pull_secrets {
          name = var.secret_name
        }
      }
    }
  }
}