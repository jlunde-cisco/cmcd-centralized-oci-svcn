resource "oci_core_route_table" "mcd-svcn-mgmt-subnet-rt" {
  compartment_id = var.compartment_ocid
  display_name   = "mcd-svcn-mgmt-subnet-rt"
  route_rules {
    destination       = "0.0.0.0/0"
    destination_type  = "CIDR_BLOCK"
    network_entity_id = oci_core_internet_gateway.mcd-svcn-igw.id
  }
  vcn_id = oci_core_vcn.security_vcn_setup.id
}

resource "oci_core_route_table" "mcd-svcn-datapath-subnet-rt" {
  compartment_id = var.compartment_ocid
  display_name   = "mcd-svcn-datapath-subnet-rt"
  route_rules {
    destination       = "0.0.0.0/0"
    destination_type  = "CIDR_BLOCK"
    network_entity_id = oci_core_internet_gateway.mcd-svcn-igw.id
  }
  vcn_id = oci_core_vcn.security_vcn_setup.id
}