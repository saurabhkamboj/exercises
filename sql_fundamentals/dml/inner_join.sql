SELECT devices.name, parts.part_number
  FROM devices JOIN parts ON devices.id = parts.device_id;
