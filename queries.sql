/*Queries that provide answers to the questions from all projects.*/

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

SELECT COUNT(*) as total_number FROM animals;
SELECT COUNT(*) as less_than_one_escapes FROM animals WHERE escape_attempts < 1;
SELECT AVG(weight_kg) as avg_weight FROM animals;
SELECT neutered, avg(escape_attempts) as escapes FROM animals GROUP BY neutered;
SELECT species, MIN(weight_kg), MAX(weight_kg) FROM animals GROUP BY species;
SELECT species, AVG(escape_attempts) FROM animals WHERE dob >= '1990-01-01' AND dob <= '2000-12-31' GROUP BY species;
