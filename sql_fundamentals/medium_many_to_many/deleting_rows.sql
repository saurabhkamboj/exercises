-- To delete a row from customers

DELETE FROM customers WHERE name = 'Chen Ke-Hua';

-- To delete a row from services

ALTER TABLE customers_services
  DROP CONSTRAINT customers_services_id_fkey;

ALTER TABLE customers_services
  ADD FOREIGN KEY service_id REFERENCES services (id) ON DELETE CASCADE;

DELETE FROM services WHERE description = 'Bulk Email';

-- Alternate solution where we do not add ON DELETE to the foreign key constraint

DELETE FROM customers_services WHERE service_id = 7;

DELETE FROM services WHERE description = 'Bulk Email';
