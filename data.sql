/* Populate database with sample data. */

INSERT INTO animals(NAME, DOB, ESCAPE_ATTEMPTS, NEUTERED, WEIGHT_KG) VALUES ('Charmander', '2020-02-08', 0, false, -11.0);
INSERT INTO animals(NAME, DOB, ESCAPE_ATTEMPTS, NEUTERED, WEIGHT_KG) VALUES ('Plantmon', '2021-02-08', 2, true, -5.7);
INSERT INTO animals(NAME, DOB, ESCAPE_ATTEMPTS, NEUTERED, WEIGHT_KG) VALUES ('Squirtle', '1993-04-02', 3, false, -12.13);
INSERT INTO animals(NAME, DOB, ESCAPE_ATTEMPTS, NEUTERED, WEIGHT_KG) VALUES ('Angemon', '2005-06-12', 1, true, -45.0);
INSERT INTO animals(NAME, DOB, ESCAPE_ATTEMPTS, NEUTERED, WEIGHT_KG) VALUES ('Boarmon', '2005-06-07', 7, true, 20.4);
INSERT INTO animals(NAME, DOB, ESCAPE_ATTEMPTS, NEUTERED, WEIGHT_KG) VALUES ('Blossom', '1998-10-13', 3, true, 17.0);
INSERT INTO animals(NAME, DOB, ESCAPE_ATTEMPTS, NEUTERED, WEIGHT_KG) VALUES ('Ditto', '2022-05-14', 4, true, 22.0);

INSERT INTO owners(FULL_NAME, AGE) VALUES ('Sam Smith', 34);
INSERT INTO owners(FULL_NAME, AGE) VALUES ('Jennifer Orwell', 19);
INSERT INTO owners(FULL_NAME, AGE) VALUES ('Bob', 45);
INSERT INTO owners(FULL_NAME, AGE) VALUES ('Melody Pond', 77);
INSERT INTO owners(FULL_NAME, AGE) VALUES ('Dean Winchester', 14);
INSERT INTO owners(FULL_NAME, AGE) VALUES ('Jodie Whittaker', 38);

INSERT INTO species(SPECIE_NAME) VALUES ('digimon');
INSERT INTO species(SPECIE_NAME) VALUES ('pokemon');

UPDATE animals SET SPECIES_ID=1 WHERE name LIKE '%mon';
UPDATE animals SET SPECIES_ID=2 WHERE SPECIES_ID IS NULL;

UPDATE animals SET owner_id=2 WHERE name='Agumon';
UPDATE animals SET owner_id=3 WHERE name='Gabumon' OR name='Pikachu';
UPDATE animals SET owner_id=4 WHERE name='Devimon' OR name='Plantmon';
UPDATE animals SET owner_id=5 WHERE name='Charmander' OR name='Squirtle' OR name='Blossom';
UPDATE animals SET owner_id=6 WHERE name='Angemon' OR name='Boarmon';
