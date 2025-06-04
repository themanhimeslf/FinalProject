# Informasjon om PC, settings, firewall, users, configurations etc

<br>

# LEGEND

- [Teknisk](#Teknisk)
- [IP - addresser](#IP)
- [](#)
- [](#)
  
NOTES
--
Pi uses 192.168.9.31 as local ip - WRONG
      Local DNS/router:	192.168.9.33 
      Domain Name	kubenanarchy.org
      Local Server IP:   (external to connect server,website)
      internal 192.168.9.15

backupserver : 192.168.9.34
       192.168.9.31 /.33

192.168.0. 0-30 for servere,
msys shell if closed ,
g++/g--/gdb version,
Kanjeg ha port forwarding på min ruter



## Teknisk

Server
      Brukernavn: Administrator
      Passord: Gjemt i ENV. fil 

Raspberry Pi
      User: Admin
      Password: ENV. fil

Wif-fi / router
      Network navn: StemForGratisLunsj
      Passord: Natten13
      Admin: Gjemt i ENV fil


## IP

- Windows servere

   Main: 192.168.9.15
  
      Also used as secondary DNS^
- Backup: 192.168.9.34

- Raspberry Pi
  - Pi IP:
  -       192.168.9.37/20
  - DNS:
  -       192.168.9.20

- IP Legend

Internal users use the domain, external users use public IP.

+rimary DNS	Raspberry Pi (Ubuntu)	192.168.9.20	Runs dnsmasq
Secondary DNS	Windows Server 2022	192.168.9.15	Also handles DHCP
DHCP Server	Windows Server 2022	192.168.9.15	Dynamic IP management

Router	      192.168.9.1	      Gateway, DNS Forwarder
Raspberry Pi	192.168.9.20	Primary DNS/hosting
Raspberry Pi	192.168.9.31	N/A
Raspberry Pi	192.168.9.37	Dynamic IP (extra)
Windows Server	192.168.9.15	Minecraft + DHCP + Secondary DNS
Backup Server	192.168.9.34	Reserve 1maskin
MC-Server

EXTERNAL IP 10.2.3.55
also use to ssh if kuven.it


## Nyttig


sudo apt update && sudo apt upgrade -y
sudo apt install -y curl vim git


sudo apt install -y dnsmasq

sudo nano /etc/dnsmasq.conf

sudo nano /etc/mysql/mariadb.conf.d/50-server.cnf

sudo systemctl restart NAME
sudo systemctl enable NAME






## MariaDB commands SQL
  - [Database Commands](#database-level-commands)
  - [Table Commands](#table-level-commands)
  - [Manipuler data](#manipuler-datagreier)
    - [](#)
      - [](#)
    

Relevant CMDs
---


Hash
  echo -n "passord ditt" | sha256sum





 Access mariaDB

    mariadb -u root -p
 show privs

    show grants;
show users
  SELECT User, Host FROM mysql.user;

Stop DB

    sudo systemctl stop mysql
Start DB

    sudo systemctl start mysql
Restart DB

sudo systemctl restart mysql


  ## Database-level commands
  Vis databases
    
    SHOW DATABASES;
  Lag databaser 

    CREATE DATABASE database_name;
  drop/slett databaser 

    DROP DATABASE database_name;
  bruk Database 

    USE database_name;

  ## Table-level commands

  Vis tables

    SHOW TABLES;
  Lag table

   CREATE TABLE table_name (
    column1 datatype,
    column2 datatype,
   );

  Forklar Table: 

    DESCRIBE table_name; 
  or 

    EXPLAIN table_name;

  gi nytt navn til ett table

   RENAME TABLE old_table_name TO new_table_name;
  Drop/slett table

    DROP TABLE table_name;

  ## Manipuler datagreier
  Velg allerows fra en table

    SELECT * FROM table_name;
  Velg column fra table

    SELECT column1, column2 FROM table_name;
  Slett rows

    DELETE FROM table_name WHERE condition;
  slett alle rows

    DELETE FROM table_name;



## 6. Minecraft
Guide til å sette opp alt igjen hvis ting blir bricked

Ubuntu OS RPi 4b 8GB 32GB 
Either SSH or do it manually/copy paste into terminal 

## 6.1 Minecraft server JAVA 

For mesteparten ubuntu/linux men eula.txt må også justeres
1. Lag en folder for minecraft serveren (trenger ikke men nyttig)

        mkdir ~/minecraft

        cd ~/minecraft

2. Install minecraft using

    wget 'Minecraft server downloadlink'

  eller

  Bare flytt den til mappa med å downloade den fra linken selv

3. Unpack og rediger eula.txt

    Java -jar server.jar
  så

    nano Eula.txt     MÅ OGSÅ I WINDOWS
I eula bytt fra 'false' til 'true'
så ctrl + s og ctrl + x
til å lagre og gå ut av nano.

Så kan du oppdatere det du vil for ingame greier hvis du vil med
nano properties etc.

4. Start serveren

        java -Xmx1024M -Xms1024M -jar server.jar nogui
 -Xmx, -Xms to adjust amount of ram. and start the server. (fjern nogui for gui)


## 6.2 Player tracker JAVA

Create a dir in minecraft or otherwise and cd into it (make sure you have the prerequisities)
Then do this

    nano query.py
  Copy paste query.py code into there

  then create another dir and put an index.html file with

   <p><strong>{{ player_count }} Playing right now</strong></p>
  That grabs the player count from query.py 
  if you did everything correctly then

    python3 query.py
  should start a website displaying the player count
  Remember to start the minecraft server before



