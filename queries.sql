/*Queries that provide answers to the questions from all projects.*/

SELECT COUNT(*) as total_number FROM animals;
SELECT COUNT(*) as less_than_one_escapes FROM animals WHERE escape_attempts < 1;
SELECT AVG(weight_kg) as avg_weight FROM animals;
SELECT neutered, avg(escape_attempts) as escapes FROM animals GROUP BY neutered;
SELECT MAX(weight_kg) as digimon_max_wght FROM animals WHERE SPECIES='digimon';
SELECT MAX(weight_kg) as digimon_min_wght FROM animals WHERE SPECIES='pokemon';
SELECT MIN(weight_kg) as pokemon_max_wght FROM animals WHERE SPECIES='digimon';
SELECT MIN(weight_kg) as pokemon_min_wght FROM animals WHERE SPECIES='pokemon';
SELECT AVG(escape_attempts) as digimon_avg_escapes FROM animals WHERE SPECIES='digimon' AND DOB BETWEEN '1990-01-01' AND '2000-01-01';
SELECT AVG(escape_attempts) as pokemon_avg_escapes FROM animals WHERE SPECIES='pokemon' AND DOB BETWEEN '1990-01-01' AND '2000-01-01';
