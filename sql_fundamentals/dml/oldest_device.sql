SELECT name FROM devices
  ORDER BY created_at
  LIMIT 1;

-- Alternate

SELECT name AS oldest_device
  FROM devices
  ORDER BY created_at
  LIMIT 1;
