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
    Fare int,
    RouteNo int,
    PRIMARY KEY (RouteNo)
);

CREATE TABLE Vehicle(
    RegNo int NOT NULL,
    Model varchar(20),
    Type varchar(20),
    LastService varchar(15),
    PRIMARY KEY (RegNo)
);

CREATE TABLE Journey(
    CustomerId int,
    DriverId int,
    RouteNo int,
    RegNo int,
    FOREIGN KEY (CustomerId) REFERENCES Customer(CustomerId),
    FOREIGN KEY (DriverId) REFERENCES Driver(DriverId),
    FOREIGN KEY (RouteNo) REFERENCES Routes(RouteNo),
    FOREIGN KEY (RegNo) REFERENCES Vehicle(RegNo),
    PRIMARY KEY (CustomerId,DriverId, RouteNo, RegNo)    
);

INSERT INTO Routes 
VALUES("Mumbai","Pune",152,3000,101);

INSERT INTO Routes 
VALUES("Thane","Andheri",22,1000,201);

INSERT INTO Routes 
VALUES("Andheri","Vasai",46,1200,301);

INSERT INTO Vehicle 
VALUES(11001,"Swift","Sedan","August");

INSERT INTO Vehicle 
VALUES(11002,"Ciaz","Sedan","September");

INSERT INTO Vehicle 
VALUES(11003,"Creta","SUV","July");

INSERT INTO Vehicle 
VALUES(11004,"Harrier","SUV","August");

INSERT INTO Vehicle 
VALUES(11005,"BMW X1","Luxury","October");

SELECT * FROM Routes;

SELECT * FROM Vehicle;


