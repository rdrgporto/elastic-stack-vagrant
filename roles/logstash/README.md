Logstash
=========

Install **Logstash** in Ubuntu.

Requirements
------------

Prerequisites:

- Ubuntu

Variables
--------------

| Name             | Description         |
| ---------------- | ------------------- |
| logstash_version | Version of Logstash |

Example Playbook
----------------

```yaml
---
- name: Install Logstash
  hosts: staging
  become: true
  become_user: root
  roles:
    - logstash
```

License
-------

Apache-2.0