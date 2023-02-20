

--- Between ----

SELECT *FROM Clients WHERE Age Between 30 and  50;



--- Distinct ---

SELECT DISTINCT Nationality FROM Clients;

--- Group By (Having) ---

SELECT COUNT(ClientID), Nationality FROM Clients GROUP BY Nationality HAVING COUNT (ClientID) > 1;



--- Join ---


SELECT Clients.ClientID, Clients.FirstName, Clients.LastName, Clients.Nationality, Appointments.ScheduleDate FROM Clients INNER JOIN Appointments ON Clients.ClientID=Appointments.ClientID;

