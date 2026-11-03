terraform {
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.30"
    }
  }
}

provider "kubernetes" {
  config_path    = "~/.kube/config"
  config_context = "minikube"
}

module "hello_app_dev" {
  source           = "./modules/hello-app"
  environment_name = "dev"
  replica_count    = 1
}

module "hello_app_prod" {
  source           = "./modules/hello-app"
  environment_name = "prod"
  replica_count    = 3
}
