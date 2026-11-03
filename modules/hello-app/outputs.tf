output "node_port" {
  value = kubernetes_service.hello.spec[0].port[0].node_port
}
