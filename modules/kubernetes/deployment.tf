resource "kubernetes_deployment_v1" "app_deployment" {
  metadata {
    name      = "${var.app_name}-deployment"
    namespace = kubernetes_namespace.app_namespace.metadata[0].name
    labels = {
      app = "${var.app_name}-app"
    }
  }

  spec {
    replicas = 1

    selector {
      match_labels = {
        app = "${var.app_name}-app"
      }
    }

    template {
      metadata {
        labels = {
          app = "${var.app_name}-app"
        }
      }

      spec {
        container {
          image = "${var.image_username}/${var.image_name}:${var.image_version}"
          name  = "${var.app_name}-app"

          resources {
            limits = {
              cpu    = "800m"
              memory = "1024Mi"
            }
            requests = {
              cpu    = "550m"
              memory = "512Mi"
            }
          }

          port {
            container_port = 8080
          }

          env_from {
            secret_ref {
              name = kubernetes_secret_v1.app_secret.metadata[0].name
            }
          }
        }
      }
    }
  }
}
