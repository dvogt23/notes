## What Filesystem Should I Use Today?

> Do you want to guarantee your data is free of corruption?

ZFS for your data you care about (`/home`) and XFS on LVM for anything else.

> Do you want to avoid mucking about with kernel modules?

XFS on LVM

Use btrfs on your root (`/`) volume. But at least make /home xfs.
And have backups. [borg backup is good](https://www.borgbackup.org/).

Source: [blackhats.net.au](https://fy.blackhats.net.au/blog/2024-08-13-linux-filesystems/)

## Secure your VPS

1. Updated your server's software to the latest version
```
$ sudo apt update 
$ sudo apt upgrade 

$ sudo adduser username

$ sudo usermod -aG sudo username

$ su - username
$ sudo whoami
```    
2. Disabled password authentication and set up a more secure key-based authentication mechanism
```
$ ssh-keygen -t ed25519 -C "email@example.com"


$ ssh-copy-id -i ~/.ssh/ed25519.pub username@12.34.56.78

$ ssh -i ~/.ssh/ed25519 -o PasswordAuthentication=no username@12.34.56.78

$ eval "$(ssh-agent -s)"
$ ssh-add ~/.ssh/ed25519

$ ssh username@12.34.56.78

alias ssh-vps='ssh username@12.34.56.78'

$ source ~/.zhsrc
```
3. Added a firewall to control access to your server's ports
```
$ ssh username@12.34.56.78

$ sudo vim /etc/ssh/sshd_config

PermitRootLogin no
ChallengeResponseAuthentication no
PasswordAuthentication no
UsePAM no

$ sudo service sshd reload

$ ssh root@12.34.56.78
```
4. Installed Fail2Ban to automatically block IP addresses making unauthorised connection attempts
```
$ sudo apt install ufw
$ sudo ufw status verbose
$ sudo ufw disable
$ sudo ufw app list
$ sudo ufw allow 'OpenSSH'
$ sudo ufw show added
ufw allow OpenSSH
$ sudo ufw default deny incoming 
$ sudo ufw default allow outgoing
$ sudo ufw allow 'Nginx Full'
$ sudo ufw enable
$ sudo ufw status verbose
```    
5. Configured automatic security upgrades and patches
```
$ sudo apt install fail2ban
$ sudo systemctl status fail2ban.service
○ fail2ban.service - Fail2Ban Service
     Loaded: loaded (/lib/systemd/system/fail2ban.service; disabled; vendor preset: enabled)
     Active: inactive (dead)
       Docs: man:fail2ban(1)
$ cd /etc/fail2ban
$ sudo cp jail.conf jail.local
$ sudo vim jail.local
[sshd]
enabled = true
mode = aggressive
...
$ sudo systemctl enable fail2ban
$ sudo systemctl start fail2ban
$ sudo systemctl status fail2ban
```
Source: [kkyrie](https://www.kkyri.com/p/how-to-secure-your-new-vps-a-step-by-step-guide)