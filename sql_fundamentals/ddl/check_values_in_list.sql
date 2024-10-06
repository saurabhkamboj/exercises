ALTER TABLE stars
  ADD CHECK (spectral_type IN ('O', 'B', 'A', 'F', 'G', 'K', 'M')),
  ALTER spectral_type SET NOT NULL;

-- Alternate

ALTER TABLE stars
  ALTER spectral_type SET NOT NULL,
  ADD CHECK (spectral_type ~ '[OBADGKM]');
