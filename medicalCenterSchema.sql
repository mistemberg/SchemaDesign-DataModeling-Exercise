--MEDICAL CENTER SCHEMA DESIGN--

CREATE TABLE Doctor (
    DoctorID INT PRIMARY KEY,
    FirstName VARCHAR(25),
    LastName VARCHAR(25),
    Specialization VARCHAR(50)
);

CREATE TABLE Patient (
    PatientID INT PRIMARY KEY,
    FirstName VARCHAR(25),
    LastName VARCHAR(25),
    DateOfBirth DATE
);

CREATE TABLE Visit (
    VisitID INT PRIMARY KEY,
    PatientID INT,
    DoctorID INT,
    VisitDate DATE,
    Diagnosis TEXT,
    FOREIGN KEY (PatientID) REFERENCES Patient(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctor(DoctorID)
);

CREATE TABLE Disease (
    DiseaseID INT PRIMARY KEY,
    Name VARCHAR(25),
    Description TEXT
);

CREATE TABLE Diagnosis (
    DiagnosisID INT PRIMARY KEY,
    DiseaseID INT,
    VisitID INT,
    FOREIGN KEY (DiseaseID) REFERENCES Disease(DiseaseID),
    FOREIGN KEY (VisitID) REFERENCES Visit(VisitID)
);
