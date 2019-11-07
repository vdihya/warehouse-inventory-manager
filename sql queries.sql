
create table products  (productid int auto_increment primary key,
						productname varchar(100) NOT NULL DEFAULT "N/A",
						productcat varchar(100) NOT NULL DEFAULT "N/A", 
                        puc float DEFAULT 0,
                        min int DEFAULT 0,
						stockdate datetime DEFAULT current_timestamp,
                        units int DEFAULT 0);
                        
create table clients   (clientid int auto_increment primary key,
						clientname varchar(100) NOT NULL DEFAULT "N/A", 
                        address varchar(100) NOT NULL DEFAULT "N/A",
                        phone char(10) NOT NULL DEFAULT "N/A");

 create table purchases (purchaseid int auto_increment primary key,
						 clientid int,
                         productid int,
						 foreign key(clientid) references clients(clientid) on delete cascade,
                         foreign key(productid) references products(productid) on delete cascade);
                         
create table purchasedetails (purchaseid int, 
							  cost double default 0,
                              units int default 0,
                              date_of_purchase date,
                              foreign key(purchaseid) references purchases(purchaseid) on delete cascade);
create table deliveries (deliveryid int primary key,
						 purchaseid int,
                         clientid int,
                         foreign key(purchaseid) references purchases(purchaseid) on delete cascade,
                         foreign key(clientid) references clients(clientid) on delete cascade);
create table deliverydetails (deliveryid int,
							  status_ varchar(100),
                              estimated_delivery_by date,
                              date_of_schedule date,
                              foreign key(deliveryid) references deliveries(deliveryid) on delete cascade);