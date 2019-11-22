
create table products  (productid int auto_increment primary key,
						productname varchar(100) DEFAULT "N/A",
						productcat varchar(100)  DEFAULT "N/A", 
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
                              date_of_purchase date);
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
                                
create trigger testtrigger1 after insert on warehouse.purchases
for each row
insert into deliveries(purchaseid, clientid) values (new.purchaseid, new.clientid);

create trigger testtrigger2 after insert on warehouse.deliveries
for each row
insert into deliverydetails values (new.deliveryid,"scheduled for delivery",curdate()+5,curdate());

drop procedure unitlimitcheck;
delimiter //
create procedure unitlimitcheck(IN pid int, OUT result int)
begin
	declare insertedunits int;
    declare minimumunits int;
    declare availableunits int;
	declare valid int default 1;
	declare invalid int default 0;
    set invalid=0;
    set valid=1;
    select units into @insertedunits from purchasedetails where purchaseid=pid;
    select min into @minimumunits from products where productid=(select productid from purchases where purchaseid=pid);
    select units into @availableunits from products where productid=(select productid from purchases where purchaseid=pid);
    if (@insertedunits > @minimumunits) then
		if (@availableunits > @insertedunits) then
			set result = 1;
        else
			set result = 0;
			delete from purchasedetails where purchaseid = pid;
        end if;
	else
        set result = 0;
		delete from purchasedetails where purchaseid = pid;
	end if;
    
end //
