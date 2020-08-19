 
UPDATE patientinfo$ 
SET age = DATEDIFF(YY,birthdate,GETDATE()),
patientagegroup = CASE WHEN DATEDIFF(YY,birthdate,GETDATE()) > 18 THEN 'Adult' ELSE 'Minor' END;
				

