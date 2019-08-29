resource "google_cloudfunctions_function" "function" {
   name                      = "myfunction"
   entry_point               = "unzipfunc"
   trigger_bucket            = "[StorageBucketName]"
   source_archive_bucket     = "${google_storage_bucket.bucket.name}"
   source_archive_object     = "${google_storage_bucket_object.archive.name}"

}