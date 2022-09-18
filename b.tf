resource "google_bigquery_dataset" "assetonfire" {
dataset_id                  = "e_dataset"
friendly_name               = "fire"
description                 = "This is description"
location                    = "EU"
default_table_expiration_ms = 360000

labels = {
  env = "default"
}

access {
  role          = "OWNER"
  special_group = "allAuthenticatedUsers"
}
}
