module "load_balancer_pool" {
  source = "../../"

  loadbalancer_id = var.loadbalancer_id
  name            = var.name
}