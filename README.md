# FinalProject - Tverfaglig prosjekt

Ideen til dette prosjektet er, en nettside, minecraft server, og på nettsiden kan du logge inn som admin og legge ut ting på en form "news" for hva vi bruker referer til [dette](#Komponenter) og [MVP](#MVP) ved hvordan tankeprossesen min var og hva som har endret seg referer til "loog.md"

# Start
- [MVP](#MVP)
- [Hva jeg bruker](#Komponenter)
- [Sikkerhet](#Sikkerhet)
- [FAQ](#FAQ)
  - #### Annet
      - [Kilder](#Kilder)
 
## MVP
- Nettside - Som man kan tilkoble via IP
- Ruter - som fungerer
- Windows server 22 - Med DHCP, DNS
- Raspberry Pi - DNS, Nettsidehosting.
- Minecraft server ved WS22 som man kan tilkoble via IP 

Nice to have
 - Rasppery pi Database
 - Windows server 22 som ekstra backup
 - Koble til via domain
 - Logge in som admin via mariadb
 - 

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

## Sikkerhet
- Admin passord blir gjemmet
- "Admin" for nettside blir hashet
- 


#### Windows Server 22
| Risiko              | Beskrivelse                                | Sannsynlighet | Konsekvens | Tiltak                               |
| ------------------- | ------------------------------------------ | ------------- | ---------- | ------------------------------------ |
| Fysisk tilgang      | Serveren står fysisk tilgjengelig men låst, strøm kan bli skrudd av | Middels       | Høy        | Lås serverrom. |
| Digitalt | Ingen kjente digitale angrepsoverflater    | Lav           | Lav        | Overvåk systemet generelt, task manager            |
| ------------------- | ------------------------------------------ | ------------- | ---------- | ------------------------------------ |
#### RaspberryPI

      Port 22 åpen for SSH.
      2556 åpen
| Risiko              | Beskrivelse                                | Sannsynlighet | Konsekvens | Tiltak                               |
| ------------------- | ------------------------------------------ | ------------- | ---------- | ------------------------------------ |
| Fysisk tilgang      | Noen tar SSD, skruv av strøm osv | Middels       | Høy        | Ikke så mye  |

#### MariaDB

    Slått av remote login
| Risiko              | Beskrivelse                                | Sannsynlighet | Konsekvens | Tiltak                               |
| ------------------- | ------------------------------------------ | ------------- | ---------- | ------------------------------------ |
| Digitalt via nettside | SQL inject via forms på nettside | Lav | Høy | Har ikke noe til å injecte med |


## FAQ
Hva gjøres med data og 
-  iforhold til at systemene er i Norge, følger vi Norsk lov og under personvernsloven (GDPR). Lagres informasjon på trygt og sikret ved gjeldende standarder for datasikkerhet og personvern.    

Kan jeg bruke kode eller noe annet i dette prosjektet
- Ja, dette prosjektet kan brukes fritt, men krever at du krediterer meg som opphavsperson.

Hvem kontakter jeg ved problemer?
- Send melding på [Github profilen min](https://github.com/themanhimeslf)