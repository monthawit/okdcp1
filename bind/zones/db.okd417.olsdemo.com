;
; BIND data file for local loopback interface
;
$TTL    604800
@       IN      SOA     okd417-bastion-01.okd417.olsdemo.com. admin.okd417.olsdemo.com. (
                              3         ; Serial
                         604800         ; Refresh
                          86400         ; Retry
                        2419200         ; Expire
                         604800 )       ; Negative Cache TTL
;
@       IN      NS      okd417-bastion-01.okd417.olsdemo.com.
@       IN      A       127.0.0.1
@       IN      AAAA    ::1

; name servers - NS records
     IN      NS      okd417-bastion-01.okd417.olsdemo.com.


; name servers - A records
okd417-bastion-01.okd417.olsdemo.com.          IN      A       10.151.0.79

; 192.168.10.0/24 - A records
ldap-01.okd417.olsdemo.com.        IN      A      10.151.0.78

; 192.168.11.0/24 - A records
api.okd417.olsdemo.com.      IN      A      10.151.0.80
api-int.okd417.olsdemo.com.      IN      A      10.151.0.80
etcd-0.okd417.olsdemo.com.      IN      A      10.151.0.81
etcd-1.okd417.olsdemo.com.      IN      A      10.151.0.82
etcd-2.okd417.olsdemo.com.      IN      A      10.151.0.83
bootstrap-01.okd417.olsdemo.com.      IN      A      10.151.0.89
master-01.okd417.olsdemo.com.      IN      A      10.151.0.81
master-02.okd417.olsdemo.com.      IN      A      10.151.0.82
master-03.okd417.olsdemo.com.      IN      A      10.151.0.83
worker-01.okd417.olsdemo.com.      IN      A      10.151.0.84
worker-02.okd417.olsdemo.com.      IN      A      10.151.0.85
worker-03.okd417.olsdemo.com.      IN      A      10.151.0.86
worker-04.okd417.olsdemo.com.      IN      A      10.151.0.87
;worker-05.cp1.openlandscape.cloud.      IN      A      192.168.11.25
;worker-06.cp1.openlandscape.cloud.      IN      A      192.168.11.26
;worker-07.cp1.openlandscape.cloud.      IN      A      192.168.11.27
;ceph-mon-01.cp1.openlandscape.cloud.        IN      A      192.168.11.51
;ceph-mon-02.cp1.openlandscape.cloud.        IN      A      192.168.11.52
;ceph-mon-03.cp1.openlandscape.cloud.        IN      A      192.168.11.53
;ceph-osd-01.cp1.openlandscape.cloud.        IN      A      192.168.11.81
;ceph-osd-02.cp1.openlandscape.cloud.        IN      A      192.168.11.82
;ceph-osd-03.cp1.openlandscape.cloud.        IN      A      192.168.11.83
;*.apps.cp1.openlandscape.cloud.                  IN    A       192.168.11.21   
;*.apps.cp1.openlandscape.cloud.           IN    A       192.168.11.22
;*.apps.cp1.openlandscape.cloud.           IN    A       192.168.11.23
;*.apps.cp1.openlandscape.cloud.           IN    A       192.168.11.24
;;*.apps.cp1.openlandscape.cloud.           IN    A       192.168.11.25
;;*.apps.cp1.openlandscape.cloud.           IN    A       192.168.11.26
;*.apps.cp1.openlandscape.cloud.           IN    A       192.168.11.27
*.apps.okd417.olsdemo.com.         IN    A       10.151.0.90
