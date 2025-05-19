# FinalProject - Tverfaglig prosjekt

Dette prosjektet har jeg en Minecraft server og en nettside for det har jeg

# Start

- [Sikkerhet](#Sikkerhet)
- [Hva jeg bruker](#Komponenter)
- [](#)
- [](#)
- [](#)
- [](#)

  
- ## Annet
 - [Kilder](#Kilder)
  
## Komponenter 

- HP 260 G3 I5 med oppgradert ram til 16GB,
- HP 260 G3 I5,
- Raspberry Pi 4,
- Ruter.
    ### Digitalt
  - Minecraft server, Nettside,
  - HTML & CSS, Python, Flask, Javaskript,
  - DNS, AD DS, DHCP
  - Endret statisk IP, Konfigurert firewall, Settings Porter,
  - Scripts og annet kode.

Hva komponentene brukes til --
- HP 260 – Host for Minecraft-server, AD DS, DHCP og potensielt nettsiden,
- Andre HP 260 - Backup
- Raspberry Pi – DNS og muligens også host for nettsiden,
- Ruter – Internett-tilkobling, port forwarding og brannmur.

Basis Ide-en --
- Hvis folk bruker IP adressen kan de logge inn på nettsiden og serveren.
- Hvis de er tilkoblet nettet kan de bruke domenen til å gjøre det.



### Sikkerhet

- Passord
      BLir gjemt i ENV. fil
      Hvis de ikker er viktige blir de vist public, nettverk osv.

- Firewall
      Port 22 åpen for SSH.

- MySQL
    Slått av remote login
