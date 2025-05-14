# FinalProject - Tverfaglig prosjekt

Dette prosjektet har jeg en Minecraft server og en nettside for det har jeg


Inneholder --

HP 260 G3 I5 med oppgradert ram til 16GB,
Rasserry Pi,
Ruter,
Minecraft server, Nettside,
HTML & CSS, Python, Flask, Javaskript,
DNS, AD DS, DHCP
Statisk IP, Konfigurert firewall, Settings Porter,
Scripts og annet kode.

Hva komponentene brukes til --

HP 260 – Host for Minecraft-server, AD DS, DHCP og potensielt nettsiden,
Raspberry Pi – DNS og muligens også host for nettsiden,
Ruter – Internett-tilkobling, port forwarding og brannmur.

Basis Ide-en --

Hvis folk bruker IP adressen kan de logge inn på nettsiden og serveren.

Hvis de er tilkoblet nettet kan de bruke domenen til å gjøre det.


## MariaDB commands SQL
  - [Database Commands](#database-level-commands)
  - [Table Commands](#table-level-commands)
  - [Manipuler data](#manipuler-datagreier)
    - [](#)
      - [](#)
    

Relevant CMDS
---

 Access mariaDB

    mariadb -u root -p
 show privs

    show grants;

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

    nano Eula.txt
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



