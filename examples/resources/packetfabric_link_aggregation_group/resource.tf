# Create a PacketFabric interfaces
resource "packetfabric_port" "port_1a" {
  provider          = packetfabric
  autoneg           = var.pf_port_autoneg
  description       = "${var.pf_description}-a"
  media             = var.pf_port_media
  nni               = var.pf_port_nni
  pop               = var.pf_port_pop1
  speed             = var.pf_port_speed
  subscription_term = var.pf_port_subterm
  zone              = var.pf_port_avzone1
}
output "packetfabric_port_1a" {
  value = packetfabric_port.port_1a
}

## 2nd port in the same location same zone to create a LAG
resource "packetfabric_port" "port_1b" {
  provider          = packetfabric
  autoneg           = var.pf_port_autoneg
  description       = "${var.pf_description}-b"
  media             = var.pf_port_media
  nni               = var.pf_port_nni
  pop               = var.pf_port_pop1
  speed             = var.pf_port_speed
  subscription_term = var.pf_port_subterm
  zone              = var.pf_port_avzone1
}
output "packetfabric_port_1b" {
  value = packetfabric_port.port_1b
}

resource "packetfabric_link_aggregation_group" "lag_1" {
  provider    = packetfabric
  description = var.pf_description
  interval    = "fast" # or slow
  members     = [packetfabric_port.port_1a.id, packetfabric_port.port_1b.id]
  pop = var.pf_port_pop1
}
output "packetfabric_link_aggregation_group" {
  value = packetfabric_link_aggregation_group.lag_1
}