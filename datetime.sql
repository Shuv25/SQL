show databases;

use datapreprocessing;

CREATE TABLE events (
    eventid INT PRIMARY KEY,
    eventname VARCHAR(100),
    eventdate DATE
);

INSERT INTO events (eventid, eventname, eventdate) VALUES 
(1, 'Conference 2023', '2023-09-10'),
(2, 'Workshop on AI', '2023-10-15'),
(3, 'Webinar on Data Science', '2023-11-05'),
(4, 'Tech Expo', '2023-12-01'),
(5, 'Networking Event', '2023-12-15');

select
	eventname,
    year(eventdate),
    month(eventdate)
from
	events;
    
CREATE TABLE appointment (
    appointmentid INT PRIMARY KEY,
    appointment_desc VARCHAR(255),
    appointmenttime DATETIME
);

INSERT INTO appointment (appointmentid, appointment_desc, appointmenttime) VALUES 
(1, 'Dentist Appointment', '2023-06-25 10:30:00'),
(2, 'Team Meeting', '2023-06-26 14:00:00'),
(3, 'Project Presentation', '2023-06-27 09:00:00'),
(4, 'Client Call', '2023-06-28 11:00:00'),
(5, 'Annual Health Checkup', '2023-06-29 08:30:00');

select
	appointment_desc,
    time(appointmenttime) as Appointmenttime_Time
from
	appointment;

CREATE TABLE scheduletask (
    taskid INT PRIMARY KEY,
    taskdesc VARCHAR(255),
    scheduled_datetime DATETIME
);

INSERT INTO scheduletask (taskid, taskdesc, scheduled_datetime) VALUES 
(1, 'System Maintenance', '2023-07-01 02:00:00'),
(2, 'Database Backup', '2023-07-02 03:00:00'),
(3, 'Code Review', '2023-07-03 10:00:00'),
(4, 'Team Standup Meeting', '2023-07-04 09:00:00'),
(5, 'Project Deadline', '2023-07-05 17:00:00');


select
	taskdesc,
    timestamp(scheduled_datetime) as Time_Stamp
from
	scheduletask;
    
select current_date();

select now();

select 
	taskdesc,
    scheduled_datetime,
    datediff(now(),scheduled_datetime) as Days_until_Deadline
from 
	scheduletask;


    
