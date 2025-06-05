network:
  version: 2
  ethernets:
    eth0:
      dhcp4: no
      addresses:
        - 192.168.9.20/24
      gateway4: 192.168.9.1
      nameservers:
        addresses:
          - 192.168.9.1


sudo nano /etc/netplan/*.yaml

sudo netplan apply

