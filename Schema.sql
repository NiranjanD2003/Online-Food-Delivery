CREATE TABLE Restaurants (
    restaurant_id NUMBER PRIMARY KEY,
    name VARCHAR2(100) NOT NULL,
    location VARCHAR2(100) NOT NULL
);

CREATE TABLE Dishes (
    dish_id NUMBER PRIMARY KEY,
    restaurant_id NUMBER NOT NULL,
    name VARCHAR2(100) NOT NULL,
    price NUMBER(10,2) NOT NULL,
    FOREIGN KEY (restaurant_id) REFERENCES Restaurants(restaurant_id)
);

CREATE TABLE Customers (
    customer_id NUMBER PRIMARY KEY,
    name VARCHAR2(100) NOT NULL,
    email VARCHAR2(100) UNIQUE NOT NULL
);

CREATE TABLE Delivery_Boys (
    delivery_boy_id NUMBER PRIMARY KEY,
    name VARCHAR2(100) NOT NULL,
    phone VARCHAR2(15) NOT NULL
);

CREATE TABLE Orders (
    order_id NUMBER PRIMARY KEY,
    customer_id NUMBER NOT NULL,
    restaurant_id NUMBER NOT NULL,
    delivery_boy_id NUMBER NOT NULL,
    order_date DATE NOT NULL,
    total_amount NUMBER(10,2) NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (restaurant_id) REFERENCES Restaurants(restaurant_id),
    FOREIGN KEY (delivery_boy_id) REFERENCES Delivery_Boys(delivery_boy_id)
);

CREATE TABLE Ratings (
    rating_id NUMBER PRIMARY KEY,
    customer_id NUMBER NOT NULL,
    restaurant_id NUMBER NOT NULL,
    rating NUMBER(2,1) NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (restaurant_id) REFERENCES Restaurants(restaurant_id)
);