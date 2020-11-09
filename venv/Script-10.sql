DELIMITER //
select NOW(), hour(NOW()) // 

create function get_hour ()
returns int not deterministic
begin
	return hour(now());
end

create function hello ()
returns tinytext not deterministic
begin
	declare hour INT;
set hour = HOUR(NOW());
case 
when hour between 0 and 5 then 
return "Доброй ночи";
when hour between 6 and 11 then 
return "Доброе утро";
when hour between 12 and 17 then 
return "Добрый день";
when hour between 18 and 23 then 
return "Добрый вечер";
end