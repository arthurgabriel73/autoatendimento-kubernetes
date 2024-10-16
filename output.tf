output "app_service_load_balancer_address" {
  value       = "http://${module.kubernetes.app_service_load_balancer.status[0].load_balancer[0].ingress[0].hostname}:${module.kubernetes.app_service_port[0].target_port}"
  description = "The address of the service"
}
