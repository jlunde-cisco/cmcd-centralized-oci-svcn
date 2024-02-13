terraform {
  required_providers {
    oci = {
      source  = "oracle/oci"
      version = "5.26.0"
    }
    ciscomcd = {
      source  = "CiscoDevNet/ciscomcd"
      version = "0.2.4"
    }
  }
}

provider "oci" {
  tenancy_ocid     = var.tenancy_ocid
  user_ocid        = var.user_ocid
  fingerprint      = var.fingerprint
  private_key_path = "key_files/priv_key.pem"
  region           = var.oci_region
}
