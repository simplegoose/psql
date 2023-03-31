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

SELECT full_name, COUNT(*) as total_animals FROM OWNERS 
  JOIN ANIMALS ON owners.id = animals.owner_id 
  GROUP BY FULL_NAME
  ORDER BY total_animals DESC;

SELECT vets.name, visits.date_visited FROM VETS
  JOIN VISITS ON visits.vet_id = vets.id
  JOIN ANIMALS ON visits.animal_id = animals.id
  WHERE vets.name = 'William Tatcher'
  ORDER BY visits.date_visited DESC
  LIMIT 1;

SELECT vets.name as vet_name, species.specie_name, COUNT(animals.species_id) as species_count FROM VETS
  JOIN VISITS ON visits.vet_id = vets.id
  JOIN ANIMALS ON visits.animal_id = animals.id
  JOIN SPECIES ON animals.species_id = species.id
  WHERE vets.name = 'Stephanie Mendez'
  GROUP BY animals.species_id, species.specie_name, vets.name;

SELECT vets.name as vet_name, species.specie_name as specialized_specie FROM VETS
  LEFT JOIN SPECIALTIES ON specialties.vet_id = vets.id
  LEFT JOIN SPECIES ON specialties.species_id = species.id;

SELECT animals.name as animal_name, vets.name as vet_name, visits.date_visited FROM VETS
  JOIN VISITS ON visits.vet_id = vets.id
  JOIN ANIMALS ON visits.animal_id = animals.id
  WHERE vets.name = 'Stephanie Mendez' AND visits.date_visited >= '2020-04-01' AND visits.date_visited <= '2020-08-30'
  ORDER BY visits.date_visited DESC;

SELECT animals.name, COUNT(VISITS) as visits FROM ANIMALS
  JOIN VISITS ON visits.animal_id = animals.id
  GROUP BY animals.name
  ORDER BY visits DESC;

SELECT animals.name as animal_name, vets.name as vet_name, visits.date_visited FROM VETS
  JOIN VISITS ON visits.vet_id = vets.id
  JOIN ANIMALS ON visits.animal_id = animals.id
  WHERE vets.name = 'Maisy Smith'
  ORDER BY visits.date_visited DESC
  LIMIT 1;

SELECT * FROM VISITS
  JOIN VETS ON visits.vet_id = vets.id
  JOIN ANIMALS ON visits.animal_id = animals.id
  ORDER BY visits.date_visited DESC
  LIMIT 1;

SELECT vets.name, COUNT(VISITS), specialties.species_id FROM VISITS
  LEFT JOIN VETS ON visits.vet_id = vets.id
  LEFT JOIN SPECIALTIES ON specialties.vet_id = vets.id
  GROUP BY vets.name, specialties.species_id
  ORDER BY specialties.species_id IS NULL DESC;

SELECT species.specie_name, COUNT(animals) FROM VISITS
  JOIN VETS ON visits.vet_id = vets.id
  JOIN ANIMALS ON visits.animal_id = animals.id
  JOIN SPECIES ON animals.species_id = species.id
  WHERE vets.name = 'Maisy Smith'
  GROUP BY species.specie_name;