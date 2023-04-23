Elasticsearch
=========

Install **Elasticsearch** in Ubuntu.

Requirements
------------

Prerequisites:

- Ubuntu

Variables
--------------

| Name                       | Description                                 |
| -------------------------- | ------------------------------------------- |
| elasticsearch_version      | Version of Elasticsearch                    |
| elasticsearch_cluster_name | Name of Elasticsearch's cluster             |
| elasticsearch_username     | Admin user                                  |
| elasticsearch_password     | Admin password                              |
| elasticsearch_jvm          | JVM (Java Virtual Machine) of Elasticsearch |

Example Playbook
----------------

```yaml
---
- name: Install Elasticsearch
  hosts: staging
  become: true
  become_user: root
  roles:
    - elasticsearch
```

License
-------

Apache-2.0
