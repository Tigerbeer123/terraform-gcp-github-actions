resource "huaweicloud_obs_bucket" "bucket" {
  bucket = "test-333-888"
  acl    = "public-read"
}
