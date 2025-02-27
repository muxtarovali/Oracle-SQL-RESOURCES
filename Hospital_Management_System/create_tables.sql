CREATE TABLE Patients (
    PatientID NUMBER PRIMARY KEY,
    FirstName VARCHAR2(100),
    LastName VARCHAR2(100),
    DateOfBirth DATE,
    Gender VARCHAR2(10),
    Phone VARCHAR2(15),
    Address VARCHAR2(255)
);

CREATE TABLE Doctors (
    DoctorID NUMBER PRIMARY KEY,
    FirstName VARCHAR2(100),
    LastName VARCHAR2(100),
    Specialty VARCHAR2(100),
    Phone VARCHAR2(15)
);

CREATE TABLE Appointments (
    AppointmentID NUMBER PRIMARY KEY,
    PatientID NUMBER,
    DoctorID NUMBER,
    AppointmentDate DATE,
    Status VARCHAR2(20 CHECK (Status IN ('Scheduled', 'Completed', 'Canceled'))),
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)
);

CREATE TABLE Treatments (
    TreatmentID NUMBER PRIMARY KEY,
    AppointmentID NUMBER,
    TreatmentDescription VARCHAR2(255),
    TreatmentDate DATE,
    FOREIGN KEY (AppointmentID) REFERENCES Appointments(AppointmentID)
);