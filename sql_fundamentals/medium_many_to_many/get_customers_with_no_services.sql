SELECT customers.*
  FROM customers_services
  RIGHT OUTER JOIN customers
    ON customers_services.customer_id = customers.id
  WHERE customers_services.service_id IS NULL;

-- Alternate

SELECT customers.*
  FROM customers
  LEFT OUTER JOIN customers_services
    ON customers.id = customers_services.customer_id
  WHERE customers_services.service_id IS NULL;
