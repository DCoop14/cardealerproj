
CREATE TABLE customer (
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(50),
    phone VARCHAR(10)
);

SELECT * FROM customer;

CREATE TABLE salesperson (
    salesperson_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);

SELECT * FROM salesperson;

CREATE TABLE cars (
    car_id SERIAL PRIMARY KEY,
    make VARCHAR(20),
    model VARCHAR(20),
    year INTEGER,
    MSRP NUMERIC(8,2),
    new_car BOOLEAN,
    used_car BOOLEAN
);

SELECT * FROM cars;

CREATE TABLE mechanic (
    mechanic_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);

CREATE TABLE service (
    service_id SERIAL PRIMARY KEY,
    parts BOOLEAN,
    customer_id INTEGER,
    car_id INTEGER,
    mechanic_id INTEGER,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (car_id) REFERENCES car(car_id),
    FOREIGN KEY (mechanic_id) REFERENCES mechanic(mechanic_id)
);

CREATE TABLE service_history (
    service_history_id SERIAL PRIMARY KEY,
    car_id INTEGER,
    service_id INTEGER,
    FOREIGN KEY (car_id) REFERENCES car(car_id),
    FOREIGN KEY (service_id) REFERENCES service(service_id)
);

CREATE TABLE invoice (
    invoice_id SERIAL PRIMARY KEY,
    amount MONEY,
    salesperson_id INTEGER,
    customer_id INTEGER,
    car_id INTEGER,
    service_id INTEGER,
    FOREIGN KEY (salesperson_id) REFERENCES salesperson(salesperson_id),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (car_id) REFERENCES car(car_id),
    FOREIGN KEY (service_id) REFERENCES service(service_id)
  );



























