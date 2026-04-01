
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
-- TABLE 5: EVENTS (Central hub table)
CREATE TABLE EVENTS (
    event_id     INTEGER PRIMARY KEY AUTOINCREMENT,
    event_name   TEXT    NOT NULL,
    event_date   TEXT    NOT NULL,
    description  TEXT,
    category     TEXT,
    ticket_price REAL    DEFAULT 0,
    status       TEXT    DEFAULT 'Upcoming',
    organizer_id INTEGER NOT NULL,
    venue_id     INTEGER NOT NULL,
    FOREIGN KEY (organizer_id) REFERENCES ORGANIZERS(organizer_id),
    FOREIGN KEY (venue_id)     REFERENCES VENUES(venue_id),
    CHECK (status IN ('Upcoming','Ongoing','Completed','Cancelled'))
);
