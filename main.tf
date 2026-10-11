resource "aws_wafregional_byte_match_set" "wafregional_byte_match_sets" {
  for_each = var.wafregional_byte_match_sets

  name   = each.value.name
  region = each.value.region

  dynamic "byte_match_tuples" {
    for_each = each.value.byte_match_tuples != null ? each.value.byte_match_tuples : []
    content {
      field_to_match {
        data = byte_match_tuples.value.field_to_match.data
        type = byte_match_tuples.value.field_to_match.type
      }
      positional_constraint = byte_match_tuples.value.positional_constraint
      target_string         = byte_match_tuples.value.target_string
      text_transformation   = byte_match_tuples.value.text_transformation
    }
  }
}

