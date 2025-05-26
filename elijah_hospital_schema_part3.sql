
-- CONTINUED: SAMPLE DATA INSERTION

-- PERSONNEL_PHONE
INSERT INTO PERSONNEL_PHONE (PersonnelID, Phone) VALUES
(1, '706-555-2345'),
(2, '706-555-3456'),
(3, '706-555-4567'),
(4, '706-555-5678'),
(5, '706-555-6789'),
(6, '706-555-7890'),
(7, '706-555-8901'),
(8, '706-555-9012'),
(9, '706-555-0123'),
(10, '706-555-1234');

-- PERSONNEL_EMAIL
INSERT INTO PERSONNEL_EMAIL (PersonnelID, Email) VALUES
(1, 'david.thompson@hospital.com'),
(2, 'linda.blake@hospital.com'),
(3, 'michael.brown@hospital.com'),
(4, 'susan.lee@hospital.com'),
(5, 'patricia.green@hospital.com'),
(6, 'james.white@hospital.com'),
(7, 'jane.miller@hospital.com'),
(8, 'daniel.garcia@hospital.com'),
(9, 'mark.evans@hospital.com'),
(10, 'nancy.adams@hospital.com');

-- DEPARTMENT
INSERT INTO DEPARTMENT (DepartmentCode, DepartmentName) VALUES
(1, 'Cardiology'),
(2, 'Radiology'),
(3, 'Neurology'),
(4, 'Oncology'),
(5, 'Rehabilitation'),
(6, 'Counseling');

-- TREATMENT
INSERT INTO TREATMENT (TreatmentCode, TreatmentDescription, TreatmentCost) VALUES
(1, 'Heart Bypass Surgery', 75000.00),
(2, 'MRI Scan', 1200.00),
(3, 'Physical Therapy', 300.00),
(4, 'Chemotherapy', 55000.00),
(5, 'Radiation Therapy', 20000.00),
(6, 'Cognitive Behavioral Therapy', 150.00);

-- TEST
INSERT INTO TEST (TestCode, TestDescription, TestCost) VALUES
(1, 'Blood Test', 200.00),
(2, 'X-ray', 300.00),
(3, 'Electrocardiogram (ECG)', 500.00),
(4, 'CT Scan', 2500.00),
(5, 'EEG (Electroencephalogram)', 1500.00);

-- PATIENT_TREATMENT
INSERT INTO PATIENT_TREATMENT (PatientID, TreatmentCode, TreatmentDate, Dosage, Duration) VALUES
(1, 1, '2024-10-01', 'N/A', '5 Hours'),
(2, 2, '2024-09-29', 'N/A', '1 Hour'),
(3, 3, '2024-10-02', 'Moderate', '2 Months'),
(4, 4, '2024-09-15', 'High', '6 Months'),
(5, 5, '2024-08-25', 'Standard', '1 Month'),
(6, 6, '2024-09-10', 'Low', '12 Weeks');

-- PATIENT_TEST
INSERT INTO PATIENT_TEST (PatientID, TestCode, TestDate, Result, TestLocation) VALUES
(1, 1, '2024-09-30', 'Normal', 'Lab A'),
(2, 2, '2024-09-25', 'Clear', 'Radiology Dept'),
(3, 3, '2024-10-03', 'Irregular', 'Cardiology Dept'),
(4, 4, '2024-08-12', 'Abnormal', 'CT Room'),
(5, 5, '2024-07-15', 'Normal', 'Neurology Lab'),
(6, 1, '2024-09-05', 'High', 'Lab B');

-- PATIENT_PERSONNEL
INSERT INTO PATIENT_PERSONNEL (PatientID, PersonnelID) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);
