SELECT services.description, count(customers_services.customer_id)
  FROM customers_services
  JOIN services
    ON customers_services.service_id = services.id
  GROUP BY description
  HAVING count(customers_services.customer_id) >= 3;
