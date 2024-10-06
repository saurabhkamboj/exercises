CREATE TYPE type_enum AS ENUM ('O', 'B', 'A', 'F', 'G', 'K', 'M');

ALTER TABLE stars
  ALTER spectral_type TYPE type_enum
    USING spectral_type::type_enum;
