## Welcome to Elastic Stack Vagrant!

### First Steps

------

- Download **Vagrant** : [Link](https://www.vagrantup.com/downloads.html)

- Download **Virtualbox**: [Link](https://www.virtualbox.org/wiki/Downloads)

### Up and SSH

------

Download repository and run **Vagrant**. Example:

```bash
cd /home/rdrgporto/elk-vagrant/elastic8x/
vagrant up
```

If everything was fine, login via **SSH** (password: vagrant):

```bash
vagrant ssh
```

Moreover, there are two kinds of network, **internal** and **public**. You can use **public network** in order to login via any kind of **ssh client** ([Putty](https://www.putty.org/), [MobaXterm](https://mobaxterm.mobatek.net/), [Termius](https://www.termius.com/)).

### Versions

------

**7x**

| Product       | Version |
| ------------- | ------- |
| Elasticsearch | 7.17.9  |
| Kibana        | 7.17.9  |
| Logstash      | 7.17.9  |
| Beats         | 7.17.9  |
| Elastic Agent | 7.17.9  |

**8x**

| Product       | Version |
| ------------- | ------- |
| Elasticsearch | 8.7.0   |
| Kibana        | 8.7.0   |
| Logstash      | 8.7.0   |
| Beats         | 8.7.0   |
| Elastic Agent | 8.7.0   |

### Credentials

------

**8x**

| User    | Password |
| ------- | -------- |
| elastic | thanos   |

### Vagrant Commands

------

```bash
vagrant up : start vm
vagrant ssh : connect to vm
vagrant halt : shutdown vm
vagrant provision : apply shell script
```
