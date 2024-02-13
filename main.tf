# Setup the resources in the OCI Phoenix Region
module "setup_security_vcn" {
  source           = "./oci_security_vcn_setup"
  oci_region       = var.oci_region
  compartment_ocid = var.compartment_ocid
  availability_domain = var.availability_domain
  cidr_block = var.cidr_block
  vcn_display_name = var.vcn_display_name
}
