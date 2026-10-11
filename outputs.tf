output "wafregional_byte_match_sets_id" {
  description = "Map of id values across all wafregional_byte_match_sets, keyed the same as var.wafregional_byte_match_sets"
  value       = { for k, v in aws_wafregional_byte_match_set.wafregional_byte_match_sets : k => v.id if v.id != null && length(v.id) > 0 }
}
output "wafregional_byte_match_sets_byte_match_tuples" {
  description = "Map of byte_match_tuples values across all wafregional_byte_match_sets, keyed the same as var.wafregional_byte_match_sets"
  value       = { for k, v in aws_wafregional_byte_match_set.wafregional_byte_match_sets : k => v.byte_match_tuples if v.byte_match_tuples != null && length(v.byte_match_tuples) > 0 }
}
output "wafregional_byte_match_sets_name" {
  description = "Map of name values across all wafregional_byte_match_sets, keyed the same as var.wafregional_byte_match_sets"
  value       = { for k, v in aws_wafregional_byte_match_set.wafregional_byte_match_sets : k => v.name if v.name != null && length(v.name) > 0 }
}
output "wafregional_byte_match_sets_region" {
  description = "Map of region values across all wafregional_byte_match_sets, keyed the same as var.wafregional_byte_match_sets"
  value       = { for k, v in aws_wafregional_byte_match_set.wafregional_byte_match_sets : k => v.region if v.region != null && length(v.region) > 0 }
}

