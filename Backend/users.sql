-- Create the databasehvis ikke eksisterer
CREATE DATABASE IF NOT EXISTS website_db;
USE website_db;

-- Admin management
CREATE TABLE IF NOT EXISTS ADMIN (
    ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    AdminUSR VARCHAR(50) NOT NULL,      -- brukernavn
    AdminID VARCHAR(50) NOT NULL UNIQUE, -- "UNique" login id
    AdminPS VARCHAR(255) NOT NULL    -- Password (hash det )
);

-- Example admin insert (for testing)
INSERT INTO ADMIN (AdminUSR, AdminID, AdminPS)
VALUES ('ADMIN1', 'AD101', '008777cd530a0a1841a7ece0a0d8c6ffb565de517a5429d95abaa621453c799a');
-- bytt imkuben med noe bedre
-- flask route or manual insertsssss
