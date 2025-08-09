INSERT INTO Restaurants VALUES (1, 'Spicy Treat', 'Mumbai');
INSERT INTO Restaurants VALUES (2, 'Royal Biryani', 'Pune');
INSERT INTO Restaurants VALUES (3, 'Pizza Hub', 'Delhi');

INSERT INTO Dishes VALUES (1, 1, 'Paneer Butter Masala', 250);
INSERT INTO Dishes VALUES (2, 1, 'Veg Thali', 200);
INSERT INTO Dishes VALUES (3, 2, 'Chicken Biryani', 300);
INSERT INTO Dishes VALUES (4, 2, 'Mutton Biryani', 350);
INSERT INTO Dishes VALUES (5, 3, 'Pepperoni Pizza', 450);
INSERT INTO Dishes VALUES (6, 3, 'Veg Supreme Pizza', 400);

INSERT INTO Customers VALUES (1, 'Amit Sharma', 'amit@example.com');
INSERT INTO Customers VALUES (2, 'Priya Verma', 'priya@example.com');
INSERT INTO Customers VALUES (3, 'Rohit Singh', 'rohit@example.com');

INSERT INTO Delivery_Boys VALUES (1, 'Ramesh Kumar', '9876543210');
INSERT INTO Delivery_Boys VALUES (2, 'Suresh Yadav', '9876543211');
INSERT INTO Delivery_Boys VALUES (3, 'Vijay Patil', '9876543212');

INSERT INTO Orders VALUES (1, 1, 1, 1, TO_DATE('2025-07-10', 'YYYY-MM-DD'), 450);
INSERT INTO Orders VALUES (2, 2, 2, 2, TO_DATE('2025-07-15', 'YYYY-MM-DD'), 300);
INSERT INTO Orders VALUES (3, 3, 3, 3, TO_DATE('2025-07-20', 'YYYY-MM-DD'), 450);
INSERT INTO Orders VALUES (4, 1, 2, 2, TO_DATE('2025-07-25', 'YYYY-MM-DD'), 350);
INSERT INTO Orders VALUES (5, 2, 1, 1, TO_DATE('2025-08-01', 'YYYY-MM-DD'), 250);
INSERT INTO Orders VALUES (6, 3, 3, 3, TO_DATE('2025-08-02', 'YYYY-MM-DD'), 400);
INSERT INTO Orders VALUES (7, 1, 3, 3, TO_DATE('2025-08-05', 'YYYY-MM-DD'), 450);
INSERT INTO Orders VALUES (8, 2, 2, 2, TO_DATE('2025-08-06', 'YYYY-MM-DD'), 300);

INSERT INTO Ratings VALUES (1, 1, 1, 4.8);
INSERT INTO Ratings VALUES (2, 2, 1, 4.6);
INSERT INTO Ratings VALUES (3, 3, 2, 4.4);
INSERT INTO Ratings VALUES (4, 1, 2, 4.7);
INSERT INTO Ratings VALUES (5, 2, 3, 4.9);
INSERT INTO Ratings VALUES (6, 3, 3, 4.6);
