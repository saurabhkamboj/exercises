-- To add a CHECK constraint:

ALTER TABLE birds
  ADD CHECK (age > 0);

-- To check if the constraint works:

INSERT INTO birds (name, age, species)
  VALUES ('Soni', -2, 'Raven');