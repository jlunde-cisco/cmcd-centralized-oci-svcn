resource "oci_core_subnet" "mcd_svcn-mgmt-subnet" {
  cidr_block      = cidrsubnet(var.cidr_block, 1, 0)
  compartment_id  = var.compartment_ocid
  display_name    = "mcd-svcn-mgmt-subnet"
  dns_label       = "mcdsvcnmgmts"
  prohibit_internet_ingress  = "false"
  prohibit_public_ip_on_vnic = "false"
  route_table_id             = oci_core_route_table.mcd-svcn-mgmt-subnet-rt.id
  vcn_id = oci_core_vcn.security_vcn_setup.id
}

resource "oci_core_subnet" "mcd_svcn-datapath-subnet" {
  cidr_block      = cidrsubnet(var.cidr_block, 1, 1)
  compartment_id  = var.compartment_ocid
  display_name    = "mcd-svcn-datapath-subnet"
  dns_label       = "mcdsvcndatas"
  prohibit_internet_ingress  = "false"
  prohibit_public_ip_on_vnic = "false"
  route_table_id             = oci_core_route_table.mcd-svcn-datapath-subnet-rt.id
  vcn_id = oci_core_vcn.security_vcn_setup.id
}

