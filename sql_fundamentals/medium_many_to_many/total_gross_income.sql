SELECT sum(services.price) AS gross
  FROM customers_services
  JOIN services
    ON customers_services.service_id = services.id;