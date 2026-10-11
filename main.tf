data "datadog_reference_table_rows" "reference_table_rows_lookup" {
  for_each = var.reference_table_rows_lookup

  row_ids  = each.value.row_ids
  table_id = each.value.table_id
}

