## Welcome to the Fleet Server Role!

### Introduction

------

In this role, we install and configure **Fleet Server**.

### Tasks

------

Several tasks are performed in this role, with the most important ones being:

- Configure the output endpoint for Elastic Agents.
- Create a policy in Fleet to configure Fleet Server.
- Copy certificates to be used by Fleet Server.
- Install and configure Elastic Agent as Fleet Server.
- Create an idempotency file to ensure Ansible is idempotent.

### Variables

------

The most important variables in this role are:

- **fleet_server_version**: Version of Fleet Server (Elastic Agent).
- **fleet_server_port**: Port used by Fleet Server.
- **fleet_server_policy_id**: ID of the policy used by Fleet Server.
- **fleet_server**: Name of the policy used by Fleet Server.
- **fleet_server_elasticsearch_certificate_ca**: Name of the CA for communicating with Elasticsearch via TLS/SSL.
- **fleet_server_certificate**: Name of the certificate.
- **fleet_server_certificate_key**: Private key of the certificate.
- **fleet_server_elasticsearch_username**: Elasticsearch username (global variable).
- **fleet_server_elasticsearch_password**: Elasticsearch user password (global variable).
- **fleet_server_elasticsearch_port**: Port used by Elasticsearch (global variable).
- **fleet_server_download_dir**: Path for downloading Elastic Agent (tar.gz file).
- **fleet_server_certificates_dir**: Path where certificates are stored for use by Elastic Agent.
- **fleet_server_idempotency_path**: Path to the file used for idempotency in the role.

