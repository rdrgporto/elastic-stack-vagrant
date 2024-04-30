## Welcome to the Elasticsearch role!

### Introduction

------

With this role, we install and configure **Elasticsearch**.

### Tasks

------

Several tasks are performed in this role, the most important ones being:

- Install Elasticsearch.
- Configure Elasticsearch.
- Create a password for the elastic user.
- Copy certificates to use TLS/SSL.
- Check Elasticsearch status.
- Create idempotence file to make Ansible idempotent.

### Variables

------

There are several important variables in this role:

- **elasticsearch_version**: Elasticsearch version.
- **elasticsearch_username**: Elasticsearch user.
- **elasticsearch_password**: Password for the Elasticsearch user.
- **elasticsearch_jvm**: JVM assigned to Elasticsearch.
- **elasticsearch_cluster_name**: Elasticsearch cluster name.
- **elasticsearch_port**: Port used by Elasticsearch.
- **elasticsearch_certificate**: Certificate name.
- **elasticsearch_certificate_key**: Certificate private key.
- **elasticsearch_certificate_ca**: CA name.
