
CREATE DATABASE flightreservations_database;
GO

USE flightreservations_database;
GO

CREATE SCHEMA flightreservations;
go 

CREATE TABLE flightreservations.airport(
        airport_code INTEGER,
        ap_state VARCHAR,
        city VARCHAR,
        ap_name VARCHAR,
        PRIMARY KEY(airport_code)
    );
CREATE TABLE flightreservations.can_land(airplane_type VARCHAR, airport INTEGER);
CREATE TABLE flightreservations.airplane_type(
    type_of_name VARCHAR,
    max_seats INTEGER,
    company VARCHAR PRIMARY KEY(type_of_name)
);
CREATE TABLE flightreservations.airplane(
    airplane_id INTEGER,
    total_seats INTEGER,
    airplane_type VARCHAR,
    PRIMARY KEY(airplane_id)
);
CREATE TABLE flightreservations.leg_instance(
    a_date DATE,
    available_seats INTEGER,
    airplane INTEGER,
    airport_departure INTEGER,
    airport_arrival INTEGER,
    departure_time TIME,
    arrival_time TIME,
    flight_leg INTEGER,
    PRIMARY KEY(a_date)
);
CREATE TABLE flightreservations.flight_leg(
    leg_number INTEGER,
    airport_departure INTEGER,
    airport_arrival INTEGER,
    sched_dep_time TIME,
    sched_arr_time TIME,
    flight_id INTEGER,
    PRIMARY KEY(leg_number)
);
CREATE TABLE flightreservations.flight(
    number INTEGER,
    airline VARCHAR,
    weekdays VARCHAR,
    PRIMARY KEY(number)
);
CREATE TABLE flightreservations.fare(
    code INTEGER,
    amount MONEY,
    restrictions VARCHAR,
    flight INTEGER,
    PRIMARY KEY(code)
);
CREATE TABLE flightreservations.seat(
    seat_number INTEGER,
    customer_name VARCHAR,
    cphone INTEGER,
    leg_instance DATE,
    PRIMARY KEY(seat_number)
);
ALTER TABLE flightreservations.can_land
ADD CONSTRAINT FK_CAN FOREIGN KEY (airport) REFERENCES flightreservations.airport(airport_code);
ALTER TABLE flightreservations.can_land
ADD CONSTRAINT FK_1 FOREIGN KEY (airplane_type) REFERENCES flightreservations.airplane_type(type_of_name);
ALTER TABLE flightreservations.airplane
ADD CONSTRAINT FK_2 FOREIGN KEY (airplane_type) REFERENCES flightreservations.airplane_type(type_of_name);
ALTER TABLE flightreservations.leg_instance
ADD CONSTRAINT FK_3 FOREIGN KEY (airplane) REFERENCES flightreservations.airplane(airplane_id);
ALTER TABLE flightreservations.leg_instance
ADD CONSTRAINT FK_4 FOREIGN KEY (airport_departure) REFERENCES flightreservations.airport(airport_code);
ALTER TABLE flightreservations.leg_instance
ADD CONSTRAINT FK_5 FOREIGN KEY (airport_arrival) REFERENCES flightreservations.airport(airport_code);
ALTER TABLE flightreservations.leg_instance
ADD CONSTRAINT FK_6 FOREIGN KEY (flight_leg) REFERENCES flightreservations.flight_leg(leg_number);
ALTER TABLE flightreservations.flight_leg
ADD CONSTRAINT FK_7 FOREIGN KEY (airport_departure) REFERENCES flightreservations.airport(airport_code);
ALTER TABLE flightreservations.flight_leg
ADD CONSTRAINT FK_8 FOREIGN KEY (airport_arrival) REFERENCES flightreservations.airport(airport_code);
ALTER TABLE flightreservations.flight_leg
ADD CONSTRAINT FK_9 FOREIGN KEY (flight_id) REFERENCES flightreservations.flight(number);
ALTER TABLE flightreservations.fare
ADD CONSTRAINT FK_10 FOREIGN KEY (flight) REFERENCES flightreservations.flight(number);
ALTER TABLE flightreservations.seat
ADD CONSTRAINT FK_11 FOREIGN KEY (leg_instance) REFERENCES flightreservations.leg_instance(a_date);