$TTL    604800
@       IN      SOA     okd4-services.dmi3lab.ml. admin.dmi3lab.ml. (
                  1     ; Serial
             604800     ; Refresh
              86400     ; Retry
            2419200     ; Expire
             604800     ; Negative Cache TTL
)

; name servers - NS records
    IN      NS      okd4-services

; name servers - A records
okd4-services.dmi3lab.ml.                       IN      A     192.168.200.10

; OpenShift Container Platform Cluster - A records
okd4-bootstrap.lab.dmi3lab.ml.                  IN      A     192.168.200.12
okd4-control-plane-1.lab.dmi3lab.ml.            IN      A     192.168.200.11
okd4-worker-node-1.lab.dmi3lab.ml.              IN      A     192.168.200.21
okd4-worker-node-2.lab.dmi3lab.ml.              IN      A     192.168.200.22

; OpenShift internal cluster IPs - A records
api.lab.dmi3lab.ml.                             IN      A     192.168.200.10
api-int.lab.dmi3lab.ml.                         IN      A     192.168.200.10
*.apps.lab.dmi3lab.ml.                          IN      A     192.168.200.10
etcd-0.lab.dmi3lab.ml.                          IN      A     192.168.200.11
console-openshift-console.apps.lab.dmi3lab.ml.  IN      A     192.168.200.10
oauth-openshift.apps.lab.dmi3lab.ml.            IN      A     192.168.200.10

; OpenShift internal cluster IPs - SRV records
_etcd-server-ssl._tcp.lab.dmi3lab.ml.    86400  IN      SRV 0 10 2380    etcd-0.lab

