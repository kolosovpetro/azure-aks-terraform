locals {
  resource_group_name = "${var.resource_group_name}-${var.prefix}"
  cluster_name        = "${var.cluster_name}-${var.prefix}"
  acr_name            = "${var.acr_name}${var.prefix}"
}
