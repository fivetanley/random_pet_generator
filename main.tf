 terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "~> 3.1.0"
    }
    null = {
      source = "hashicorp/null"
      version = "~> 3.2.2"
    }
  }
}

resource "null_resource" "pet" {
  for_each = toset([for pet in range(1, 500): tostring(pet)])
}
