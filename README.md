## Welcome to Elastic Stack Vagrant!

### First Steps
------

- Download **Vagrant** : [Link](https://www.vagrantup.com/downloads.html)

- Download **Virtualbox**: [Link](https://www.virtualbox.org/wiki/Downloads)

### Up and SSH
------

Download repository and run **Vagrant**. Example:

```bash
cd /home/rdrgporto/elk-vagrant/elastic6x/
vagrant up
```

If everything was fine, login via ssh:

```bash
vagrant ssh
```

Moreover, there are two kinds of network, **internal** and **public**. You can use **public network** in order to login via any kind of **ssh client** ([Putty](https://www.putty.org/), [MobaXterm](https://mobaxterm.mobatek.net/), [Termius](https://www.termius.com/)).

### Versions
------

**5x**

| Product       | Version |
| ------------- | ------- |
| Elasticsearch | 5.6.16  |
| Kibana        | 5.6.16  |
| Logstash      | 5.6.16  |
| Beats         | 5.6.16  |

**6x**

| Product       | Version |
| ------------- | ------- |
| Elasticsearch | 6.8.0   |
| Kibana        | 6.8.0   |
| Logstash      | 6.8.0   |
| Beats         | 6.8.0   |

**7x**

| Product       | Version |
| ------------- | ------- |
| Elasticsearch | 7.1.1   |
| Kibana        | 7.1.1   |
| Logstash      | 7.1.1   |
| Beats         | 7.1.1   |

### Vagrant Commands
------

```bash
vagrant up : start vm
vagrant ssh : connect to vm
vagrant halt : shutdown vm
vagrant provision : apply shell script
```
