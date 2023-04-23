Kibana
=========

Install **Kibana** in Ubuntu.

Requirements
------------

Prerequisites:

- Ubuntu

Variables
--------------

| Name                   | Description              |
| ---------------------- | ------------------------ |
| kibana_version         | Version of Elasticsearch |
| kibana_username        | Kibana user              |
| kibana_password        | Kibana user password     |
| elasticsearch_username | Admin user               |
| elasticsearch_password | Admin password           |

Example Playbook
----------------

```yaml
---
- name: Install Kibana
  hosts: staging
  become: true
  become_user: root
  roles:
    - kibana
```

License
-------

Apache-2.0
