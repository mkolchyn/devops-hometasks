variable "provider_host" {
  default = "https://192.168.49.2:8443"
}
variable "provider_client_certificate" {
  default = "/home/vagrant/.minikube/profiles/minikube/client.crt"
}
variable "provider_client_key" {
  default = "/home/vagrant/.minikube/profiles/minikube/client.key"
}
variable "provider_cluster_ca_certificate" {
  default = "/home/vagrant/.minikube/ca.crt"
}

variable "lables_app_name" {
  default = "wcg"
}

variable "namespace_name" {
  default = "mkolchyn"
}

variable "secret_name" {
  default = "github-pull-secret"
}
variable "secret_docker_username" {
  default = "mkolchyn"
}
variable "secret_docker_password" {
  default = "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"
}

variable "deployment_name" {
  default = "wcg"
}
variable "deployment_replica_number" {
  default = 1
}
variable "deployment_container_image" {
  default = "ghcr.io/mkolchyn/wcg"
}
variable "deployment_container_name" {
  default = "wcg"
}

variable "service_name" {
  default = "wcg-service"
}
variable "service_port" {
  default = 8888
}
variable "service_target_port" {
  default = 8888
}

variable "ingress_name" {
  default = "wcg-service"
}
variable "ingress_host" {
  default = "wcg.com"
}
variable "ingress_port" {
  default = 8888
}
variable "ingress_path" {
  default = "/svc1"
}
variable "ingress_path_type" {
  default = "Prefix"
}