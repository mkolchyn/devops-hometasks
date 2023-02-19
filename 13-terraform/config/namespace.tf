resource "kubernetes_namespace_v1" "mkolchyn-namespace" {
  metadata {
    name = var.namespace_name
  }
}