Beats
=========

Install **Beats** in Ubuntu.

Requirements
------------

Prerequisites:

- Ubuntu

Variables
--------------

| Name               | Description           |
| ----------------   | -------------------   |
| filebeat_version   | Version of Filebeat   |
| metricbeat_version | Version of Metricbeat |
| packetbeat_version | Version of Packetbeat |
| auditbeat_version  | Version of Auditbeat  |
| heartbeat_version  | Version of Heartbeat  |

Example Playbook
----------------

```yaml
---
- name: Install Beats
  hosts: staging
  become: true
  become_user: root
  roles:
    - beats
```

License
-------

Apache-2.0