🍔 Online Food Delivery Database System
📌 Project Overview
This system is designed to manage the core data components of an online food delivery platform — such as customers, restaurants, menu items, orders, delivery agents, and payments — using a fully normalized relational database schema.

It demonstrates real-world database modeling, complex relationships, and advanced SQL querying using JOINs, GROUP BY, and aggregation.

🔧 Technologies Used
Database: MySQL 8+

Development Environment: VS Code + MySQL CLI / MySQL Workbench

File Structure:

pgsql
Copy
Edit
online-food-delivery-db/
├── schema.sql           # Database schema (tables + relationships)
├── insert_sample.sql    # Sample data to test the database
├── queries.sql          # SQL queries to fetch required results
├── er_diagram.png       # ER diagram of the schema
└── README.md            # Project documentation
📚 Features Implemented
✅ Normalized MySQL Schema

6 main entities: Customers, Restaurants, Menu_Items, Orders, Delivery_Agents, and Payments

Proper use of Primary Keys and Foreign Keys

One-to-Many: Restaurant → Menu_Items, Customer → Orders

Many-to-Many: Orders ↔ Menu_Items (via Order_Details junction table)

✅ Sample Data

Inserted realistic sample data for all tables

Covered various order statuses: Pending, Preparing, Delivered, Cancelled

Included multiple payment methods: Cash, UPI, Card

All queries tested with JOINs and aggregate functions included in queries.sql

🗂 How to Run the Project
🛠 Prerequisites
Install MySQL Server

(Optional) MySQL Workbench or VS Code SQL extension

⚙️ Setup Steps
Clone the GitHub repository

bash
Copy
Edit
git clone https://github.com/your-username/online-food-delivery-db.git
Import the schema

bash
Copy
Edit
mysql -u root -p < schema.sql
Insert sample data

bash
Copy
Edit
mysql -u root -p online_food_delivery < insert_sample.sql
Run queries from queries.sql in Workbench or any MySQL client.

🔍 ER Diagram
Below is the Entity-Relationship Diagram for the database:



🙌 Contribution to Heal Bharat
This project is submitted as part of the Database Technology Task in the internship with Heal Bharat.

Submitted by: Niranjan Desai
Role: Database Intern
Organization: Heal Bharat