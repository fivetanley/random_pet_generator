terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.1.2"
    }
  }
}

provider "random" {
  # Configuration options
}

resource "random_pet" "pet" {
  length           = var.word-count
}
