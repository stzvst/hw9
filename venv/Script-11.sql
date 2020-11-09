create trigger validate_name_description_insert before insert on products
for each row begin if new.name is null and new.description is null then
signal sqlstate '45000'
set message_text = 'Both name and description are NULL';
end if;
end//

create trigger validate_name_description_update before update on products
for each row begin
if new.name is null and new.description is null then 
signal sqlstate '45000'
set MESSAGE_TEXT = 'Both name and description are NULL';
end if;
end//