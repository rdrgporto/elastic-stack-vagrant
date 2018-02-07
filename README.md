# Welcome to Elastic Stack Vagrant!

## First Steps

 - Download **Vagrant** : [Link](https://www.vagrantup.com/downloads.html)
 - Download **Virtualbox**: [Link](https://www.virtualbox.org/wiki/Downloads)

## Up and SSH

Download repository and run **Vagrant**. Example:

    cd /home/rdrgporto/elk-vagrant/elastic6x/
    vagrant up

If everything was fine, login via ssh:

    vagrant ssh

Moreover, there are two kinds of network, **internal** and **public**. You can use **public network** in order to login via any kind of **ssh client** ([Putty](https://www.putty.org/), [MobaXterm](https://mobaxterm.mobatek.net/), [Termius](https://www.termius.com/)).

## Versions 5x

| Product | Version |
|--|--|
| Elasticsearch |  5.6.7 |
| Kibana |  5.6.7 |
| Logstash |  5.6.7 |
| Beats |  5.6.7 |

## Versions 6x

| Product | Version |
|--|--|
| Elasticsearch |  6.1.3 |
| Kibana |  6.1.3 |
| Logstash |  6.1.3 |
| Beats |  6.1.3 |

## Vagrant Commands

    vagrant up : Starts the machine
    vagrant ssh : ssh to the machine
    vagrant halt : Shutdown the machine
    vagrant provision : Apply shell script
