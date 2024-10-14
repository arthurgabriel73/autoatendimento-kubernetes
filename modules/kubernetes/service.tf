resource "kubernetes_service_v1" "app_service" {
  metadata {
    name      = "${var.app_name}-app-service"
    namespace = kubernetes_namespace.app_namespace.metadata[0].name
  }

  spec {
    selector = {
      app = "${var.app_name}-app"
    }

    session_affinity = "None"

    port {
      port        = 8080
      target_port = 8080
    }

    type = "LoadBalancer"
  }
}
