/* Database schema to keep the structure of entire database. */

CREATE DATABASE vet_clinic;

\c vet_clinic;

CREATE TABLE animals (
    ID INT PRIMARY KEY, 
    NAME TEXT, 
    DOB DATE, 
    ESCAPE_ATTEMPTS INT, 
    NEUTERED BOOLEAN, 
    WEIGHT_KG DECIMAL
);
