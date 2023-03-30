/*Queries that provide answers to the questions from all projects.*/

BEGIN;

UPDATE animals SET weight_kg=weight_kg * -1 WHERE sign(weight_kg) < 1;

COMMIT;

SELECT full_name as owner_full_name, name as animal_name FROM OWNERS JOIN ANIMALS ON owners.id = animals.owner_id WHERE full_name='Melody Pond'; 

SELECT specie_name, name as animal_name FROM SPECIES 
  JOIN ANIMALS ON species.id = animals.species_id 
  WHERE specie_name='pokemon';

SELECT * FROM OWNERS 
  LEFT JOIN ANIMALS ON owners.id = animals.owner_id;

SELECT specie_name, COUNT(*) FROM SPECIES 
  LEFT JOIN ANIMALS ON species.id = animals.species_id 
  GROUP BY SPECIE_NAME;

SELECT * FROM OWNERS 
  JOIN ANIMALS ON owners.id = animals.owner_id 
  JOIN SPECIES ON animals.species_id = species.id 
  WHERE owners.full_name='Jennifer Orwell' AND species.specie_name = 'digimon';

SELECT full_name as owner_full_name, name as animal_name FROM OWNERS 
  JOIN ANIMALS ON owners.id = animals.owner_id 
  WHERE full_name='Dean Winchester' AND animals.escape_attempts = 0; 

SELECT full_name, COUNT(*) FROM OWNERS 
  JOIN ANIMALS ON owners.id = animals.owner_id 
  GROUP BY FULL_NAME;