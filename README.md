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

# Logg for "FinalProject"
### OBS, Dette er ikke sortert, men er fra start til hvor jeg er nå, vær OBS på at det er ikke pent språkbruk

når jeg satt opp se router


DNS,
trodde at det hadde vært en konflikt mellom nettsiden og minecraft serveren pga samme domene "kubenanarchy.org" men de bruker forskjellig porter så tror det burde gå bra

Kan ikke bruke dns som jeg ville altså med domene og sånt



Porter, DYnamic DNS, AD DS, DHCP

Dynamic dns inside router to point kubenanarchy.org to ip 

Website	80 (HTTP), 443 (HTTPS)	Apache / Nginx
Minecraft	25565       Minecraft Java Server/paper

Fant ut hvordan pga alf morten


Verden -> Kuben IKT nett - > Switch -> switch -> Router -> Server

Folk som er koblet til router nettet kan bruke kubenanarchy.org
folk utenfor router altså kuben.it og annet kan bruke ipadressen 10.2.3.55


Task scheduler, setter opp minecraft, dhcp, ad ds, scripts etc,

gjør ikke det, holder med å sette en raspberry pi med OS lite som skal hoste Nettside og gjøre DNS resolution

DHCP funka ikke, fikk ikke nett, fant ut at tror det var pga DHCP ikke var configured 

måtte lage ny scope for pi på dhcp

----to do

DNS . raspberry pi
MariaDB pi

McServer 
Starte den, konnekte til den via external IP, 
Domene etc

port forwarde den kanskje oduble nat usikker


IKKE I RUTER BRUK 10. IPEN

vet ikke engang lengre ^^

Noen tokk eller det falt ut, sd kort av Pi må sette det op igjen


19/05

En eller annen hokus pokus har greid å fjernet strømmen til raspberry pi og windows serverene mine og hele stikkkontakten
så jeg må mest sanssyneligvis starte fra scratch på raspbery pi
men jeg tror jeg kan clutche

Må bare

Opdattere PI

Installere Waitress, Python,  og flask?
og så mariadb 

må jeg putte query.py for å see playercounter til minecraft server
der hvor nettsiden er i raspberrypi i forhold til hvor windowsserveren er 
siden den bruker IP og port til å søke server for spillerer

Git clone alle filene



add til sikkerhet
    At noen eller noe skjer med raspberry pi en min
    har blitt fucket med 2+ så langt og fucket meg over


python3 -m venv venv

source venv/bin/activate
for venv actikever

pip install waitress

    pip install flask

pip install mcstatus