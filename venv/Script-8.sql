create or replace view products_catalogs as
select 
p.name as product,
c.name as catalog
from 
products as p
join 
catalogs as c 
on 
p.catalog_id;

select from products_catalogs;
