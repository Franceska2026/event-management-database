
-- TABLE 2: ORGANIZERS (Subtype of USERS)
CREATE TABLE ORGANIZERS (
    organizer_id INTEGER PRIMARY KEY,
    company_name TEXT,
    phone        TEXT,
    website      TEXT,
    FOREIGN KEY (organizer_id) REFERENCES USERS(user_id)
);
-- TABLE 3: ATTENDEES (Subtype of USERS)
CREATE TABLE ATTENDEES (
    attendee_id   INTEGER PRIMARY KEY,
    date_of_birth TEXT,
    phone         TEXT,
    city          TEXT,
    FOREIGN KEY (attendee_id) REFERENCES USERS(user_id)
);
