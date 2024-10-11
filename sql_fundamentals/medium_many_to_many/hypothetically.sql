SELECT sum(services.price)
  FROM customers_services
  JOIN services
    ON customers_services.service_id = services.id
  WHERE services.price > 100;

SELECT sum(services.price)
  FROM services CROSS JOIN customers
  WHERE services.price > 100;
