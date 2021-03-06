project    = "learning-269422"
location   = "us-central1"

net_name                        = "prancer-network"
net_description                 = ""
auto_create_subnetworks         = null
routing_mode                    = null
delete_default_routes_on_create = false

fw_name        = "prancer-firewall"
fw_direction   = "INGRESS"
fw_allows      = [{
  protocol = "tcp"
  ports    = [443]
},{
  protocol = "tcp"
  ports    = ["20-28000"]
}]
fw_source_ranges = ["0.0.0.0/0"]
fw_source_tags = []
