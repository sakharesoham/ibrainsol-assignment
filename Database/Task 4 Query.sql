
SELECT t.proceduretype, cl.clinicname AS Clinic, YEAR(ap.apptdate) AS Year, DATENAME(MONTH,ap.apptdate) AS Month, SUM(t.amount) AS Amount
FROM transactioninfo$ t
JOIN clinicinfo$ cl ON t.clinicid = cl.clinicid
JOIN appointmentinfo$ ap ON cl.clinicid = ap.clinicid
GROUP BY proceduretype, cl.clinicname, YEAR(ap.apptdate), DATENAME(MONTH,ap.apptdate);
