-- Create the databasehvis ikke eksisterer
CREATE DATABASE IF NOT EXISTS website_db;
USE website_db;

-- Admin management
CREATE TABLE IF NOT EXISTS ADMIN (
    ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    AdminUSR VARCHAR(50) NOT NULL,      -- Username (display name)
    AdminID VARCHAR(50) NOT NULL UNIQUE, -- "UNique" login id
    AdminPS VARCHAR(255) NOT NULL WITH caching_sha2_password BY;       -- Password (hash det )
);

-- Example admin insert (for testing)
INSERT INTO ADMIN (AdminUSR, AdminID, AdminPS)
VALUES ('ADMIN1', 'AD101', 'IMKUBEN1337!');
-- Replace 'IMKUBEN1337!' with a hashed version in production
--bcrypt or similar to hash AdminPS before storing.

--Flask route for new admin registration or only allow manual insert for security.

