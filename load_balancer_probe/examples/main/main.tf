module "load_balancer_probe" {
  source = "../../"

  loadbalancer_id     = var.loadbalancer_id
  name                = var.name
  port                = var.port
  protocol            = var.protocol
  probe_threshold     = var.probe_threshold
  request_path        = var.request_path
  interval_in_seconds = var.interval_in_seconds
  number_of_probes    = var.number_of_probes
}