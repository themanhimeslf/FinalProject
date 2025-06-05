listen-address=192.168.9.20
# only answer queries on pi dns ip
no-resolv
server=192.168.9.20
server=192.168.9.15

#sens queries to dns servers google etc
strict-order
# ignore other idrectives other dns setings
address=/kubenanarchy.org/192.168.9.20
address=/www.kubenanarchy.org/192.168.9.20
address=/mc.kubenanarchy.org/192.168.9.15

sudo nano /etc/dnsmasq.conf