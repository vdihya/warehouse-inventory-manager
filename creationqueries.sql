drop table warehouse;
create table warehouse(productid int auto_increment primary key, productname varchar(100) NOT NULL DEFAULT "INVALID",productcat varchar(100) NOT NULL DEFAULT "INVALID", puc float DEFAULT 0.0,min int DEFAULT 0,stockdate datetime DEFAULT current_timestamp, units int DEFAULT 0);
create table clients(clientid int auto_increment primary key,clientname varchar(100) NOT NULL DEFAULT "INVALID", address varchar(100) NOT NULL DEFAULT "INVALID",phone char(10) NOT NULL DEFAULT "0000000000");
create table purchasedetails(purchaseid int auto_increment primary key,productid int,cost double DEFAULT 0.00,unitspurch int NOT NULL DEFAULT 0,foreign key(productid) references warehouse(productid));
create table purchased_by(purchaseid int,clientid int,date_of_purchase datetime DEFAULT current_timestamp,foreign key(purchaseid) references purchasedetails(purchaseid),foreign key(clientid) references clients(clientid));
create table deliverydetails(deliveryid int auto_increment primary key,date_of_delivery datetime, status varchar(100));
create table delivered_to(deliveryid int, clientid int, purchaseid int, date_of_schedule datetime,foreign key(deliveryid) references deliverydetails(deliveryid),foreign key(purchaseid) references purchasedetails(purchaseid),foreign key(clientid) references clients(clientid));
 