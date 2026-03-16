provider "local" {}

locals {
  instance_type = lookup(var.instance_type, terraform.workspace)
}

resource "local_file" "workspace_file" {
    filename = "${path.module}/workspace.txt"
    content  = "current workspace is ${terraform.workspace}\ninstance type is ${local.instance_type}"
}