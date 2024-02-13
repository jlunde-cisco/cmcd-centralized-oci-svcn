resource "oci_core_network_security_group" "mcd-svcn-mgmt-nsg" {
  compartment_id = var.compartment_ocid
  display_name   = "mcd-svcn-mgmt-nsg"
  vcn_id = oci_core_vcn.security_vcn_setup.id
}

resource "oci_core_network_security_group" "mcd-svcn-datapath-nsg" {
  compartment_id = var.compartment_ocid
  display_name   = "mcd-svcn-datapath-nsg"
  vcn_id = oci_core_vcn.security_vcn_setup.id
}

resource "oci_core_network_security_group_security_rule" "mcd_mgmt_security_group_security_rule" {
  destination               = "0.0.0.0/0"
  destination_type          = "CIDR_BLOCK"
  direction                 = "EGRESS"
  network_security_group_id = oci_core_network_security_group.mcd-svcn-mgmt-nsg.id
  protocol                  = "all"
  source_type = ""
  stateless   = "false"
}

resource "oci_core_network_security_group_security_rule" "mcd-datapath-nsg_network_security_group_security_rule" {
  destination               = "0.0.0.0/0"
  destination_type          = "CIDR_BLOCK"
  direction                 = "EGRESS"
  network_security_group_id = oci_core_network_security_group.mcd-svcn-datapath-nsg.id
  protocol                  = "all"
  source_type = ""
  stateless   = "false"
}

resource "oci_core_network_security_group_security_rule" "mcd-datapath-nsg_network_security_group_security_rule_1" {
  destination_type          = ""
  direction                 = "INGRESS"
  network_security_group_id = oci_core_network_security_group.mcd-svcn-datapath-nsg.id
  protocol                  = "all"
  source                    = "0.0.0.0/0"
  source_type               = "CIDR_BLOCK"
  stateless                 = "false"
}