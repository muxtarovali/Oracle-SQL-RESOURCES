-- Books cədvəlini yarat
CREATE TABLE Books (
    BookID NUMBER PRIMARY KEY,
    Title VARCHAR2(255),
    Author VARCHAR2(100),
    Genre VARCHAR2(100),
    Price NUMBER,
    Stock NUMBER
);

-- Users cədvəlini yarat
CREATE TABLE Users (
    UserID NUMBER PRIMARY KEY,
    Username VARCHAR2(100),
    Password VARCHAR2(100),
    Email VARCHAR2(100),
    RegistrationDate DATE
);

-- Orders cədvəlini yarat
CREATE TABLE Orders (
    OrderID NUMBER PRIMARY KEY,
    UserID NUMBER,
    OrderDate DATE,
    TotalAmount NUMBER,
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

-- OrderItems cədvəlini yarat
CREATE TABLE OrderItems (
    OrderItemID NUMBER PRIMARY KEY,
    OrderID NUMBER,
    BookID NUMBER,
    Quantity NUMBER,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
);