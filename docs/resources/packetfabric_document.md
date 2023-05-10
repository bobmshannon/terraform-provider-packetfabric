---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "packetfabric_document Resource - terraform-provider-packetfabric"
subcategory: ""
description: |-
  
---

# packetfabric_document (Resource)

When you order a cross connect, you must provide an LOA/CFA authorizing PacketFabric access to your equipment.

If you are unfamiliar with authoring an LOA, we have provided a [template](https://docs.packetfabric.com/docs/LOA_TEMPLATE.docx).

For more information, see the [PacketFabric Cross Connect documentation](https://docs.packetfabric.com/xconnect/outbound/order/).

## Example Usage

```terraform
resource "packetfabric_document" "loa1" {
  provider        = packetfabric
  document        = "letter-of-authorization-PF-AP-LAB8-3339359.pdf"
  type            = "loa"
  description     = "My LOA"
  port_circuit_id = "PF-AP-LAB8-3339359"
}
```

<!-- schema generated by tfplugindocs -->
## Schema

### Required

- `description` (String) Document description
- `document` (String) Document file name. Enum: ".png", ".jpg", ".jpeg", ".pdf", ".doc", ".docx", ".tiff"
- `type` (String) Document type. One of ["loa", "msa"]

### Optional

- `port_circuit_id` (String) Port circuit id. This field is required only for "loa" document type
- `timeouts` (Block, Optional) (see [below for nested schema](#nestedblock--timeouts))

### Read-Only

- `id` (String) ID for document

<a id="nestedblock--timeouts"></a>
### Nested Schema for `timeouts`

Optional:

- `create` (String)
- `delete` (String)
- `read` (String)


