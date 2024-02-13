resource "oci_core_vcn" "security_vcn_setup" {
  cidr_blocks = [
    var.cidr_block,
  ]
  compartment_id = var.compartment_ocid
  display_name   = var.vcn_display_name
  dns_label      = "mcdsvcn"
  freeform_tags = {
  }
  ipv6private_cidr_blocks = [
  ]
}
