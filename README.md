# Database System for Vaccination Clinic on AWS

# Summary

This is a database system for a vaccination clinic based on Tropical Medical Bureau. The clinic provides travel advice and vaccinations to clients. The database system features clients' records, medical staff records, appointments records, invoice records, consultations records, and administers records. It allows doctors or medical staff to view the appointment lists, including the schedule time and schedule date, as well as the list of vaccines, prescription, and travel advice of each client that had their appointments in the database. The system also allows for new medical staff to be added to the database. This will show the list of medical staff names and their specialties. Administers Record is also included in the database so that it shows the list of medical staff that administer the vaccines to each client (including the consultations information). Finally, the receptionist can view the list of invoices, including the consultation fees and vaccine prices that were generated for each client.

This Database system will be hosted on an EC2 instance running MariaDB on AWS.

# Table Structures

The following tables will be included in the database system:

1. Clients: Includes client information such as name, address, and contact information.
2. Medical Staff: Includes medical staff information such as name, specialization, and contact information.
3. Appointments: Includes appointment information such as appointment date, appointment time, client ID, and medical staff ID.
4. Invoice: Includes invoice information such as invoice number, client ID, appointment ID, consultation fees, and vaccine prices.
5. Consultations: Includes consultation information such as consultation ID, medical staff ID, appointment ID, and consultation details.
6. Administers: Includes information about the administration of vaccines such as administer ID, medical staff ID, appointment ID, and vaccine information.

# Technology Used

The database system will be created using an EC2 instance running MariaDB, and SQL will be used to create the tables and perform various queries. The tools used are:

- AWS Account: Required to host the EC2 instance and the database system
-  EC2 instance: Hosting the MariaDB where the database system will be created.
-  Maria DB: Used to create and manage the database system.
-  SQL: Used to create tables and perform queries on the database system

![EC2 Instance hosting MariaDB(Interface)](https://github.com/aneeq123/Vaccination-Clinic-Database-System-on-AWS/blob/fa7f974f9cff9d2f1f97ec8c5ae3ab099082ff54/screenshot/MariaDB%20%20Interface%20(AWS).PNG)



# Why use AWS

There are several benefits to using AWS to create this database system for a vaccination clinic. First, AWS provides a highly secure and reliable platform for running the database. It offers numerous security features such as encryption at rest and in transit, network isolation, and security groups. This ensures that sensitive patient data is protected from unauthorized access.

Secondly, AWS provides flexible and scalable infrastructure that can grow with the business. With AWS, the clinic can start small and scale up as needed, without having to worry about managing the underlying infrastructure. This allows the clinic to focus on providing quality medical services to its clients.

Finally, AWS provides cost-effective solutions for running the database system. With AWS, the clinic only pays for the resources it uses, and can easily scale up or down as needed. This ensures that the clinic can provide quality services without breaking the bank.

In summary, creating a database system for a vaccination clinic on AWS provides a highly secure, reliable, scalable, and cost-effective solution for managing patient data
