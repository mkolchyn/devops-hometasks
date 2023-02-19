resource "kubernetes_ingress_v1" "wcg_ingress" {
  depends_on = [
    kubernetes_service_v1.wcg-service
  ]
  metadata {
    name      = var.ingress_name
    namespace = var.namespace_name
    annotations = {
      "nginx.ingress.kubernetes.io/rewrite-target" = "/"
    }
  }

  spec {
    ingress_class_name = "nginx"
    rule {
      host = var.ingress_host
      http {
        path {
          backend {
            service {
              name = var.service_name
              port {
                number = var.ingress_port
              }
            }
          }
          path      = var.ingress_path
          path_type = var.ingress_path_type
        }
      }
    }
  }
}