/* Populate database with sample data. */

INSERT INTO animals(ID, NAME, DOB, ESCAPE_ATTEMPTS, NEUTERED, WEIGHT_KG) VALUES (01, 'Charmander', '2020-02-08', 0, false, -11.0);
INSERT INTO animals(ID, NAME, DOB, ESCAPE_ATTEMPTS, NEUTERED, WEIGHT_KG) VALUES (02, 'Plantmon', '2021-02-08', 2, true, -5.7);
INSERT INTO animals(ID, NAME, DOB, ESCAPE_ATTEMPTS, NEUTERED, WEIGHT_KG) VALUES (03, 'Squirtle', '1993-04-02', 3, false, -12.13);
INSERT INTO animals(ID, NAME, DOB, ESCAPE_ATTEMPTS, NEUTERED, WEIGHT_KG) VALUES (04, 'Angemon', '2005-06-12', 1, true, -45.0);
INSERT INTO animals(ID, NAME, DOB, ESCAPE_ATTEMPTS, NEUTERED, WEIGHT_KG) VALUES (05, 'Boarmon', '2005-06-07', 7, true, 20.4);
INSERT INTO animals(ID, NAME, DOB, ESCAPE_ATTEMPTS, NEUTERED, WEIGHT_KG) VALUES (06, 'Blossom', '1998-10-13', 3, true, 17.0);
INSERT INTO animals(ID, NAME, DOB, ESCAPE_ATTEMPTS, NEUTERED, WEIGHT_KG) VALUES (07, 'Ditto', '2022-05-14', 4, true, 22.0);

BEGIN;

UPDATE animals SET SPECIES='unspecified';

ROLLBACK;

BEGIN;

UPDATE animals SET SPECIES='digimon' WHERE name LIKE '%mon';
UPDATE animals SET SPECIES='pokemon' WHERE species IS NULL;

COMMIT;

BEGIN;

DELETE FROM animals;

ROLLBACK;

BEGIN;

DELETE FROM animals WHERE dob > '2022-01-01';

SAVEPOINT del_jan_2022;

UPDATE animals SET weight_kg=weight_kg * -1;

ROLLBACK TO del_jan_2022;

UPDATE animals SET weight_kg=weight_kg * -1 WHERE sign(weight_kg) < 1;

COMMIT;
