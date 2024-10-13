output "app_service_load_balancer_ip" {
  value       = kubernetes_service_v1.app_service.spec[0].load_balancer_ip
  description = "The external IP of the service"
}

output "app_service_port" {
  value       = kubernetes_service_v1.app_service.spec[0].port
  description = "The port of the service"
}