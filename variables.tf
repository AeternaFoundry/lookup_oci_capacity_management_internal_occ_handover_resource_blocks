variable "capacity_management_internal_occ_handover_resource_blocks_lookup" {
  description = <<EOT
Map of capacity_management_internal_occ_handover_resource_blocks_lookup, attributes below
Required:
    - compartment_id
    - namespace
    - occ_customer_group_id
Optional:
    - handover_date_greater_than_or_equal_to
    - handover_date_less_than_or_equal_to
    - handover_resource_name
    - occ_handover_resource_block_id
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id                         = string
    namespace                              = string
    occ_customer_group_id                  = string
    handover_date_greater_than_or_equal_to = optional(string)
    handover_date_less_than_or_equal_to    = optional(string)
    handover_resource_name                 = optional(string)
    occ_handover_resource_block_id         = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

