
SELECT *
FROM customer;

INSERT INTO customer (
    first_name,
    last_name,
    email,
    phone
)

VALUES (
    'Dara',
    'Cooper',
    'daracooper@team.com',
    '8004546984'
),(
    'Brandon',
    'Guerrero',
    'brandonguerrero@team.com',
    '8009894665'
),(
    'Frank',
    'Vazquez',
    'frankvazquez@team.com',
    '8006569797'
);

SELECT *
FROM salesperson;

INSERT INTO salesperson(
    first_name,
    last_name
)
VALUES(
    'Muhammed',
    'Bakalov'
),(
    'Antonio',
    'Popoca'
),(
    'Stephen',
    'Smith'
);

SELECT * 
FROM cars;

INSERT INTO cars(
    year,
    make,
    model
)
VALUES(
    '2019',
    'Toyota',
    'Camry'
),(
    '2022',
    'Ford',
    'F-150'
);

SELECT *
FROM mechanic;

INSERT INTO mechanic(
    first_name,
    last_name
)
VALUES(
    'Bradley',
    'May'
),(
    'Michael',
    'Prather'
),(
    'Andrew',
    'Wong'
);


SELECT *
FROM service;

INSERT INTO service(
    parts
)
VALUES(
    '46-657'
),(
    '55-487'
);

SELECT *
FROM service_history;

INSERT INTO service_history(
    service_history_id
)
VALUES(
    'P-6321',
),(
    'N-7928'
);

SELECT *
FROM invoice;

INSERT INTO invoice(
    amount
)
VALUES(
    '$1140.68',
    '$65899.99'
);

