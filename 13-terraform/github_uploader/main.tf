resource "github_repository_file" "this" {
  for_each = fileset("${path.module}/../config","*.tf")
  repository          = "devops-hometasks"
  branch              = "master"
  file                = "13-terraform/config/${each.value}"
  content             = file("${path.module}/../config/${each.value}")
  overwrite_on_create = true
}