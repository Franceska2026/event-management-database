
-- TABLE 2: ORGANIZERS (Subtype of USERS)
CREATE TABLE ORGANIZERS (
    organizer_id INTEGER PRIMARY KEY,
    company_name TEXT,
    phone        TEXT,
    website      TEXT,
    FOREIGN KEY (organizer_id) REFERENCES USERS(user_id)
);
