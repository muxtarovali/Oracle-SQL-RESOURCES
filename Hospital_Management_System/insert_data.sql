INSERT INTO Patients (PatientID, FirstName, LastName, DateOfBirth, Gender, Phone, Address) VALUES (1, 'Ali', 'Mehmedov', TO_DATE('1990-01-01', 'YYYY-MM-DD'), 'Male', '5551234567', '123 Street');
INSERT INTO Patients (PatientID, FirstName, LastName, DateOfBirth, Gender, Phone, Address) VALUES (2, 'Leyla', 'Hüseynova', TO_DATE('1985-05-05', 'YYYY-MM-DD'), 'Female', '5557654321', '456 Avenue');

INSERT INTO Doctors (DoctorID, FirstName, LastName, Specialty, Phone) VALUES (1, 'Aysel', 'Quliyeva', 'Cardiology', '5559876543');
INSERT INTO Doctors (DoctorID, FirstName, LastName, Specialty, Phone) VALUES (2, 'Orxan', 'Aliyev', 'Pediatrics', '5553219876');

INSERT INTO Appointments (AppointmentID, PatientID, DoctorID, AppointmentDate, Status) VALUES (1, 1, 1, SYSDATE, 'Scheduled');

INSERT INTO Treatments (TreatmentID, AppointmentID, TreatmentDescription, TreatmentDate) VALUES (1, 1, 'Heart Checkup', SYSDATE);