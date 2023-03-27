/* Database schema to keep the structure of entire database. */

CREATE TABLE animals (
    ID INT PRIMARY KEY, 
    NAME TEXT, 
    DOB DATE, 
    ESCAPE_ATTEMPTS INT, 
    NEUTERED BOOLEAN, 
    WEIGHT_KG DECIMAL
);
