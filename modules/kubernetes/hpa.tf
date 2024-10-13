resource "kubernetes_horizontal_pod_autoscaler_v2" "hpa" {
  metadata {
    name      = "${var.app_name}-hpa"
    namespace = kubernetes_namespace.app_namespace.metadata[0].name
  }

  spec {
    min_replicas = 1
    max_replicas = 10

    scale_target_ref {
      kind = "Deployment"
      name = kubernetes_deployment_v1.app_deployment.metadata[0].name
    }

    metric {
      type = "Resource"

      resource {
        name = "cpu"
        target {
          type                = "Utilization"
          average_utilization = 60
        }
      }
    }
  }
}