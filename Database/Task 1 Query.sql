
SELECT clinicid,YEAR(a.apptdate),DATENAME(MONTH,a.apptdate), COUNT(*) FROM appointmentinfo$ a
GROUP BY clinicid,YEAR(a.apptdate),DATENAME(MONTH,a.apptdate);
