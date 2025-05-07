# Informasjon om PC, settings, firewall, users, configurations etc

# Start
- [Info](#Info)
- [Pc-informasjon](#Pc-informasjon)
- [Teknisk](#Teknisk)
- [Sikkerhet](#sikkerhet)

---

## Info
Info/notater

192.168.0. 0-30 for servere

msys shell if closed 

g++/g--/gdb version

Kan jeg ha port forwarding på min ruter

## Teknisk
Server

Brukernavn: Administrator
Passord: Gjemt i ENV. fil 

Wifi/Nettverk

Network navn: StemForGratisLunsj
Passord: Natten13
Admin: Gjemt i ENV fil

Pi change

sudo nano /etc/dhcpcd.conf

sudo nano /etc/dnsmasq.conf

# IP greier

- Windows servere

Main: 192.168.9.15
Also used as secondary DNS^
Backup: 192.168.9.34

- Raspberry Pi

Pi, DNS, WEBSITE:  10.2.3.56 

Pi IP: 192.168.9.32

PI DNS: 192.168.9.20

- Usikker
      Pi uses 192.168.9.31 as local ip - WRONG
      Local DNS/router:	192.168.9.33 
      Domain Name	kubenanarchy.org
      Local Server IP:   (external to connect server,website)
      internal 192.168.9.15
      backupserver : 192.168.9.34
       192.168.9.31 /.33

- IP mening

Internal users use the domain, external users use public IP.

Inside router has wifi	        DNS resolves kubenanarchy.org to 10.2.3.55	        Domain works
Outside router                     Must connect to 10.2.3.55 directly              domain wont resolve

[ Larger Network (shared) ]
          ↓
    [ Your Router - 192.168.9.1 ]
          ↓
          ├───> Server ( 10.2.3.55) - Minecraft + DNS
          └───> Raspberry Pi - Website + DNS services

MC-Server

## PC-informasjon 

HP 260 G3 I5, 16 GB RAMN.
Hosten en minecraft server med 12 allocated ram, og en nettside.


## Sikkerhet

-Viktige passord


-Generelle passord

Har ikke lagret passord på browser,

-Firewall