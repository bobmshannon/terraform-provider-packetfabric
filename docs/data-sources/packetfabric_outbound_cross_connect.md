---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "packetfabric_outbound_cross_connect Data Source - terraform-provider-packetfabric"
subcategory: ""
description: |-

---

# packetfabric_outbound_cross_connect (Data Source)

## Example Usage

```terraform
terraform {
  required_providers {
    packetfabric = {
      source  = "packetfabric/packetfabric"
      version = "~> 0.0.1"
    }
  }
}
provider "packetfabric" {
  host  = var.pf_api_server
  token = var.pf_api_key
}

resource "packetfabric_outbound_cross_connect" "new" {
  provider = packetfabric
  description = "my-OCC"
  document_uuid = "55A7A654-4C3C-4C69-BCBE-755790F0417C"
  port = "PF-SO-ME-111"
  site = "DR-ATL1"

}

data "packetfabric_outbound_cross_connect" "current" {
  filter {
    id = packetfabric_outbound_cross_connect.new.id
  }
}

output "my-occ-info" {
  value = packetfabric_outbound_cross_connect.current
}
```

## Schema

### Optional

- `outbound_cross_connects` (Block List) List of Outbound Cross Connects. (see [below for nested schema](#nestedblock--outbound_cross_connects))

### Read-Only

- `id` (String) The ID of this resource.

<a id="nestedblock--outbound_cross_connects"></a>
### Nested Schema for `outbound_cross_connects`

Optional:

- `data_center_cross_connect_id` (String) The Outbound Cross Connect Data Center Cross Connect ID.
- `deleted` (Boolean) The Outbound Cross Connect delete state.
- `description` (String) The Outbound Cross Connect Description.
- `destination_circuit_id` (String) The Outbound Cross Connect Destination CID.
- `destination_name` (String) The Outbound Cross Connect Destination name.
- `document_uuid` (String) The Outbound Cross Connect Document UUID.
- `module` (String) The Outbound Cross Connect Module.
- `obcc_status` (String) The Outbound Cross Connect OBCC Status.
- `outbound_cross_connect_id` (String) The Outbound Cross Connect Outbound Cross Connect ID.
- `panel` (String) The Outbound Cross Connect Panel.
- `port` (String) The Outbound Cross Connect Port.
- `position` (String) The Outbound Cross Connect Position.
- `progress` (Number) The Outbound Cross Connect Progress.
- `site` (String) The Outbound Cross Connect Site.
- `time_created` (String) The Outbound Cross Connect Time created.
- `time_updated` (String) The Outbound Cross Connect Time updated.
- `user_description` (String) The Outbound Cross Connect User description.
- `z_loc_cfa` (String) The Outbound Cross Connect Panel/module/position.