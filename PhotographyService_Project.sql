

DROP TABLE IF EXISTS Payments;
DROP TABLE IF EXISTS Bookings;
DROP TABLE IF EXISTS Services;
DROP TABLE IF EXISTS Clients;

-- this is to CREATE TABLES
CREATE TABLE Clients (
  ClientID INT PRIMARY KEY,
  FirstName VARCHAR(50),
  LastName VARCHAR(50),
  PhoneNumber VARCHAR(15),
  Email VARCHAR(100)
);

CREATE TABLE Services (
  ServiceID INT PRIMARY KEY,
  ServiceName VARCHAR(50),
  Description VARCHAR(255),
  Price DECIMAL(10,2)
);

CREATE TABLE Bookings (
  BookingID INT PRIMARY KEY,
  ClientID INT,
  ServiceID INT,
  BookingDate DATE,
  BookingTime VARCHAR(10),
  Location VARCHAR(100),
  FOREIGN KEY (ClientID) REFERENCES Clients(ClientID),
  FOREIGN KEY (ServiceID) REFERENCES Services(ServiceID)
);

CREATE TABLE Payments (
  PaymentID INT PRIMARY KEY,
  BookingID INT,
  AmountPaid DECIMAL(10,2),
  PaymentDate DATE,
  PaymentMethod VARCHAR(50),
  FOREIGN KEY (BookingID) REFERENCES Bookings(BookingID)
);

-- and here it INSERT DATA INTO Clients table
INSERT INTO Clients VALUES
(1, 'Maria', 'Lopez', '9171234567', 'maria.lopez@gmail.com'),
(2, 'James', 'Smith', '7182345678', 'james.smith@yahoo.com'),
(3, 'Aisha', 'Khan', '6463456789', 'aisha.khan@outlook.com'),
(4, 'John', 'Lee', '9174567890', 'john.lee@gmail.com'),
(5, 'Priya', 'Patel', '3475678901', 'priya.patel@hotmail.com'),
(6, 'Luis', 'Rivera', '9296789012', 'luis.rivera@gmail.com'),
(7, 'Zoe', 'Chen', '6467890123', 'zoe.chen@yahoo.com'),
(8, 'Ahmed', 'Omar', '7188901234', 'ahmed.omar@gmail.com'),
(9, 'Emma', 'Davis', '3479012345', 'emma.davis@icloud.com'),
(10, 'Daniel', 'Kim', '9170123456', 'daniel.kim@gmail.com');

-- and here it INSERT DATA INTO Services
INSERT INTO Services VALUES
(1, 'Wedding', 'Full-day wedding coverage', 1500.00),
(2, 'Portrait', 'Studio or outdoor portraits', 200.00),
(3, 'Event', 'Birthday or business events', 500.00),
(4, 'Product', 'E-commerce product photos', 300.00),
(5, 'Family', 'Family photoshoot', 250.00),
(6, 'Graduation', 'Cap & gown session', 180.00),
(7, 'Engagement', 'Pre-wedding shoot', 400.00),
(8, 'Baby', 'Newborn session', 220.00),
(9, 'Headshot', 'Professional headshots', 150.00),
(10, 'Real Estate', 'Property listing photography', 350.00);

-- and INSERT DATA INTO Bookings
INSERT INTO Bookings VALUES
(1, 1, 1, '2025-04-10', '2:00 PM', 'NYC Central Park'),
(2, 2, 3, '2025-03-25', '5:00 PM', 'Hotel Brooklyn'),
(3, 3, 2, '2025-05-01', '12:00 PM', 'Studio A'),
(4, 4, 5, '2025-05-10', '11:00 AM', 'Prospect Park'),
(5, 5, 4, '2025-04-15', '1:00 PM', 'Client''s Office'),
(6, 6, 7, '2025-04-30', '3:00 PM', 'Riverside Garden'),
(7, 7, 6, '2025-05-05', '10:00 AM', 'Lehman Campus'),
(8, 8, 8, '2025-03-20', '9:00 AM', 'Client’s Home'),
(9, 9, 9, '2025-03-18', '1:00 PM', 'Photo Studio'),
(10, 10, 10, '2025-04-22', '4:00 PM', 'Bronx Apartment');

-- and finally here it INSERT DATA INTO Payments
INSERT INTO Payments VALUES
(1, 1, 1500.00, '2025-04-01', 'Card'),
(2, 2, 500.00, '2025-03-20', 'Cash'),
(3, 3, 200.00, '2025-04-28', 'Zelle'),
(4, 4, 250.00, '2025-05-01', 'Venmo'),
(5, 5, 300.00, '2025-04-10', 'PayPal'),
(6, 6, 400.00, '2025-04-25', 'Card'),
(7, 7, 180.00, '2025-05-02', 'Cash'),
(8, 8, 220.00, '2025-03-18', 'Zelle'),
(9, 9, 150.00, '2025-03-15', 'Card'),
(10, 10, 350.00, '2025-04-20', 'Venmo');
