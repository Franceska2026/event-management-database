-- TABLE 1: USERS (Supertype)
CREATE TABLE USERS (
    user_id    INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT    NOT NULL,
    last_name  TEXT    NOT NULL,
    email      TEXT    UNIQUE NOT NULL,
    created_at TEXT    DEFAULT CURRENT_DATE
);
