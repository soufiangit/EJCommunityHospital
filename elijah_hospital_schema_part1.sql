
-- Elijah Community Hospital Database Schema and Sample Data
-- ================== TABLE CREATION ==================

-- PATIENT
CREATE TABLE PATIENT (
    PatientID INT PRIMARY KEY,
    Name NVARCHAR(100),
    DOB DATE,
    Gender NVARCHAR(10),
    Address NVARCHAR(255)
);

-- PATIENT_PHONE
CREATE TABLE PATIENT_PHONE (
    PatientID INT,
    Phone NVARCHAR(15),
    PRIMARY KEY (PatientID, Phone),
    FOREIGN KEY (PatientID) REFERENCES PATIENT(PatientID)
);

-- PATIENT_EMAIL
CREATE TABLE PATIENT_EMAIL (
    PatientID INT,
    Email NVARCHAR(100),
    PRIMARY KEY (PatientID, Email),
    FOREIGN KEY (PatientID) REFERENCES PATIENT(PatientID)
);

-- BED
CREATE TABLE BED (
    BedNumber INT PRIMARY KEY,
    PatientID INT,
    FOREIGN KEY (PatientID) REFERENCES PATIENT(PatientID)
);

-- PERSONNEL
CREATE TABLE PERSONNEL (
    PersonnelID INT PRIMARY KEY,
    Name NVARCHAR(100),
    HireDate DATE,
    Position NVARCHAR(50),
    Address NVARCHAR(255)
);

-- PERSONNEL_PHONE
CREATE TABLE PERSONNEL_PHONE (
    PersonnelID INT,
    Phone NVARCHAR(15),
    PRIMARY KEY (PersonnelID, Phone),
    FOREIGN KEY (PersonnelID) REFERENCES PERSONNEL(PersonnelID)
);

-- PERSONNEL_EMAIL
CREATE TABLE PERSONNEL_EMAIL (
    PersonnelID INT,
    Email NVARCHAR(100),
    PRIMARY KEY (PersonnelID, Email),
    FOREIGN KEY (PersonnelID) REFERENCES PERSONNEL(PersonnelID)
);

-- DEPARTMENT
CREATE TABLE DEPARTMENT (
    DepartmentCode INT PRIMARY KEY,
    DepartmentName NVARCHAR(100)
);

-- TREATMENT
CREATE TABLE TREATMENT (
    TreatmentCode INT PRIMARY KEY,
    TreatmentDescription NVARCHAR(255),
    TreatmentCost DECIMAL(10, 2)
);

-- TEST
CREATE TABLE TEST (
    TestCode INT PRIMARY KEY,
    TestDescription NVARCHAR(255),
    TestCost DECIMAL(10, 2)
);

-- PATIENT_TREATMENT
CREATE TABLE PATIENT_TREATMENT (
    PatientID INT,
    TreatmentCode INT,
    TreatmentDate DATE,
    Dosage NVARCHAR(50),
    Duration NVARCHAR(50),
    PRIMARY KEY (PatientID, TreatmentCode),
    FOREIGN KEY (PatientID) REFERENCES PATIENT(PatientID),
    FOREIGN KEY (TreatmentCode) REFERENCES TREATMENT(TreatmentCode)
);

-- PATIENT_TEST
CREATE TABLE PATIENT_TEST (
    PatientID INT,
    TestCode INT,
    TestDate DATE,
    Result NVARCHAR(255),
    TestLocation NVARCHAR(100),
    PRIMARY KEY (PatientID, TestCode),
    FOREIGN KEY (PatientID) REFERENCES PATIENT(PatientID),
    FOREIGN KEY (TestCode) REFERENCES TEST(TestCode)
);

-- PATIENT_PERSONNEL
CREATE TABLE PATIENT_PERSONNEL (
    PatientID INT,
    PersonnelID INT,
    PRIMARY KEY (PatientID, PersonnelID),
    FOREIGN KEY (PatientID) REFERENCES PATIENT(PatientID),
    FOREIGN KEY (PersonnelID) REFERENCES PERSONNEL(PersonnelID)
);
