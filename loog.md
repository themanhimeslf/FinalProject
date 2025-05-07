Bare til å vise problem og problemlæsning

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