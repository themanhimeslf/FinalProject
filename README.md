# FinalProject - Tverfaglig prosjekt

Dette prosjektet har jeg en Minecraft server og en nettside for det har jeg

# Start
- [Ideer](#Ideer)
- [Hva jeg bruker](#Komponenter)
- [Sikkerhet](#Sikkerhet)
- [FAQ](#FAQ)
- [MVP](#MVP)

  
- ## Annet
 - [Kilder](#Kilder)
  
## Ideer
- Session-baserte innloginger for admin
- Auto lagre cart via cookies


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

## MVP

- Nettside - Som man kan tilkoble via IP ved riktig ruter
- Ruter - som fungerer
- Windows server 22 - Med DHCP, DNS
- Raspberry Pi - DNS, Nettsidehosting.
- Minecraft server ved WS22 som man kan tilkoble via IP og playercount

Nice to have
 - Rasppery pi Database
 - Windows server 22 som ekstra backup
 - 