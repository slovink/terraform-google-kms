provider "google" {
  project = "testing-gcp-ops"
  region  = "asia-northeast1"
  zone    = "asia-northeast1-a"
}

#####==============================================================================
##### kms_key module call .
#####==============================================================================
module "kms_key" {
  source           = ".././"
  name             = "ops"
  environment      = "test"
  location         = "asia-northeast1"
  service_accounts = ["serviceAccount:444692745132-compute@developer.gserviceaccount.com"]
  role             = "roles/editor"
}
