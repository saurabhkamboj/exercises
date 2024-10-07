SELECT devices.name, count(parts.id)
  FROM devices JOIN parts ON devices.id = parts.device_id
  GROUP BY devices.name
  ORDER BY devices.name DESC;
