USE room_sales;

CREATE TABLE CostManagement (
    cost_id INT AUTO_INCREMENT PRIMARY KEY,
    cost_type VARCHAR(50) NOT NULL,
    cost_date DATE NOT NULL,
    amount DECIMAL(10, 2) NOT NULL,
    description TEXT
);

CREATE TABLE Rooms (
    room_number VARCHAR(10) PRIMARY KEY,
    room_type CHAR(1) NOT NULL,
    status_type VARCHAR(15) NOT NULL
);

CREATE TABLE Sales (
    sale_id INT AUTO_INCREMENT PRIMARY KEY,
    room_number VARCHAR(10),
    sale_date DATE NOT NULL,
    sale_price DECIMAL(10, 2) NOT NULL,
    additional_revenue DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (room_number) REFERENCES Rooms(room_number)
);