resource "huaweicloud_obs_bucket" "bucket" {
  bucket = "test-555-999"
  acl    = "public-read"
}
