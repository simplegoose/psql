/* Database schema to keep the structure of entire database. */

CREATE DATABASE vet_clinic;

\c vet_clinic;

CREATE TABLE animals (
    ID SERIAL PRIMARY KEY, 
    NAME TEXT, 
    DOB DATE, 
    ESCAPE_ATTEMPTS INT, 
    NEUTERED BOOLEAN, 
    WEIGHT_KG DECIMAL
);

ALTER TABLE animals ADD SPECIES TEXT;