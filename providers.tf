terraform {
  required_providers {
    huaweicloud = {
      source = "huaweicloud/huaweicloud"
      version = "1.34.1"
    }
  }
  
  backend "s3" {
    bucket   = "terraform-obs-state"
    key      = "terraform-hw-github-actions/terraform.tfstate"
    region   = "cn-north-4"
    endpoint = "obs.cn-north-4.myhuaweicloud.com"

    skip_region_validation      = true
    skip_metadata_api_check     = true
    skip_credentials_validation = true
  }  
  
}

provider "huaweicloud" {
  region     = "cn-north-4"
}
