# Centralized VCN setup for Multicloud Defense within OCI

This repo is intended for a quick and versatile setup of the Oracle SVCN for a centralized Multicloud Defense VCN

There a a few pre-requisites and steps that must be followed in order to get this setup working. Please follow the steps below.

 > **Note:** The Oracle OCI multicloud defense gateways are NOT launched using terraform yet. You will need to launch them manually, from the UI.
# Installation Steps

 1. Clone the repository
 2. Modify the following files and variables within the repository:
	 - [ ] **key_files/priv_key.pem**  --> input the contents of your OCI API key, private key into here (downloaded when you create your OCI api key
	 - [ ] **terraform.tfvars**
	    - [ ] ***compartment_ocid*** --> (put your compartment ocid in here)
	    - [ ] ***tenancy_id*** --> (From API key - the tenancy ID)
	    - [ ] ***user_id*** --> (From API key - the user ID)
	    - [ ] ***fingerprint*** --> (From API key - the fingerprint)
 
 3. Onboard your Oracle OCI account into Cisco Multicloud Defense by following this guide: https://docs.defenseorchestrator.com/multicloud/index.html#!g_oci.html
 4. Deploy the Multicloud Defense gateways into the region
