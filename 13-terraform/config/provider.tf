terraform {
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "2.18.0"
    }
  }
  backend "kubernetes" {
    secret_suffix = "state"
    config_path   = "~/.kube/config"
    namespace     = "kube-system"
  }
}

provider "kubernetes" {
  host = var.provider_host

  client_certificate     = file(var.provider_client_certificate)
  client_key             = file(var.provider_client_key)
  cluster_ca_certificate = file(var.provider_cluster_ca_certificate)
}