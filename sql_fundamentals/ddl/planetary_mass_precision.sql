ALTER TABLE planets
  ALTER mass TYPE numeric,
  ALTER mass SET NOT NULL,
  ADD CHECK (mass > 0.0),
  ALTER designation SET NOT NULL;
