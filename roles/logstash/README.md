## Welcome to the Logstash role!

### Introduction

------

With this role, we install and configure **Logstash**.

### Tasks

------

Several tasks are performed in this role, the most important ones are:

- Install Logstash.
- Configure Logstash.
- Copy CA to communicate with Elasticsearch via TLS/SSL.

### Variables

------

There are several important variables in this role:

- **logstash_version**: Logstash version.
- **logstash_elasticsearch_username**: Elasticsearch user (global variable).
- **logstash_elasticsearch_password**: Elasticsearch user password (global variable).
- **logstash_elasticsearch_port**: Elasticsearch port (global variable).
- **logstash_jvm**: JVM assigned to Logstash.
- **logstash_certificate_ca**: CA name to communicate with Elasticsearch via TLS/SSL.
