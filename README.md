# okdcp1
configulation okdcp1


## Note ##

api :   operators.coreos.com   คือการแก้ไขหน้าการ Subscription, หน้าแก้ไข Operator 

ต้องแก้ไขให้ลูกค้าไม่มีสิทธ์ลบ หรือ edit 

ClusterServiceVersion
Uninstall Operator
Edit Subscription

## DNS server ## 

```bash

sudo apt update
sudo apt install bind9 bind9utils bind9-doc 
systemctl enable named
systemctl start named
```

## Web Server ## 
```bash
sudo apt update
sudo apt install apache2 

sudo systemctl start apache2
sudo systemctl enable apache2
sudo systemctl status apache2

root dir is /var/www/html 
```
## NFS Server ## 
```bash
sudo apt update
sudo apt install nfs-kernel-server

sudo mkdir /var/nfs/general -p
chown nobody:nogroup /var/nfs/general


sudo nano /etc/exports

/var/nfs/general    client_ip(rw,sync,no_subtree_check)
/home               client_ip(rw,sync,no_root_squash,no_subtree_check)
/nfs    10.151.0.0/23(rw,sync,no_root_squash,no_subtree_check)

```
