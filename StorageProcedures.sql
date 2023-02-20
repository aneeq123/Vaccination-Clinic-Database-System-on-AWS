-- Create Procedure 'uspClientsNameWithPattern'

DELIMITER $$
CREATE PROCEDURE uspClientsNameWithPattern(IN pattern VARCHAR(255))
BEGIN
  SELECT FirstName, LastName FROM Clients WHERE FirstName LIKE CONCAT('%', pattern, '%');
END $$
DELIMITER ;

# execute the stored procedure

-- Executing the Procedure
CALL uspClientsNameWithPattern('n');


--  Create Procedure 'uspClientsCount'

DELIMITER //
CREATE PROCEDURE uspClientsCount(IN p_nationality VARCHAR(30), OUT p_nationality_count INT)
BEGIN
    SELECT COUNT(*) INTO p_nationality_count FROM Clients WHERE Nationality = p_nationality;
END //
DELIMITER ;


-- Executing the Procedure

SET @NationalityCount = 0;
CALL uspClientsCount('Irish', @NationalityCount);
SELECT @NationalityCount AS 'Clients in Irish';

	
--  Create Procedure 'uspInvoicesVAT'

CDELIMITER //
CREATE PROCEDURE uspInvoicesVAT(IN p_vat DECIMAL(15,2))
BEGIN
    SELECT Clients.FirstName, Clients.LastName, Invoices.InvoiceNB, Invoices.VaccinePrice, (Invoices.VAT + p_vat) AS 'VAT Increased'
    FROM Clients JOIN Invoices ON Clients.ClientID = Invoices.ClientID;
END //
DELIMITER ;


	
-- Executing the Procedure

CALL uspInvoicesVAT(0.05);



-- Create Procedure 'uspInvoiceVaccinePrice'
	
DELIMITER //
CREATE PROCEDURE uspInvoicesVaccinePrice(IN p_vaccine_price DECIMAL(18,2))
BEGIN
    SELECT Clients.FirstName, Clients.LastName, Invoices.VaccinePrice AS 'VaccinePrice less than 90 Euro'
    FROM Clients JOIN Invoices ON Clients.ClientID = Invoices.ClientID
    WHERE Invoices.VaccinePrice < p_vaccine_price;
END //
DELIMITER ;

	
	
	
-- Executing the Procedure

CALL uspInvoicesVaccinePrice(50.00);


-- Create Procedure 'uspGetMedicalStaff'
DELIMITER //

CREATE PROCEDURE uspGetMedicalStaff(IN p_StaffName NVARCHAR(50), IN p_Speciality NVARCHAR(50))
BEGIN
    SELECT StaffNB, StaffName, Speciality
    FROM MedicalStaff
    WHERE StaffName = p_StaffName AND Speciality = p_Speciality;
END //

DELIMITER ;

	
-- Executing the Procedure
CALL uspGetMedicalStaff('Kelly Walsh', 'Nurse');

	

	