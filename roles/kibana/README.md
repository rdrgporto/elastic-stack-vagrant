## Welcome to the Kibana role!

### Introduction

------

With this role, we install and configure **Kibana**.

### Tasks

------

Several tasks are performed in this role, the most important ones are:

- Install Kibana.
- Configure Kibana.
- Copy CA to communicate with Elasticsearch via TLS/SSL.
- Set password for the kibana_system user.

### Variables

------

There are several important variables in this role:

- **kibana_version**: Kibana version.
- **kibana_elasticsearch_username**: Elasticsearch user (global variable).
- **kibana_elasticsearch_password**: Elasticsearch user password (global variable).
- **kibana_elasticsearch_port**: Elasticsearch port (global variable).
- **kibana_username**: Kibana user to communicate with Elasticsearch internally.
- **kibana_password**: Kibana user password to communicate with Elasticsearch internally.
- **kibana_certificate_ca**: CA name to communicate with Elasticsearch via TLS/SSL.
