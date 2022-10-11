CREATE TABLE Customer(
    CustomerId int(10) NOT NULL,
    FirstName varchar(20),
    LastName varchar(20),
    DOB varchar(10),
    Email varchar(30),
    PRIMARY KEY (CustomerId)
);

CREATE TABLE Contact_Customer(
    ContactNo int(20) NOT NULL,
    CustomerId int(10) NOT NULL,
    FOREIGN KEY (CustomerId) REFERENCES Customer(CustomerId),
    PRIMARY KEY (CustomerId,ContactNo)
);

CREATE TABLE Driver(
    DriverId int NOT NULL,
    FirstName varchar(20),
    LastName varchar(20),
    YearsOfExperience int,
    AvgRating int,
    Email varchar(30),
    PRIMARY KEY (DriverId)
);

CREATE TABLE Contact_Driver(
    ContactNo int(20) NOT NULL,
    DriverId int(10) NOT NULL,
    FOREIGN KEY (DriverId) REFERENCES Driver(DriverId),
    PRIMARY KEY (DriverId,ContactNo)
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

insert into Customer
values (34,'nikhil','babar','27 oct','nikhilbabar@gmail.com');

insert into Customer
values (50,'Sarvesh','Deshpande','19 sep','Sarvesh@gmail.com');

insert into Customer
values (56,'Manan','Chajed','4 dec','Manan@gmail.com');

insert into Customer
values (35,'chaitya','dobariya','9 august','chaitya@gmail.com');

insert into Customer
values (10,'Tejas','durgudhe','10 oct','Tejas@gmail.com');

insert into Contact_Customer
values (948939299,34);

insert into Contact_Customer
values (849302584,34);

insert into Contact_Customer
values (948939299,50);

insert into Contact_Customer
values (849352584,50);

SELECT * from Customer;

SELECT
    Customer.FirstName,
    Contact_Customer.ContactNo
FROM
    Customer
INNER JOIN
    Contact_Customer
ON
    Customer.CustomerId = Contact_Customer.CustomerId;
    
insert into Driver
values (44,'ajay','kumar',10,4,"ajay@gmail.com");

insert into Driver
values (41,'vijay','kumar',11,5,"vijay@gmail.com");

insert into Driver
values (90,'bijay','kumar',20,4,"bijay@gmail.com");

insert into Driver
values (34,'jay','kumar',10,4,"jay@gmail.com");

insert into Contact_Driver
values (849352584,34);

insert into Contact_Driver
values (449352584,34);

insert into Contact_Driver
values (849354584,44);

insert into Contact_Driver
values (993352584,44);

insert into Contact_Driver
values (549352584,90);

insert into Contact_Driver
values (849352584,41);

SELECT * FROM Driver;

SELECT
    Driver.FirstName As Driver_Name,
    Contact_Driver.ContactNo As ContactNo
FROM
    Driver
INNER JOIN
    Contact_Driver
ON
    Driver.DriverId = Contact_Driver.DriverId;

    

