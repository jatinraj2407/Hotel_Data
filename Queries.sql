-- 1. Get all guest bookings with room details
SELECT g.first_name, g.last_name, r.room_number, r.room_type, b.check_in_date, b.check_out_date, b.booking_status
FROM Bookings b
JOIN Guests g ON b.guest_id = g.guest_id
JOIN Rooms r ON b.room_id = r.room_id;

-- 2. Find all available rooms
SELECT * FROM Rooms WHERE status = 'Available';

-- 3. Calculate total revenue collected
SELECT SUM(amount) AS total_revenue FROM Payments;

-- 4. Update room status when a booking is made
UPDATE Rooms SET status = 'Occupied' WHERE room_id = 1;

-- 5. Delete a booking and free up the room
DELETE FROM Bookings WHERE booking_id = 1;
UPDATE Rooms SET status = 'Available' WHERE room_id = 1;
