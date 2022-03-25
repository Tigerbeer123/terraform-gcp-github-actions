terraform {
  required_providers {
    huaweicloud = {
      source = "huaweicloud/huaweicloud"
    }
  }
  
  backend "s3" {
    bucket   = "terraform-obs-state"
    key      = "terraform-gcp-github-actions/terraform.tfstate"
    region   = "cn-north-4"
    endpoint = "obs.cn-north-4.myhuaweicloud.com"

    skip_region_validation      = true
    skip_metadata_api_check     = true
    skip_credentials_validation = true
  }
}

provider "huaweicloud" {
  region     = "cn-north-4"
  access_key = "J43N4LH6GEMZGC8ZZZLV"
  secret_key = "JPq9CAcwioEr9VZbk0wkwE3IKTnU6dqUkbKDpdpQ"
}
