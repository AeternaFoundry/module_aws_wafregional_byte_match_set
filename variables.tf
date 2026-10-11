variable "wafregional_byte_match_sets" {
  description = <<EOT
Map of wafregional_byte_match_sets, attributes below
Required:
    - name
Optional:
    - region
    - byte_match_tuples (block):
        - field_to_match (required, block):
            - data (optional)
            - type (required)
        - positional_constraint (required)
        - target_string (optional)
        - text_transformation (required)
EOT

  type = map(object({
    name   = string
    region = optional(string)
    byte_match_tuples = optional(list(object({
      field_to_match = object({
        data = optional(string)
        type = string
      })
      positional_constraint = string
      target_string         = optional(string)
      text_transformation   = string
    })))
  }))
}

