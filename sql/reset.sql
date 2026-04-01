-- =============================================
-- reset.sql - Drop all tables to start over
-- Run ONLY if you want to delete everything
-- Drop children first (FK constraint order)
-- =============================================

DROP TABLE IF EXISTS PAYMENTS;
DROP TABLE IF EXISTS REGISTRATIONS;
DROP TABLE IF EXISTS EVENTS;
DROP TABLE IF EXISTS ORGANIZERS;
DROP TABLE IF EXISTS ATTENDEES;
DROP TABLE IF EXISTS VENUES;
DROP TABLE IF EXISTS USERS;
