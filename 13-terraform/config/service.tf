resource "kubernetes_service_v1" "wcg-service" {
    depends_on = [
    kubernetes_deployment_v1.wcg-dep
  ]
  metadata {
    name      = var.service_name
    namespace = var.namespace_name
  }
  spec {
    selector = {
      app = "wcg"
    }
    port {
      port        = var.service_port
      target_port = var.service_target_port
    }
  }
}