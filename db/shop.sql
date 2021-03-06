DROP TABLE products;
DROP TABLE suppliers;

CREATE TABLE suppliers
(
  id SERIAL primary key,
  name varchar(255),
  contact varchar(255)
);

CREATE TABLE products
(
  id SERIAL primary key,
  model varchar(255),
  description text,
  colour varchar(255),
  cost INT,
  retail INT,
  supplier_id INT REFERENCES suppliers(id) ON DELETE CASCADE,
  quantity INT
);

-- T1
--  psql -d shop -f db/shop.sql
--  ruby db/seeds.rb
-- T2  ruby app.rb
-- localhost 4567
