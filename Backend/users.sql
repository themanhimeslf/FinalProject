-- Create the database if it doesn't exist
CREATE DATABASE IF NOT EXISTS website_db;
USE website_db;

-- Admin management
CREATE TABLE IF NOT EXISTS ADMIN (
    ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    AdminUSR VARCHAR(50) NOT NULL,      -- Username (display name)
    AdminID VARCHAR(50) NOT NULL UNIQUE, -- Unique login identifier
    AdminPS VARCHAR(255) NOT NULL       -- Password (should be hashed)
);

-- Example admin insert (for testing)
INSERT INTO ADMIN (AdminUSR, AdminID, AdminPS)
VALUES ('ADMIN1', 'AD101', 'IMKUBEN1337!');
-- Note: Replace 'IMKUBEN1337!' with a hashed version in production
--Use bcrypt or similar to hash AdminPS before storing.

--You may later build a Flask route for new admin registration or only allow manual insert for security.

