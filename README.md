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

## oc install command ##

### Fedora CoreOS Version List ### 

* https://builds.coreos.fedoraproject.org/browser 

### Fedora CoreOS Images ### 

* https://builds.coreos.fedoraproject.org/prod/streams/testing-devel/builds/38.20231104.20.0/x86_64/fedora-coreos-38.20231104.20.0-live.x86_64.iso

### OKD Release ### 

* https://github.com/okd-project/okd/releases 
  

```bash
ssh-keygen -t rsa -b 4096 -N ''

openshift-install create manifests

openshift-install create ignition-configs

sudo coreos-installer install /dev/sda --ignition-file bootstrap.ign

openshift-install wait-for bootstrap-complete --log-level=info

openshift-install wait-for install-complete

oc get csr --no-headers | awk '{print $1}' | xargs oc adm certificate approve


oc adm policy add-scc-to-user anyuid -z default -n YOUR_NAMESPACE,or_project_name

oc adm policy add-scc-to-group anyuid system:authenticated
```
