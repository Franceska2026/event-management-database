
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
-- TABLE 6: REGISTRATIONS (Bridge table - many-to-many)
CREATE TABLE REGISTRATIONS (
    registration_id   INTEGER PRIMARY KEY AUTOINCREMENT,
    attendee_id       INTEGER NOT NULL,
    event_id          INTEGER NOT NULL,
    registration_date TEXT    DEFAULT CURRENT_DATE,
    status            TEXT    DEFAULT 'Confirmed',
    FOREIGN KEY (attendee_id) REFERENCES ATTENDEES(attendee_id),
    FOREIGN KEY (event_id)    REFERENCES EVENTS(event_id),
    CHECK (status IN ('Confirmed','Cancelled','Waitlisted')),
    UNIQUE (attendee_id, event_id)
);
-- TABLE 7: PAYMENTS
CREATE TABLE PAYMENTS (
    payment_id      INTEGER PRIMARY KEY AUTOINCREMENT,
    registration_id INTEGER NOT NULL,
    amount          REAL    NOT NULL,
    payment_date    TEXT    DEFAULT CURRENT_DATE,
    payment_method  TEXT,
    payment_status  TEXT    DEFAULT 'Pending',
    FOREIGN KEY (registration_id) REFERENCES REGISTRATIONS(registration_id),
    CHECK (payment_status IN ('Paid','Pending','Refunded'))
);
