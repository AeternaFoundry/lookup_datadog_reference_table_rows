output "reference_table_rows_lookup_row_ids" {
  description = "Map of row_ids values across all reference_table_rows_lookup, keyed the same as var.reference_table_rows_lookup except keys with no row_ids are omitted"
  value       = { for k, v in data.datadog_reference_table_rows.reference_table_rows_lookup : k => v.row_ids if v.row_ids != null && length(v.row_ids) > 0 }
}
output "reference_table_rows_lookup_rows" {
  description = "Map of rows values across all reference_table_rows_lookup, keyed the same as var.reference_table_rows_lookup except keys with no rows are omitted"
  value       = { for k, v in data.datadog_reference_table_rows.reference_table_rows_lookup : k => v.rows if v.rows != null && length(v.rows) > 0 }
}
output "reference_table_rows_lookup_table_id" {
  description = "Map of table_id values across all reference_table_rows_lookup, keyed the same as var.reference_table_rows_lookup except keys with no table_id are omitted"
  value       = { for k, v in data.datadog_reference_table_rows.reference_table_rows_lookup : k => v.table_id if v.table_id != null && length(v.table_id) > 0 }
}

