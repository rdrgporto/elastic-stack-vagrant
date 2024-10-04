# 🎉 Welcome to Elastic Stack Vagrant! 🎉

## 🚀 Introduction

This repository was created to help you easily test the **Elastic Stack** in a Vagrant environment. It's perfect for experimenting with the latest versions of Elasticsearch, Kibana, and Fleet Server with Elastic Agent, following the **current architecture** promoted by Elastic for observability and security solutions.

💡 **Architecture Overview**: By default, this setup deploys:
- **Elasticsearch**: The heart of the Elastic Stack for search and data storage.
- **Kibana**: The visualization layer that provides powerful analytics and dashboards.
- **Fleet Server** with **Elastic Agent**: A centralized agent management solution for gathering metrics, logs, and security data.

Additionally, you have the flexibility to deploy other components such as:
- **Logstash**: For advanced data processing pipelines.
- **Beats** (like **Metricbeat**, **Auditbeat**, etc.): Lightweight data shippers that collect and forward data to Elasticsearch.

This setup is automated using **Ansible**, ensuring that the deployment and configuration of each Elastic Stack component is smooth and repeatable. Ansible manages provisioning, making it easier to get your environment up and running with minimal effort.

For more information about Elastic Stack components, check the official [Elastic website](https://www.elastic.co/).

## 🛠️ Compatibility

This repository use the latest version by default. You can change the version by modifying `inventories/staging/group_vars/staging.yml`.

![Elasticsearch](https://img.shields.io/badge/Elasticsearch-7.17.24%20%7C%208.15.2-green)
![Kibana](https://img.shields.io/badge/Kibana-7.17.24%20%7C%208.15.2-green)
![Fleet Server](https://img.shields.io/badge/Fleet%20Server-7.17.24%20%7C%208.15.2-green)
![Logstash](https://img.shields.io/badge/Logstash-7.17.24%20%7C%208.15.2-green)
![Beats](https://img.shields.io/badge/Beats-7.17.24%20%7C%208.15.2-green)

💡 **Note:** Elasticsearch and Kibana are configured to use **TLS/SSL** by default for enhanced security.

## 🔐 Credentials

To access the Elastic Stack services, use the following credentials:

| User    | Password |
| ------- | -------- |
| elastic | thanos   |

## 🏁 Getting Started

### Prerequisites

Before you can get started, you'll need to install the following software:

- **Vagrant**: Download it from [here](https://www.vagrantup.com/downloads.html) 🛠️
- **VirtualBox**: Get it from [here](https://www.virtualbox.org/wiki/Downloads) 💻

### 💻 Up and SSH

#### Install Git

Depending on your operating system, follow these steps to install Git:

- **Linux** :penguin:

    For Ubuntu/Debian:
    ```bash
    sudo apt -y install git
    ```

    For CentOS/RedHat:
    ```bash
    sudo yum -y install git
    ```

    Then, clone the repository:
    ```bash
    git clone https://github.com/rdrgporto/elastic-stack-vagrant.git
    ```

- **Windows** :checkered_flag:

    Download and install [Git Bash](https://gitforwindows.org/), then run:
    ```bash
    git clone https://github.com/rdrgporto/elastic-stack-vagrant.git
    ```

### 🚀 Running Vagrant

Vagrant is configured with both **internal** and **public** network options. You can use the **public network** to log in via any **SSH client** like [Putty](https://www.putty.org/), [MobaXterm](https://mobaxterm.mobatek.net/), or [Termius](https://www.termius.com/).

To start the virtual machine:

- **Linux/MacOS**:
    ```bash
    cd /path/to/your/elastic-stack-vagrant/
    vagrant up
    ```

- **Windows**:
    Open **Git Bash** or **Command Prompt** and navigate to the project folder:
    ```bash
    cd C:/path/to/your/elastic-stack-vagrant/
    vagrant.exe up
    ```

Once it's up and running, you can log in via SSH:

- **Linux/MacOS**:
    ```bash
    vagrant ssh
    ```

- **Windows**:
    Using **Git Bash** or **Command Prompt**:
    ```bash
    vagrant.exe ssh
    ```

## 🔄 Common Vagrant Commands

Here are some useful Vagrant commands to manage your virtual machine:

- **Linux/MacOS**:
    ```bash
    vagrant up        # Start the virtual machine
    vagrant destroy   # Remove/delete the virtual machine
    vagrant ssh       # Connect to the virtual machine via SSH
    vagrant halt      # Shutdown the virtual machine
    vagrant provision # Re-run Ansible provisioning
    ```

- **Windows** (using **Git Bash** or **Command Prompt**):
    ```bash
    vagrant.exe up        # Start the virtual machine
    vagrant.exe destroy   # Remove/delete the virtual machine
    vagrant.exe ssh       # Connect to the virtual machine via SSH
    vagrant.exe halt      # Shutdown the virtual machine
    vagrant.exe provision # Re-run Ansible provisioning
    ```

## 🤝 Contributing

Contributions are welcome! Feel free to open issues or submit pull requests to improve this project. Let's make testing the **Elastic Stack** easier together! 💡

## 📄 License

This project is licensed under the **Apache License 2.0**. See the [LICENSE](LICENSE) file for more details.
