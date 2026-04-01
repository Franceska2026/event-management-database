-- =============================================
-- sample_data.sql - Insert representative data
-- Run AFTER schema.sql
-- =============================================

-- USERS (IDs 1-5 = Organizers, IDs 6-10 = Attendees)
INSERT INTO USERS (user_id,first_name,last_name,email,created_at) VALUES
(1,'Alice','Morgan','alice.morgan@gmail.com','2024-01-10'),
(2,'Brian','Scott','brian.scott@outlook.com','2024-01-15'),
(3,'Clara','Nguyen','clara.nguyen@yahoo.com','2024-02-01'),
(4,'David','Patel','david.patel@gmail.com','2024-02-20'),
(5,'Emilia','Ross','emilia.ross@events.com','2024-03-05'),
(6,'Frank','Torres','frank.torres@gmail.com','2024-03-10'),
(7,'Grace','Kim','grace.kim@hotmail.com','2024-03-15'),
(8,'Henry','Brown','henry.brown@gmail.com','2024-04-01'),
(9,'Irene','Adams','irene.adams@yahoo.com','2024-04-10'),
(10,'James','Wilson','james.wilson@gmail.com','2024-04-20');
-- ORGANIZERS
INSERT INTO ORGANIZERS (organizer_id,company_name,phone,website) VALUES
(1,'MorganEvents LLC','212-555-0101','www.morganevents.com'),
(2,'ScottMedia Group','312-555-0202','www.scottmedia.com'),
(3,'Nguyen Productions','415-555-0303','www.nguyenprod.com'),
(4,'Patel Conferences','718-555-0404','www.patelconf.com'),
(5,'Ross Entertainment','646-555-0505','www.rossentertain.com');

-- ATTENDEES
INSERT INTO ATTENDEES (attendee_id,date_of_birth,phone,city) VALUES
(6,'1990-06-15','646-555-1001','New York'),
(7,'1995-11-22','312-555-1002','Chicago'),
(8,'1988-03-09','415-555-1003','San Francisco'),
(9,'2000-07-30','718-555-1004','Brooklyn'),
(10,'1993-12-01','617-555-1005','Boston');

-- VENUES
INSERT INTO VENUES (venue_id,venue_name,city,address,capacity) VALUES
(1,'Madison Square Garden','New York','4 Pennsylvania Plaza',20000),
(2,'McCormick Place','Chicago','2301 S King Dr',25000),
(3,'Moscone Center','San Francisco','747 Howard St',15000),
(4,'Brooklyn Expo Center','Brooklyn','72 Noble St',3000),
(5,'Boston Convention Center','Boston','415 Summer St',18000);
-- EVENTS
INSERT INTO EVENTS
(event_id,event_name,event_date,description,category,
 ticket_price,status,organizer_id,venue_id) VALUES
(1,'Tech Summit 2024','2024-06-15','Annual tech conference',
 'Conference',150.00,'Completed',1,1),
(2,'Music Festival NYC','2024-07-20','Outdoor music festival',
 'Music',75.00,'Completed',2,4),
(3,'Business Innovation Expo','2024-08-10','Business networking',
 'Expo',200.00,'Completed',3,2),
(4,'AI & Data Science Forum','2025-03-22','AI and machine learning',
 'Conference',120.00,'Upcoming',4,3),
(5,'Career Fair Spring 2025','2025-04-05','Connect with employers',
 'Career',0.00,'Upcoming',5,5);

-- REGISTRATIONS
INSERT INTO REGISTRATIONS
(registration_id,attendee_id,event_id,registration_date,status) VALUES
(1,6,1,'2024-05-01','Confirmed'),
(2,7,1,'2024-05-05','Confirmed'),
(3,8,2,'2024-06-10','Confirmed'),
(4,9,3,'2024-07-01','Confirmed'),
(5,10,3,'2024-07-05','Cancelled'),
(6,6,4,'2025-01-15','Confirmed'),
(7,7,5,'2025-02-01','Confirmed'),
(8,8,5,'2025-02-10','Waitlisted');

-- PAYMENTS
INSERT INTO PAYMENTS
(payment_id,registration_id,amount,payment_date,
 payment_method,payment_status) VALUES
(1,1,150.00,'2024-05-02','Credit Card','Paid'),
(2,2,150.00,'2024-05-06','PayPal','Paid'),
(3,3,75.00,'2024-06-11','Debit Card','Paid'),
(4,4,200.00,'2024-07-02','Credit Card','Paid'),
(5,5,200.00,'2024-07-06','Credit Card','Refunded'),
(6,6,120.00,'2025-01-16','PayPal','Paid'),
(7,7,0.00,'2025-02-02','N/A','Paid');
