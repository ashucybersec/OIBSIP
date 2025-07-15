Task 2 - Basic Firewall Configuration with UFW

Objective
Configure a firewall on a Linux system using UFW to allow SSH (port 22) and block HTTP (port 80) traffic.

Tools Used
- UFW

Commands Used
```
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw allow 22
sudo ufw deny 80
sudo ufw enable
sudo ufw status verbose
```
Findings
- SSH (port 22) is allowed.
- HTTP (port 80) is blocked.
- All other incoming traffic is denied by default.
