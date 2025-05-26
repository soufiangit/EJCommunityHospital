
-- ================== SAMPLE DATA INSERTION ==================

-- PATIENT
INSERT INTO PATIENT (PatientID, Name, DOB, Gender, Address) VALUES
(1, 'Emily Johnson', '1992-07-13', 'Female', '456 Willow Ave, Elijay, GA 30540'),
(2, 'Robert Davis', '1985-11-23', 'Male', '12 Birchwood St, Elijay, GA 30540'),
(3, 'Sophia Martinez', '1978-04-05', 'Female', '987 Maple Dr, Elijay, GA 30540'),
(4, 'William Smith', '1963-03-15', 'Male', '23 Cedar Ln, Elijay, GA 30540'),
(5, 'Emma Johnson', '2003-12-10', 'Female', '789 River Rd, Elijay, GA 30540'),
(6, 'Michael Williams', '1970-02-20', 'Male', '654 Oak St, Elijay, GA 30540'),
(7, 'Olivia Brown', '1988-09-07', 'Female', '322 Pine St, Elijay, GA 30540'),
(8, 'James Lee', '1955-04-14', 'Male', '201 Maple St, Elijay, GA 30540'),
(9, 'Isabella Wilson', '1995-08-22', 'Female', '909 Lakeview Dr, Elijay, GA 30540'),
(10, 'Jacob Thomas', '2000-06-05', 'Male', '505 Summit Ave, Elijay, GA 30540');

-- PATIENT_PHONE
INSERT INTO PATIENT_PHONE (PatientID, Phone) VALUES
(1, '706-555-1234'), (1, '706-555-5678'),
(2, '706-555-9876'),
(3, '706-555-4321'),
(4, '706-555-6543'),
(5, '706-555-8765'),
(6, '706-555-3456'),
(7, '706-555-6789'),
(8, '706-555-9087'),
(9, '706-555-2345'),
(10, '706-555-5432');

-- PATIENT_EMAIL
INSERT INTO PATIENT_EMAIL (PatientID, Email) VALUES
(1, 'emily.johnson@gmail.com'),
(2, 'robert.davis@yahoo.com'),
(3, 'sophia.martinez@outlook.com'),
(4, 'william.smith@comcast.net'),
(5, 'emma.johnson@aol.com'),
(6, 'michael.williams@verizon.net'),
(7, 'olivia.brown@gmail.com'),
(8, 'james.lee@yahoo.com'),
(9, 'isabella.wilson@gmail.com'),
(10, 'jacob.thomas@hotmail.com');

-- BED
INSERT INTO BED (BedNumber, PatientID) VALUES
(101, 1), (102, 2), (103, 3), (104, 4), (105, 5),
(106, 6), (107, 7), (108, 8), (109, 9), (110, 10);

-- PERSONNEL
INSERT INTO PERSONNEL (PersonnelID, Name, HireDate, Position, Address) VALUES
(1, 'Dr. David Thompson', '2008-03-14', 'Cardiologist', '225 Medical Park, Elijay, GA 30540'),
(2, 'Nurse Linda Blake', '2012-09-10', 'Nurse', '345 Wellness Way, Elijay, GA 30540'),
(3, 'Lab Technician Michael Brown', '2016-11-05', 'Technician', '789 Health Blvd, Elijay, GA 30540'),
(4, 'Dr. Susan Lee', '2015-02-12', 'Radiologist', '122 Radiology Ln, Elijay, GA 30540'),
(5, 'Nurse Patricia Green', '2011-04-30', 'Nurse', '678 Care St, Elijay, GA 30540'),
(6, 'Dr. James White', '2007-07-18', 'Neurologist', '321 Neuro Blvd, Elijay, GA 30540'),
(7, 'Rehab Therapist Jane Miller', '2018-06-22', 'Rehabilitation Therapist', '564 Rehab Rd, Elijay, GA 30540'),
(8, 'Counselor Daniel Garcia', '2013-03-03', 'Counselor', '453 Wellness Rd, Elijay, GA 30540'),
(9, 'Dr. Mark Evans', '2009-12-10', 'Oncologist', '789 Cancer Dr, Elijay, GA 30540'),
(10, 'Nurse Nancy Adams', '2010-11-09', 'Nurse', '345 Care Ln, Elijay, GA 30540');
