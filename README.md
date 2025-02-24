# 🏨 Hotel Management System (SQL Project)

## 💡 Project Overview
This project is a **Hotel Management System Database** designed using **MySQL**. It helps in managing:
- Guest check-ins and check-outs  
- Room availability and status  
- Bookings and payments  
- Employee records  

This system uses **well-structured tables, relationships, and SQL queries** to ensure efficient hotel management.

## 🛠 Tech Stack
- **Database:** MySQL  
- **Queries Used:** `CREATE`, `INSERT`, `JOIN`, `UPDATE`, `DELETE`, `AGGREGATE FUNCTIONS`  

## 📂 Database Schema
The database consists of **five tables**:
1. **Guests** – Stores guest details   
2. **Rooms** – Stores room information  
3. **Bookings** – Stores booking records  
4. **Payments** – Stores guest payments  
5. **Employees** – Stores employee details  

## 🛠 How to Set Up
### **Step 1:** Install MySQL
Make sure MySQL is installed on your system. You can download it from [MySQL Official Site](https://dev.mysql.com/downloads/).

### **Step 2:** Clone this repository
```bash
git clone https://github.com/yourusername/Hotel-Management-System.git
cd Hotel-Management-System
```

### **Step 3:** Run the SQL script
Open MySQL and execute the script:
```sql
SOURCE hotel_management.sql;
```

## 🔍 Sample Queries and Outputs

### **1. Find all guest bookings with room details**
#### Query:
```sql
SELECT g.first_name, g.last_name, r.room_number, r.room_type, b.check_in_date, b.check_out_date, b.booking_status
FROM Bookings b
JOIN Guests g ON b.guest_id = g.guest_id
JOIN Rooms r ON b.room_id = r.room_id;
```
#### Output:
```
+------------+-----------+-------------+-----------+--------------+--------------+-------------+
| first_name | last_name | room_number | room_type | check_in_date | check_out_date | booking_status |
+------------+-----------+-------------+-----------+--------------+--------------+-------------+
| Rajesh     | Sharma    | 101         | Single    | 2025-02-20   | 2025-02-25   | Confirmed    |
| Priya      | Verma     | 102         | Double    | 2025-02-18   | 2025-02-22   | Completed    |
| Amit       | Gupta     | 103         | Suite     | 2025-02-21   | 2025-02-23   | Confirmed    |
+------------+-----------+-------------+-----------+--------------+--------------+-------------+
```

### **2. Find all available rooms**
#### Query:
```sql
SELECT * FROM Rooms WHERE status = 'Available';
```
#### Output:
```
+---------+-------------+------------+----------------+
| room_id | room_number | room_type  | status         |
+---------+-------------+------------+----------------+
| 103     | 103        | Suite      | Available      |
| 105     | 105        | Double     | Available      |
+---------+-------------+------------+----------------+
```

### **3. Total revenue collected**
#### Query:
```sql
SELECT SUM(amount) AS total_revenue FROM Payments;
```
#### Output:
```
+--------------+
| total_revenue |
+--------------+
| 28500.00     |
+--------------+
```

## 🧑‍🤝‍🧑 Guest Names Added:
1. Rajesh Sharma  
2. Priya Verma  
3. Amit Gupta  
4. Neha Iyer  
5. Rohit Mehta  
6. Anjali Nair  
7. Vikram Singh  
8. Kavita Choudhary  
9. Suresh Reddy  
10. Meena Pillai  
11. Manish Malhotra  
12. Pooja Bansal  
13. Arjun Deshmukh  
14. Sneha Joshi  
15. Karan Thakur  

