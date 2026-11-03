resource "kubernetes_deployment" "hello" {
  metadata {
    name = "hello-app-deployment-${var.environment_name}"
  }
  spec {
    replicas = var.replica_count
    selector {
      match_labels = {
        app = "hello-app-${var.environment_name}"
      }
    }
    template {
      metadata {
        labels = {
          app = "hello-app-${var.environment_name}"
        }
      }
      spec {
        container {
          name  = "hello-app"
          image = "shripada/hello-app:v2"
          port {
            container_port = 8080
          }
        }
      }
    }
  }
}

resource "kubernetes_service" "hello" {
  metadata {
    name = "hello-app-service-${var.environment_name}"
  }
  spec {
    selector = {
      app = "hello-app-${var.environment_name}"
    }
    port {
      port        = 80
      target_port = 8080
    }
    type = "NodePort"
  }
}
