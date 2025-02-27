SELECT * FROM Patients;

SELECT * FROM Doctors;

SELECT p.FirstName AS PatientName, d.FirstName AS DoctorName, a.AppointmentDate, a.Status
FROM Appointments a
JOIN Patients p ON a.PatientID = p.PatientID
JOIN Doctors d ON a.DoctorID = d.DoctorID;