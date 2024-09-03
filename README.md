# Welcome to Elastic Stack Vagrant!

## Introduction

This repository was created with the aim of testing **Elastic Stack** easily. More information about this stack: [Elastic](https://www.elastic.co/)

**Compatibility**

:eye: This repository use the latest version by default. You can change the version by modifying *inventories/staging/group_vars/staging.yml*.

| Product       | Version         |
| ------------- | --------------- |
| Elasticsearch | 7.17.23, 8.15.0 |
| Kibana        | 7.17.23, 8.15.0 |
| Logstash      | 7.17.23, 8.15.0 |
| Elastic Agent | 7.17.23, 8.15.0 |
| Beats         | 7.17.23, 8.15.0 |

**Credentials**

| User    | Password |
| ------- | -------- |
| elastic | thanos   |

:eye: Elasticsearch and Kibana uses TLS/SSL by default.

## First Steps

* Download **Vagrant** : [Link](https://www.vagrantup.com/downloads.html)

- Download **Virtualbox**: [Link](https://www.virtualbox.org/wiki/Downloads)

## Up and SSH

### <u>Install Git</u>

- #### Linux :penguin:

```bash
sudo apt -y install git --> Ubuntu/Debian
sudo yum -y install git --> CentOS/RedHat

git clone https://github.com/rdrgporto/elastic-stack-vagrant.git
```

- #### Windows :checkered_flag:

  Download [Git Bash](https://gitforwindows.org/) and install it:

```bash
git clone https://github.com/rdrgporto/elastic-stack-vagrant.git
```

### <u>Run Vagrant</u> :rocket:

**Vagrant** is configured with two kinds of network, **internal** and **public**. You can use **public network** in order to login via any kind of **SSH client** ([Putty](https://www.putty.org/), [MobaXterm](https://mobaxterm.mobatek.net/), [Termius](https://www.termius.com/)):

```bash
cd /home/rdrgporto/elastic-stack-vagrant/
vagrant up
```

If everything was fine, login via **SSH**:

```bash
vagrant ssh
```

## Vagrant Commands

```bash
vagrant up        : start vm
vagrant destroy   : remove/delete vm
vagrant ssh       : connect to vm
vagrant halt      : shutdown vm
vagrant provision : relaunch Ansible
```
