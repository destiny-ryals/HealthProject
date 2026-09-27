CREATE DATABASE SYSTEM;



  CREATE TABLE patients (
    PatientId int PRIMARY KEY,
    FirstName varchar(255) NOT NULL,
    LastName varchar(255) NOT NULL,
    DOB DATE NOT NULL,
    BloodType ENUM('A+','A-','B+','B-','AB-','AB+','O+','O-') NOT NULL,
    Genotype ENUM('AA','AS','SS','SC','SB') NOT NULL
);
