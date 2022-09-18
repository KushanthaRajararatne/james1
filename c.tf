resource "google_storage_bucket_iam_member" "norton" {
bucket = google_storage_bucket.default.name
role = "roles/storage.admin"
member = "allUsers"
}

resource "google_storage_bucket_iam_member" "express" {
bucket = google_storage_bucket.default.name
role = "roles/storage.admin"
members = ["user:john@express.com","allAuthenticatedUsers"]
}
