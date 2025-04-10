Create DATABASE IF NOT EXISTS name;
use name;

CREATE TABLE ADMIN (
    AdminUSR,
    AdminID,
    AdminPS
);

CREATE TABLE TEST (
    AdminUSR,
    Month,
    DDMM varchar(31),
    Tittel,
    Informasjon,
    admin enum ('true', DEFAULT 'false')
);


