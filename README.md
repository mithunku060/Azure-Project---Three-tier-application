# 3-Tier Web Application Deployment on Microsoft Azure

A production-grade, highly available 3-tier web application architecture deployed on Microsoft Azure, utilizing **OrangeHRM**, **Apache**, **PHP 7.1**, and **MySQL 8.0** isolated within custom Virtual Networks (VNets).

---

## 🏗️ Architecture Overview

The application is split into logical tiers across an Azure VNet (`10.0.0.0/16`):

1. **Presentation & Application Tier (Public Subnet - `10.0.1.0/24`)**:
   * Hosted on an **Ubuntu 24.04 LTS Azure Virtual Machine**.
   * Runs **Apache Web Server** and **PHP 7.1**.
   * Deployed with **OrangeHRM** for comprehensive human capital management.
   * Protected by a Web Network Security Group (Web NSG) allowing only HTTP (`80`), HTTPS (`443`), and SSH (`22` for management).

2. **Data Tier (Private Subnet - `10.0.2.0/24`)**:
   * Hosted on a separate **Azure Virtual Machine** running **MySQL 8.0**.
   * Isolated from direct public internet access.
   * Protected by a Database NSG allowing port `3306` strictly from the Web Subnet.

3. **Networking & Resolution**:
   * Integrated with **Azure Public DNS** for global resolution and human-readable domain mapping.

---

## ⚙️ Tech Stack & Components
* **Cloud Provider:** Microsoft Azure
* **OS:** Ubuntu 24.04 LTS
* **Web Server:** Apache2
* **Language:** PHP 7.1
* **Database:** MySQL 8.0
* **Application:** OrangeHRM

---

## 🚀 Deployment & Configuration Steps

### 1. Web Server & PHP Setup (Public Subnet VM)
Update packages and install Apache along with required PHP modules:
```bash
sudo apt update
sudo apt install apache2 -y
sudo apt-get install software-properties-common -y
sudo add-apt-repository ppa:ondrej/php -y
sudo apt update
sudo apt install php7.1 php7.1-common php7.1-mbstring php7.1-xmlrpc php7.1-soap php7.1-gd php7.1-xml php7.1-intl php7.1-mysql php7.1-cli php7.1-mcrypt php7.1-ldap php7.1-zip php7.1-curl -y
