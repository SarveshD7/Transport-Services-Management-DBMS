CREATE TABLE Customer(
    CustomerId int NOT NULL,
    FirstName varchar(20),
    LastName varchar(20),
    DOB varchar(10),
    Email varchar(30),
    ContactNo int,
    PRIMARY KEY (CustomerId)
);

CREATE TABLE Driver(
    DriverId int NOT NULL,
    FirstName varchar(20),
    LastName varchar(20),
    YearsOfExperience int,
    AvgRating int,
    Email varchar(30),
    ContactNo int,
    PRIMARY KEY (DriverId)
);

CREATE TABLE Routes(
    Source varchar(30) NOT NULL,
    Destination varchar(30) NOT NULL,
    Distance int,
    Fare int
);

CREATE TABLE Vehicle(
    RegNo int NOT NULL,
    Model varchar(20),
    Type varchar(20),
    LastService varchar(15),
    PRIMARY KEY (RegNo)
);