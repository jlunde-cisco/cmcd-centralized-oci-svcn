resource "oci_core_internet_gateway" "mcd-svcn-igw" {
  compartment_id = var.compartment_ocid
  display_name   = "mcd-svcn-igw"
  enabled        = "true"
  vcn_id = oci_core_vcn.security_vcn_setup.id
}
