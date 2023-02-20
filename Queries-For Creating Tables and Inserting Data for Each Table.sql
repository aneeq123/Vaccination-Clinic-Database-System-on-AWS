
--- Create 'Clients' Table

CREATE TABLE Clients (
ClientID int  NOT NULL AUTO_INCREMENT,
FirstName nvarchar(50) NOT NULL,
LastName nvarchar(50) NOT NULL,
Age int NOT NULL,
Address nvarchar(50) NOT NULL,
PhoneNB nvarchar(50) NOT NULL,
Email nvarchar(50) NOT NULL,
DateofBirth date NOT NULL,
Nationality varchar(30),
PRIMARY KEY(ClientID)
);


--- Create  'Appointments' Table


CREATE TABLE Appointments (
AppointmentNB int  NOT NULL AUTO_INCREMENT,
ScheduleDate datetime NOT NULL,
ClientID int NOT NULL,
PRIMARY KEY(AppointmentNB),
FOREIGN Key (ClientID) REFERENCES Clients(ClientID)
);


--- Create  'Consultations' Table


CREATE TABLE Consultations (
ConsultationNB int  NOT NULL AUTO_INCREMENT,
TravelAdvice nvarchar(50) NOT NULL,
Vaccines nvarchar(50) NOT NULL,
Prescription nvarchar(50) NOT NULL,
ClientID int NOT NULL,
PRIMARY KEY(ConsultationNB),
FOREIGN Key (ClientID) REFERENCES Clients(ClientID)
);


--- Create  'MedicalStaff' Table


CREATE TABLE MedicalStaff (
StaffNB int  NOT NULL AUTO_INCREMENT,
StaffName nvarchar(50) NOT NULL,
Speciality nvarchar(50) NOT NULL,
PRIMARY KEY(StaffNB)
);



--- Create  'Administers' Table


CREATE TABLE Administers (
AdministerNB int  NOT NULL AUTO_INCREMENT,
StaffNB int NOT NULL,
ConsultationNB int NOT NULL,
PRIMARY KEY(AdministerNB),
FOREIGN Key (StaffNB) REFERENCES MedicalStaff(StaffNB),
FOREIGN Key (ConsultationNB) REFERENCES Consultations(ConsultationNB)
);


--- Create  'Invoices' Table


CREATE TABLE Invoices (
InvoiceNB int  NOT NULL AUTO_INCREMENT,
PaymentType nvarchar(50) NOT NULL,
ConsultationFees decimal(15,2) NOT NULL,
VaccinePrice decimal(15,2) NOT NULL,
VAT decimal(15,2) NOT NULL,
ClientID int NOT NULL,
PRIMARY KEY(InvoiceNB),
FOREIGN Key (ClientID) REFERENCES Clients(ClientID)
);


--- Insert 'Clients' Records

INSERT INTO Clients 
VALUES (1,'JOHN', 'Kelly', '30', 'Barna,Co.Galway', '0865473212', 'johnkelly@gmail.com', '1987-09-03', 'Irish'),
(2,'Kelly', 'Larkin', '20', 'Westside,Co.Galway', '0874676732', 'kellylarking@gmail.com', '2002-04-08', 'British'),
(3,'Anum', 'Gardezi', '30', 'Drum East,Co.Galway', '0861463147', 'anumgardezi@gmail.com', '1992-09-03', 'Pakistani'),
(4,'Sean', 'Cahalan', '40', 'Barna,Co.Galway', '0854572156', 'seancahalan@gmail.com', '1977-10-31', 'Irish'),
(5,'Jakub', 'Lewandowski', '32', 'Ballybrit,Co.Galway', '0874426372', 'jlewandowski@outlook.com', '1990-09-03', 'Polish');



--- Insert 'Appointments' Records


INSERT INTO Appointments 
VALUES (1,'2022-09-18 10:00:00', '1'),
(2,'2022-09-18 11:30:00',  '2'),
(3,'2022-09-18 12:45:00',  '3'),
(4,'2022-09-18 14:30:00',  '4'),
(5,'2022-09-18 15:30:00',  '5');



--- Insert 'Consultations' Records

INSERT INTO Consultations 
VALUES (1,'BusinessTrip', 'Tetanus Vaccine', 'Antibiotics', '1'),
(2,'Holiday', 'Typhoid Vaccine', 'Antimalaria', '3'),
(3,'Holiday', 'Yellow Fever Vaccine', 'Antihistamine', '5'),
(4,'SportsEvent', 'Hepatitis A Vaccine', 'Antimalaria', '2'),
(5,'BusinessTrip', 'Hepatitis B Vaccine', 'Antibiotics', '4');


--- Insert 'MedicalStaff' Records

INSERT INTO MedicalStaff 
VALUES (1,'Dr. Mumtaz', 'Doctor'),
(2,'Julie O Brian', 'Nurse'),
(3,'Kelly Walsh', 'Nurse'),
(4,'Dr. Murphy', 'Doctor'),
(5,'Dr. Naughton', 'Doctor');


--- Insert 'Adminsters' Records

INSERT INTO Administers 
VALUES (1,'1', '1'),
(2,'1',  '2'),
(3,'2',  '3'),
(4,'2',  '4'),
(5,'3',  '5');



--- Insert 'Invoices' Records

INSERT INTO Invoices 
VALUES (1,'Credit Card', '10.00','50.00', '0', '3'),
(2,'Cash', '10.00', '45.00', '0', '2'),
(3,'Credit Card', '10.00', '50.00', '0', '4'),
(4,'Credit Card', '10.00', '40.00', '0', '1'),
(5,'Cash', '10.00', '45.00','0', '4');


