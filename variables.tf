variable "reference_table_rows_lookup" {
  description = <<EOT
Map of reference_table_rows_lookup, attributes below
Required:
    - row_ids
    - table_id
EOT

  type = map(object({
    row_ids  = list(string)
    table_id = string
  }))
}

