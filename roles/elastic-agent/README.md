Beats
=========

Install **Elastic Agent** in Ubuntu.

Requirements
------------

Prerequisites:

- Ubuntu

Variables
--------------

| Name                  | Description                |
| ----------------      | -------------------        |
| elastic_agent_version | Version of Elastic Agent   |

Example Playbook
----------------

```yaml
---
- name: Install Elastic Agent
  hosts: staging
  become: true
  become_user: root
  roles:
    - elastic-agent
```

License
-------

Apache-2.0