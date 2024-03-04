PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE customers (
    customer_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    email TEXT NOT NULL UNIQUE,
    phone TEXT,
    address TEXT
, zip TEXT, city TEXT, state TEXT);
INSERT INTO customers VALUES(1,'Chris Green','chris.green@example.com','555-0201','101 Mountain Road','10001','New York','NY');
INSERT INTO customers VALUES(2,'Alex Blue','alex.blue@example.com','555-0202','202 Riverside Drive','90001','Los Angeles','CA');
INSERT INTO customers VALUES(3,'Sam White','sam.white@example.com','555-0203','303 Urban Lane','92101','San Diego','CA');
INSERT INTO customers VALUES(4,'Jordan Black','jordan.black@example.com','555-0204','404 Suburban Blvd','60601','Chicago','IL');
INSERT INTO customers VALUES(5,'Chris Mountain','chris.mountain@example.com','555-1001','101 High Street','77001','Houston','TX');
INSERT INTO customers VALUES(6,'Sam Hill','sam.hill@example.com','555-1002','102 River Road','85001','Phoenix','AZ');
INSERT INTO customers VALUES(7,'Morgan Trail','morgan.trail@example.com','555-1003','103 Lake Avenue','19101','Philadelphia','PA');
INSERT INTO customers VALUES(8,'Alex Downhill','alex.downhill@example.com','555-1004','104 Forest Lane','75201','Dallas','TX');
INSERT INTO customers VALUES(9,'Taylor Sprint','taylor.sprint@example.com','555-1005','105 Meadow Park','32099','Jacksonville','FL');
INSERT INTO customers VALUES(10,'Jordan Biker','jordan.biker@example.com','555-1006','106 Canyon Blvd','10001','New York','NY');
INSERT INTO customers VALUES(11,'Casey Rider','casey.rider@example.com','555-1007','107 Mountain Pass','43085','Columbus','OH');
INSERT INTO customers VALUES(12,'Jamie Pedal','jamie.pedal@example.com','555-1008','108 Valley View','60601','Chicago','IL');
INSERT INTO customers VALUES(13,'Pat Gear','pat.gear@example.com','555-1009','109 Coastal Way','28201','Charlotte','NC');
INSERT INTO customers VALUES(14,'Drew Freewheel','drew.freewheel@example.com','555-1010','110 Sunset Trail','98101','Seattle','WA');
INSERT INTO customers VALUES(15,'Alex Reed','alex.reed@example.com','555-0201','101 Mountain Drive','98101','Seattle','WA');
INSERT INTO customers VALUES(16,'Casey Jordan','casey.jordan@example.com','555-0202','202 River Lane','19101','Philadelphia','PA');
INSERT INTO customers VALUES(17,'Drew Ashton','drew.ashton@example.com','555-0203','303 Coastal Avenue','92101','San Diego','CA');
INSERT INTO customers VALUES(18,'Pat Quinn','pat.quinn@example.com','555-0204','404 Forest Blvd','90001','Los Angeles','CA');
INSERT INTO customers VALUES(19,'Sam Taylor','sam.taylor@example.com','555-0205','505 Desert Road','98101','Seattle','WA');
INSERT INTO customers VALUES(20,'Lee Morgan','lee.morgan@example.com','555-0206','606 Prairie Path','28201','Charlotte','NC');
INSERT INTO customers VALUES(21,'Jordan Chris','jordan.chris@example.com','555-0207','707 Hill Street','85001','Phoenix','AZ');
INSERT INTO customers VALUES(22,'Morgan Alex','morgan.alex@example.com','555-0208','808 Valley View','75201','Dallas','TX');
INSERT INTO customers VALUES(23,'Taylor Casey','taylor.casey@example.com','555-0209','909 Cliffside Dr','77001','Houston','TX');
INSERT INTO customers VALUES(24,'Chris Pat','chris.pat@example.com','555-0210','1010 Beachfront Ave','32099','Jacksonville','FL');
CREATE TABLE orders (
    order_id INTEGER PRIMARY KEY AUTOINCREMENT,
    customer_id INTEGER NOT NULL,
    order_date DATE NOT NULL,
    status TEXT NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
INSERT INTO orders VALUES(1,24,'2024-02-15','Completed');
INSERT INTO orders VALUES(2,2,'2024-02-20','Completed');
INSERT INTO orders VALUES(3,1,'2024-02-25','Pending');
INSERT INTO orders VALUES(4,17,'2024-03-01','Cancelled');
INSERT INTO orders VALUES(5,13,'2024-03-03','Pending');
INSERT INTO orders VALUES(6,20,'2024-01-10','Completed');
INSERT INTO orders VALUES(7,24,'2024-02-15','Completed');
INSERT INTO orders VALUES(8,11,'2024-02-20','Pending');
INSERT INTO orders VALUES(9,13,'2024-03-01','Pending');
INSERT INTO orders VALUES(10,24,'2024-03-02','Cancelled');
INSERT INTO orders VALUES(11,11,'2024-03-02','Completed');
INSERT INTO orders VALUES(12,10,'2024-03-03','Completed');
INSERT INTO orders VALUES(13,3,'2024-03-03','Pending');
INSERT INTO orders VALUES(14,3,'2024-03-04','Pending');
INSERT INTO orders VALUES(15,15,'2024-03-04','Completed');
INSERT INTO orders VALUES(16,2,'2024-02-15','Completed');
INSERT INTO orders VALUES(17,12,'2024-02-16','Completed');
INSERT INTO orders VALUES(18,4,'2024-02-17','Pending');
INSERT INTO orders VALUES(19,13,'2024-02-18','Cancelled');
INSERT INTO orders VALUES(20,20,'2024-02-19','Completed');
INSERT INTO orders VALUES(21,25,'2024-02-20','Pending');
INSERT INTO orders VALUES(22,3,'2024-02-21','Completed');
INSERT INTO orders VALUES(23,24,'2024-02-22','Completed');
INSERT INTO orders VALUES(24,9,'2024-02-23','Completed');
INSERT INTO orders VALUES(25,12,'2024-02-24','Pending');
CREATE TABLE order_lines (
    order_line_id INTEGER PRIMARY KEY AUTOINCREMENT,
    order_id INTEGER NOT NULL,
    product_id INTEGER NOT NULL,
    quantity INTEGER NOT NULL,
    price REAL NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);
INSERT INTO order_lines VALUES(1,1,1,1,1200.0);
INSERT INTO order_lines VALUES(2,2,2,1,1500.5);
INSERT INTO order_lines VALUES(3,3,3,1,1100.0);
INSERT INTO order_lines VALUES(4,4,4,1,50.75);
INSERT INTO order_lines VALUES(5,1,5,2,25.0);
INSERT INTO order_lines VALUES(6,2,4,1,50.75);
INSERT INTO order_lines VALUES(7,5,2,1,1500.5);
INSERT INTO order_lines VALUES(8,5,4,1,50.75);
INSERT INTO order_lines VALUES(9,1,1,1,1200.0);
INSERT INTO order_lines VALUES(10,2,2,1,1500.0);
INSERT INTO order_lines VALUES(11,3,3,2,800.0);
INSERT INTO order_lines VALUES(12,4,4,1,2500.0);
INSERT INTO order_lines VALUES(13,5,5,1,600.0);
INSERT INTO order_lines VALUES(14,6,6,2,300.0);
INSERT INTO order_lines VALUES(15,7,7,1,120.0);
INSERT INTO order_lines VALUES(16,8,8,1,45.0);
INSERT INTO order_lines VALUES(17,9,9,3,25.0);
INSERT INTO order_lines VALUES(18,10,10,2,35.0);
INSERT INTO order_lines VALUES(19,1,7,1,120.0);
INSERT INTO order_lines VALUES(20,2,8,2,45.0);
INSERT INTO order_lines VALUES(21,3,9,1,25.0);
INSERT INTO order_lines VALUES(22,4,10,2,35.0);
INSERT INTO order_lines VALUES(23,5,1,1,1200.0);
INSERT INTO order_lines VALUES(24,6,2,1,1500.0);
INSERT INTO order_lines VALUES(25,7,3,2,800.0);
INSERT INTO order_lines VALUES(26,8,4,1,2500.0);
INSERT INTO order_lines VALUES(27,11,11,1,300.0);
INSERT INTO order_lines VALUES(28,11,12,1,120.0);
INSERT INTO order_lines VALUES(29,12,13,1,45.0);
INSERT INTO order_lines VALUES(30,13,19,1,2500.0);
INSERT INTO order_lines VALUES(31,14,19,1,2500.0);
INSERT INTO order_lines VALUES(32,14,2,1,1500.5);
INSERT INTO order_lines VALUES(33,15,15,1,35.0);
INSERT INTO order_lines VALUES(34,16,6,1,1200.0);
INSERT INTO order_lines VALUES(35,17,2,1,1500.5);
INSERT INTO order_lines VALUES(36,18,17,1,1500.0);
INSERT INTO order_lines VALUES(37,19,22,1,900.0);
INSERT INTO order_lines VALUES(38,20,17,1,1500.0);
INSERT INTO order_lines VALUES(39,21,10,1,600.0);
INSERT INTO order_lines VALUES(40,21,17,1,1500.0);
INSERT INTO order_lines VALUES(41,22,23,1,1400.0);
INSERT INTO order_lines VALUES(42,23,4,1,50.75);
INSERT INTO order_lines VALUES(43,24,18,1,1100.0);
INSERT INTO order_lines VALUES(44,25,9,1,2500.0);
INSERT INTO order_lines VALUES(45,25,22,1,900.0);
CREATE TABLE products (
    product_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    description TEXT,
    price REAL NOT NULL,
    stock_quantity INTEGER NOT NULL
);
INSERT INTO products VALUES(1,'Road Bike','A fast road bike for racing',1200.0,30);
INSERT INTO products VALUES(2,'Mountain Bike','Durable bike for off-road trails',1500.5,20);
INSERT INTO products VALUES(3,'Hybrid Bike','Versatile bike for both city and trails',1100.0,40);
INSERT INTO products VALUES(4,'Helmet','Safety helmet for cyclists',50.75,100);
INSERT INTO products VALUES(5,'Cycling Gloves','Comfortable gloves for long rides',25.0,75);
INSERT INTO products VALUES(6,'Road Bike','A fast, lightweight road bike',1200.0,30);
INSERT INTO products VALUES(7,'Mountain Bike','Rugged bike for off-road trails',1500.0,20);
INSERT INTO products VALUES(8,'Hybrid Bike','A versatile bike for both city and trails',800.0,40);
INSERT INTO products VALUES(9,'Electric Bike','Battery-powered bike for easy riding',2500.0,15);
INSERT INTO products VALUES(10,'Folding Bike','Compact bike for easy storage and transport',600.0,25);
INSERT INTO products VALUES(11,'Kids Bike','Perfect starter bike for children',300.0,40);
INSERT INTO products VALUES(12,'Cycling Helmet','Safety helmet for cyclists',120.0,60);
INSERT INTO products VALUES(13,'Bike Lock','Heavy-duty bike lock',45.0,80);
INSERT INTO products VALUES(14,'Water Bottle','Reusable water bottle for cyclists',25.0,100);
INSERT INTO products VALUES(15,'Bike Lights','LED bike lights for night riding',35.0,90);
INSERT INTO products VALUES(16,'Road Bike','A fast, lightweight bike for road use',1200.0,15);
INSERT INTO products VALUES(17,'Mountain Bike','Rugged bike for off-road trails',1500.0,20);
INSERT INTO products VALUES(18,'Hybrid Bike','A versatile bike for both road and off-road',1100.0,25);
INSERT INTO products VALUES(19,'Electric Bike','Battery-powered bike for easy riding',2500.0,10);
INSERT INTO products VALUES(20,'Folding Bike','Compact bike for easy transport and storage',800.0,15);
INSERT INTO products VALUES(21,'Touring Bike','Durable bike designed for long distances',1300.0,10);
INSERT INTO products VALUES(22,'BMX Bike','Agile bike designed for tricks and racing',900.0,20);
INSERT INTO products VALUES(23,'Cyclocross Bike','A bike for competitive off-road racing',1400.0,15);
INSERT INTO products VALUES(24,'Kids Bike','Smaller bike designed for children',300.0,30);
INSERT INTO products VALUES(25,'Tandem Bike','Bike designed for two riders',1800.0,5);
DELETE FROM sqlite_sequence;
INSERT INTO sqlite_sequence VALUES('customers',24);
INSERT INTO sqlite_sequence VALUES('products',25);
INSERT INTO sqlite_sequence VALUES('orders',25);
INSERT INTO sqlite_sequence VALUES('order_lines',45);
COMMIT;
