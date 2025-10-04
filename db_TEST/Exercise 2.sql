DROP TABLE IF EXISTS bookings;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS flights;
DROP TABLE IF EXISTS aircrafts;



CREATE TABLE customers
(
    customer_id  INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name  VARCHAR(50) NOT NULL,
    status VARCHAR(20) NOT NULL,
    mileage int NOT NULL
);

CREATE TABLE aircrafts
(
    aircraft_id  INT AUTO_INCREMENT PRIMARY KEY,
    model VARCHAR(50) NOT NULL,
    seats int NOT NULL
);

CREATE TABLE flights
(
    flight_id INT AUTO_INCREMENT PRIMARY KEY,
    number      VARCHAR(20) UNIQUE NOT NULL,
    aircraft_id INT                 NOT NULL,
    mileage      INT                 NOT NULL,
    FOREIGN KEY (aircraft_id) REFERENCES aircrafts (aircraft_id)
);

CREATE TABLE bookings
(
    booking_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id      INT NOT NULL,
    flight_id INT                 NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers (customer_id),
    FOREIGN KEY (flight_id) REFERENCES flights (flight_id)
);


INSERT INTO aircrafts (model, seats) VALUES
                                         ('Boeing 747', 400),
                                         ('Airbus A330', 236),
                                         ('Boeing 777', 264);

INSERT INTO customers (first_name, last_name, status, mileage) VALUES
                                                                   ('Agustine', 'Riviera', 'Silver', 115235),
                                                                   ('Alaina', 'Sepulvida', 'None', 6008),
                                                                   ('Tom', 'Jones', 'Gold', 205767),
                                                                   ('Sam', 'Rio', 'None', 2653),
                                                                   ('Jessica', 'James', 'Silver', 127656),
                                                                   ('Ana', 'Janco', 'Silver', 136773),
                                                                   ('Jennifer', 'Cortez', 'Gold', 300582),
                                                                   ('Christian', 'Janco', 'Silver', 14642);

INSERT INTO flights (number, aircraft_id, mileage) VALUES
                                                       ('DL143', 1, 135),
                                                       ('DL122', 2, 4370),
                                                       ('DL53', 3, 2078),
                                                       ('DL222', 3, 1765),
                                                       ('DL37', 1, 531);

INSERT INTO bookings (customer_id, flight_id) VALUES
-- Agustine Riviera
(1, 1),
(1, 2),
-- Alaina Sepulvida
(2, 2),
-- Tom Jones
(3, 2),
(3, 3),
(3, 4),
-- Sam Rio
(4, 1),
(4, 5),
-- Jessica James
(5, 1),
(5, 2),
-- Ana Janco
(6, 4),
-- Jennifer Cortez
(7, 4),
-- Christian Janco
(8, 4);
