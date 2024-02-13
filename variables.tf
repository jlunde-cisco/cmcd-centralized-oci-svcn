## Oracle OCI provider variables
variable "tenancy_ocid" {
  type = string
}
variable "user_ocid" {
  type = string
}
variable "fingerprint" {
  type = string
}


## Module 1 Variables
variable "compartment_ocid" {
  type = string
}
variable "oci_region" {
  type = string
}
variable "availability_domain" {
  type = string
}
variable "cidr_block" {
  type = string
}
variable "vcn_display_name" {
  type = string
}