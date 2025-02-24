-- Step 1: Create the database
CREATE DATABASE HotelManagement;
USE HotelManagement;

-- Step 2: Create the Guests Table
CREATE TABLE Guests (
    guest_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    phone VARCHAR(15) UNIQUE,
    email VARCHAR(100) UNIQUE,
    address TEXT
);

-- Step 3: Insert Guest Data
INSERT INTO Guests (first_name, last_name, phone, email, address) VALUES
('Rajesh', 'Sharma', '9876543210', 'rajesh@gmail.com', 'Delhi'),
('Priya', 'Verma', '9865321470', 'priya@gmail.com', 'Mumbai'),
('Amit', 'Gupta', '9898989898', 'amit@gmail.com', 'Kolkata'),
('Neha', 'Iyer', '9856321456', 'neha@gmail.com', 'Chennai'),
('Rohit', 'Mehta', '9871236540', 'rohit@gmail.com', 'Bangalore'),
('Anjali', 'Nair', '9812345678', 'anjali@gmail.com', 'Hyderabad'),
('Vikram', 'Singh', '9845612378', 'vikram@gmail.com', 'Pune'),
('Kavita', 'Choudhary', '9832145698', 'kavita@gmail.com', 'Jaipur'),
('Suresh', 'Reddy', '9823654789', 'suresh@gmail.com', 'Ahmedabad'),
('Meena', 'Pillai', '9814567890', 'meena@gmail.com', 'Kochi'),
('Manish', 'Malhotra', '9877891234', 'manish@gmail.com', 'Lucknow'),
('Pooja', 'Bansal', '9800123456', 'pooja@gmail.com', 'Indore'),
('Arjun', 'Deshmukh', '9798654321', 'arjun@gmail.com', 'Nagpur'),
('Sneha', 'Joshi', '9887766554', 'sneha@gmail.com', 'Patna'),
('Karan', 'Thakur', '9765432198', 'karan@gmail.com', 'Chandigarh');

-- Step 4: Create the Rooms Table
CREATE TABLE Rooms (
    room_id INT AUTO_INCREMENT PRIMARY KEY,
    room_number INT UNIQUE,
    room_type ENUM('Single', 'Double', 'Suite'),
    price_per_night DECIMAL(10,2),
    status ENUM('Available', 'Occupied') DEFAULT 'Available'
);

-- Step 5: Insert Room Data
INSERT INTO Rooms (room_number, room_type, price_per_night, status) VALUES
(101, 'Single', 2500.00, 'Available'),
(102, 'Double', 4000.00, 'Occupied'),
(103, 'Suite', 7000.00, 'Available'),
(104, 'Single', 2500.00, 'Occupied'),
(105, 'Double', 4000.00, 'Available');

-- Step 6: Create the Bookings Table
CREATE TABLE Bookings (
    booking_id INT AUTO_INCREMENT PRIMARY KEY,
    guest_id INT,
    room_id INT,
    check_in_date DATE,
    check_out_date DATE,
    booking_status ENUM('Confirmed', 'Cancelled', 'Completed') DEFAULT 'Confirmed',
    FOREIGN KEY (guest_id) REFERENCES Guests(guest_id),
    FOREIGN KEY (room_id) REFERENCES Rooms(room_id)
);

-- Step 7: Insert Booking Data
INSERT INTO Bookings (guest_id, room_id, check_in_date, check_out_date, booking_status) VALUES
(1, 101, '2025-02-20', '2025-02-25', 'Confirmed'),
(2, 102, '2025-02-18', '2025-02-22', 'Completed'),
(3, 103, '2025-02-21', '2025-02-23', 'Confirmed');

-- Step 8: Create the Payments Table
CREATE TABLE Payments (
    payment_id INT AUTO_INCREMENT PRIMARY KEY,
    booking_id INT,
    amount DECIMAL(10,2),
    payment_date DATE,
    payment_method ENUM('Cash', 'Credit Card', 'UPI'),
    FOREIGN KEY (booking_id) REFERENCES Bookings(booking_id)
);

-- Step 9: Insert Payment Data
INSERT INTO Payments (booking_id, amount, payment_date, payment_method) VALUES
(1, 12500.00, '2025-02-20', 'Credit Card'),
(2, 16000.00, '2025-02-18', 'UPI');

-- Step 10: Create the Employees Table
CREATE TABLE Employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    position VARCHAR(50),
    salary DECIMAL(10,2)
);

-- Step 11: Insert Employee Data
INSERT INTO Employees (name, position, salary) VALUES
('Rahul Kumar', 'Manager', 60000.00),
('Sita Devi', 'Receptionist', 30000.00),
('Arun Patil', 'Housekeeping', 25000.00);

