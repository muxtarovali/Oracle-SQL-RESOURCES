-- Oracle SQL: Müştəri Cədvəlini Yaratmaq
CREATE TABLE customers (
    customer_id NUMBER PRIMARY KEY,
    first_name VARCHAR2(50),
    last_name VARCHAR2(50),
    email VARCHAR2(100) UNIQUE,
    phone_number VARCHAR2(20),
    created_at DATE DEFAULT SYSDATE
);

-- Test üçün nümunə məlumatlar əlavə edək
INSERT INTO customers (customer_id, first_name, last_name, email, phone_number) 
VALUES (1, 'Ali', 'Məmmədov', 'ali.mammadov@example.com', '+994501234567');

COMMIT;
