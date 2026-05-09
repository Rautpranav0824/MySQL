USE company_db;

CREATE TABLE Employee (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    hire_date DATE,
    email VARCHAR(100) UNIQUE,
    phone_number VARCHAR(13) UNIQUE,
    salary DECIMAL(10,2),
    employee_status ENUM('active', 'on leave', 'terminated') DEFAULT 'active',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP 
    ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO Employee (
    first_name,
    last_name,
    hire_date,
    email,
    phone_number,
    salary,
    employee_status
)
VALUES (
'pranav',
'raut',
'2006-05-30',
'pranav@gmail.com',
'1212121290',
10000.09,
'terminated'
) ,
(
    'Bob',
    'Williams',
    '2023-06-10',
    'bob@gmail.com',
    '9999999991',
    70000,
    'active'
),
(

    'John',
    'Smitt',
    '2002-05-25',
    'john@gmail.com',
    '912222200000',
    50000.09,
    'active'
),
(
'Alice',
'Nobody',
'2003-05-30',
'alice@gmail.com',
'8822882288',
10000.34,
'on leave'
),
(
    'Emma',
    'Brown',
    '2022-03-20',
    'emma@gmail.com',
    '9999999992',
    80000,
    'on leave'
);

SELECT * FROM Employee;

CREATE TABLE Department (
department_id INT PRIMARY KEY AUTO_INCREMENT ,
department_name VARCHAR(100) NOT NULL ,
location VARCHAR(100) ,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ,
updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

ALTER TABLE Employee
add column department_id INT,
add column  description text ;

ALTER TABLE Employee add foreign key (department_id) references Department(department_id) ;



