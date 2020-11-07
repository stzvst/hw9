create table logs (
tablename VARCHAR(255) COMMENT 'Имя таблицы',
extenal_id INT COMMENT 'Первичный ключ таблицы tavlename',
name VARCHAR(255) COMMENT 'Поле name таблицы tablename',
created_at DATETIME default CURRENT_TIMESTAMP 
) COMMENT = 'Журнал интернет-магазина' ENGINE=Archive;

DELIMITER //
create trigger log_after_insert_to_users after insert on users
for each row begin 
	insert into logs (tablename, extenal_id, name) VALUES('users', NEW.id, NEW.name);
end//

insert into users (name, birthday_at) values ('Иван', '1982-07-02')//

create trigger log_after_insert_to_catalogs after insert on catalogs
for each row begin 
	insert into logs (tablename, extenal_id, name) VALUES('catalogs', NEW.id, NEW.name);
	end//
	
	create trigger log_after_insert_to_products after insert on products
for each row begin 
	insert into logs (tablename, extenal_id, name) VALUES('products', NEW.id, NEW.name);
end//
	

insert into catalogs (name) values
('Оперативная память'),
('Жесткие диски'),
('Блоки питания')//

insert into products 
(name,description, price, catalog_id  )
values 
('ASUS PRIME',' HDMI, SATA3, PCI, USB 3','0470.00', 2)//

select*from logs//

