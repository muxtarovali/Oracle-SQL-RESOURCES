-- Kitab mağazası üçün verilənlər bazasını yaradırıq
CREATE TABLE books (
    book_id NUMBER PRIMARY KEY,
    title VARCHAR2(255) NOT NULL,
    author VARCHAR2(255) NOT NULL,
    price NUMBER(6,2) NOT NULL,
    stock_quantity NUMBER DEFAULT 0
);

CREATE TABLE customers (
    customer_id NUMBER PRIMARY KEY,
    first_name VARCHAR2(50) NOT NULL,
    last_name VARCHAR2(50) NOT NULL,
    email VARCHAR2(100) UNIQUE,
    phone VARCHAR2(20)
);

CREATE TABLE orders (
    order_id NUMBER PRIMARY KEY,
    customer_id NUMBER,
    order_date DATE DEFAULT SYSDATE,
    total_amount NUMBER(10,2),
    CONSTRAINT fk_customer FOREIGN KEY (customer_id) REFERENCES customers(customer_id) ON DELETE CASCADE
);

CREATE TABLE order_items (
    order_item_id NUMBER PRIMARY KEY,
    order_id NUMBER,
    book_id NUMBER,
    quantity NUMBER DEFAULT 1,
    price NUMBER(6,2),
    CONSTRAINT fk_order FOREIGN KEY (order_id) REFERENCES orders(order_id) ON DELETE CASCADE,
    CONSTRAINT fk_book FOREIGN KEY (book_id) REFERENCES books(book_id)
);

-- Nümunə kitablar əlavə edirik
INSERT INTO books (book_id, title, author, price, stock_quantity) VALUES (1, 'SQL Fundamentals', 'John Doe', 25.99, 10);
INSERT INTO books (book_id, title, author, price, stock_quantity) VALUES (2, 'Advanced SQL', 'Jane Smith', 35.50, 5);

-- Nümunə müştəri əlavə edirik
INSERT INTO customers (customer_id, first_name, last_name, email, phone) VALUES (1, 'Ali', 'Məmmədov', 'ali@example.com', '+994501234567');

-- Nümunə sifariş əlavə edirik
INSERT INTO orders (order_id, customer_id, order_date, total_amount) VALUES (1, 1, SYSDATE, 35.50);

-- Sifarişin detalları (müştəri hansı kitabı alıb)
INSERT INTO order_items (order_item_id, order_id, book_id, quantity, price) VALUES (1, 1, 2, 1, 35.50);

COMMIT;