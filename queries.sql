/*Queries that provide answers to the questions from all projects.*/

SELECT * from animals WHERE NAME LIKE '%mon';
SELECT NAME FROM animals WHERE DOB>'2016-01-01' AND DOB<'2019-12-31';
SELECT NAME FROM animals WHERE NEUTERED=true AND ESCAPE_ATTEMPTS < 3;
SELECT DOB FROM animals WHERE NAME='Augmon' OR NAME='Pikachu';
SELECT NAME, ESCAPE_ATTEMPTS FROM animals WHERE WEIGHT_KG>10.5;
SELECT * FROM animals WHERE NEUTERED=true;
SELECT * FROM animals WHERE NAME!='Gabumon';

