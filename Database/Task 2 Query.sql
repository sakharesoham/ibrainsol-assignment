
SELECT p.PatID,p.firstname,p.lastname,p.gender,a.apptdate FROM patientinfo$ p
JOIN appointmentinfo$ a ON p.PatID=a.patid 
WHERE apptdate <= GETDATE();
