output "app_service_load_balancer_ip" {
  value       = module.kubernetes.app_service_load_balancer_ip
  description = "The external IP of the service"
}

output "app_service_port" {
  value       = module.kubernetes.app_service_port
  description = "The port of the service"
}

output "database_endpoint" {
  value       = module.database.database_endpoint
  description = "The endpoint of the database"
}