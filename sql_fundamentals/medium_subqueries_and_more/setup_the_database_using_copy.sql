-- To create and connect to a database, in terminal

createdb auction 
psql auction

-- To create the bidders table, in psql client

CREATE TABLE bidders (
  id serial PRIMARY KEY,
  name text NOT NULL
);

-- To create the items table

CREATE TABLE items (
  id serial PRIMARY KEY,
  name text NOT NULL,
  initial_price numeric(6, 2) NOT NULL,
  sales_price numeric(6, 2)
  CHECK (initial_price BETWEEN 0.01 AND 1000.00),
  CHECK (sales_price BETWEEN 0.01 AND 1000.00)
);

-- To create a bids table

CREATE TABLE bids (
  id serial PRIMARY KEY,
  bidder_id integer NOT NULL REFERENCES bidders(id) ON DELETE CASCADE,
  item_id integer NOT NULL REFERENCES items(id) ON DELETE CASCADE,
  amount numeric(6, 2) NOT NULL,
  CHECK (amount BETWEEN 0.01 AND 1000.00)
);

-- To create an index

CREATE INDEX ON bids (bidder_id, item_id);

-- To copy data from CSV files

\copy bidders FROM bidders.csv WITH HEADER CSV
\copy items FROM items.csv WITH HEADER CSV
\copy bids from bids.csv WITH HEADER CSV
