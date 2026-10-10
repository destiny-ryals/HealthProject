CREATE DATABASE SYSTEM;

  CREATE TABLE Patients (
    PatientID INTEGER PRIMARY KEY,
    FirstName VARCHAR(255) NOT NULL,
    LastName VARCHAR(255) NOT NULL,
    DOB DATE NOT NULL,
    BloodType TEXT NOT NULL CHECK (
        BloodType IN (
            'A Positive', 'A Negative',
            'B Positive', 'B Negative',
            'AB Negative', 'AB Positive',
            'O Positive', 'O Negative'
        )
    ),
    Genotype TEXT NOT NULL CHECK (
        Genotype IN ('AA', 'AS', 'SS', 'SC', 'SB')
    )
);

CREATE TABLE Medications (
    MedicationID INTEGER PRIMARY KEY,
    PatientID INTEGER NOT NULL,
    Medication VARCHAR(255) NOT NULL,
    dosage_mg DECIMAL(10, 3) NOT NULL,
    Frequency VARCHAR(255) NOT NULL,
    FOREIGN KEY (PatientID)
        REFERENCES Patients(PatientID)
);

INSERT INTO Patients (PatientID, FirstName, LastName, DOB, BloodType, GenoType) 
VALUES (1,'John', 'Doe', '2002-02-04', 'A Positive', 'SC');

INSERT INTO Medications (MedicationID ,PatientID, Medication, dosage_mg, Frequency) 
VALUES (1,1,'Folic Acid','1','Once daily');
