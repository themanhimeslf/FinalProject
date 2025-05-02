-- Use the same database
USE website_db;

-- News table to store updates
CREATE TABLE IF NOT EXISTS NEWS (
    ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    AdminID VARCHAR(50) NOT NULL,         -- Links to the ADMIN table
    Month VARCHAR(15),
    MMDDYY VARCHAR(31),                     -- Date in MMDDYY format
    Title VARCHAR(100),
    Content TEXT,
--    IsAdmin BOOLEAN DEFAULT FALSE,        -- Could be used for display flags or permissions
    PostedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (AdminID) REFERENCES ADMIN(AdminID)
);

-- Optional: Initial test post
INSERT INTO NEWS (AdminID, Month, DDMM, Title, Content, IsAdmin)
VALUES ('AD101', 'April', '2404', 'Site Launch', 'We are live!', TRUE);


--AdminID links to the admin who posted.

--IsAdmin might not be necessary unless planning to allow other user types later.

--PostedAt automatically records when news was submitted.


