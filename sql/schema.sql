
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
-- TABLE 4: VENUES
CREATE TABLE VENUES (
    venue_id   INTEGER PRIMARY KEY AUTOINCREMENT,
    venue_name TEXT    NOT NULL,
    city       TEXT    NOT NULL,
    address    TEXT,
    capacity   INTEGER NOT NULL
);
