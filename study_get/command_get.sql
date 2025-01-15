-- DISTINCT
-- select DISTINCT p.product_name from products p;

-- select DISTINCT c.country from customers c;

-- select s.postal_code from suppliers s;

-- select DISTINCT e.last_name, e.title_of_courtesy from employees e;

-- select DISTINCT o.ship_via from orders o;

-- select * from customers limit 5;

-- select * from customers limit 10;

-- lay ra sql lay ra 30% nhân viên của công ty hiện tại 
-- WITH total_employee AS (
--     SELECT COUNT(*) AS total
--     FROM employees
-- )
-- SELECT *
-- FROM employees
-- LIMIT (SELECT total * 0.3 FROM total_employee);


-- ma khach hang khong trung lap lay ra 5 dong 

-- select DISTINCT  o.order_id from orders o limit 5;

-- select c.company_name as congty, c.postal_code as mabuucuc from customers c;

-- select * from orders o limit 15;

-- lay gia thap nhat cac san pham
-- select min(p.unit_price) from products p;
-- select max(p.unit_price) from products p;

-- select max(o.order_date) as ngaydathang from orders o;

-- select p.product_id, p.product_name from products p where p.units_in_stock = (
-- SELECT max(units_in_stock) from products);

-- select min(e.birth_date) from employees e;
 
-- select count(*) as numberofcustomer from customers;

-- select * from customers;

-- select sum(o.freight) from orders o;
-- select avg(od.quantity) from order_details od;

-- select count(*), avg(units_in_stock) from products p;

-- select count(*) as numberofproducts, 
-- 	sum(p.units_in_stock) as totalunitinstock,
-- 	avg(p.unit_price) as avgunitprice
-- from products p

-- select * from suppliers s; 

-- select s.company_name
-- from suppliers s 
-- ORDER BY s.company_name asc;

-- select * from products p
-- order by p.unit_price desc;

-- select * from employees e
-- order by e.last_name, first_name;

-- select * from order_details od
-- order by od.quantity desc 
-- limit 1;

-- select o.order_id, o.order_date from orders o
-- order by o.order_date;

-- select p.units_in_stock, p.product_name, p.unit_price from products p
-- order by p.units_in_stock;

-- select * from products;
-- select p.product_id, 
-- 		p.product_name,
-- 		p.units_in_stock,
-- 		p.units_on_order,
-- 		(p.units_in_stock - p.units_on_order) as stockremaining
-- from products p;

-- select od.unit_price * od.quantity as orderDetailValue from order_details od;

-- select avg(o.freight)/max(o.freight) as freightRatio from orders o;

-- select p.product_name, p.unit_price * 0.9 as discoutten from products p;

-- select * 
-- from employees e
-- where e.city = 'London'
-- order by e.last_name asc;

-- don hang giao muon
-- select * from orders o 
-- where o.required_date < o.shipped_date;

-- select o.order_id, o.required_date, o.shipped_date 
-- from orders o
-- where o.shipped_date > o.required_date; 

-- so luong don hang bi giao muon
-- select count(*) as donhanggiaomuon
-- from orders o
-- where o.shipped_date > o.required_date;

-- select * from order_details od 
-- where od.discount > 0.1;

-- select * from orders o
-- where o.ship_country = 'France';

-- select * from products p
-- where p.units_in_stock > 20;

-- and or not
-- select * 
-- from products p
-- where p.units_in_stock < 50 or p.units_in_stock > 100;

-- lie ke don hang giao den brazil bi muon 
-- select * 
-- from orders o
-- where o.required_date < o.shipped_date and o.ship_country = 'Brazil';

-- select * from products p
-- where p.unit_price < 100 and p.category_id <> 1;

-- select * from orders o 
-- where o.freight BETWEEN 50 and 100;

-- select * from products p
-- where p.units_in_stock > 20 and p.units_on_order < 20;

-- select * from products p
-- where p.unit_price >10 and p.unit_price < 20; 

-- select * from products p
-- where p.unit_price BETWEEN 10 and 20;

-- select sum(o.freight) as totalDelivery from orders o
-- where o.order_date between '1996-07-01' and '1996-07-31';

-- select o.* from orders o
-- where o.ship_via = 3 and  o.order_date between '1996-01-01' and '1997-12-31';

-- bat dau bang chu A
-- select * from customers c
-- where c.country like 'A%'

-- select * from orders o
-- where o.ship_country like '%a%';

-- select * from orders o
-- where o.ship_country like 'U_';

-- select * from orders o
-- where o.ship_country like 'U%';

-- select * from suppliers s
-- where s.company_name like '%b%';

-- will card ky tu dai dien
-- select * from customers c 
-- where c.contact_name like 'A%';

-- select * from customers c 
-- where c.contact_name like 'H_%';

-- cu phap nay khong duoc ho tro trong postgresql
-- select * from orders o 
-- where o.ship_city like 'L[u,o]%';

-- SELECT o.ship_city
-- FROM orders o
-- WHERE o.ship_city SIMILAR TO 'L(u|o)%';

-- SELECT *
-- FROM orders o
-- WHERE o.ship_city SIMILAR TO 'L[a-d]%';

-- select o.ship_city from orders o
-- where o.ship_city SIMILAR TO 'L[^uo]%'

-- select o.ship_city from orders o
-- where o.ship_city SIMILAR TO 'L[a-e]%';

-- select * from suppliers s
-- where s.company_name SIMILAR TO 'A%[^b]%'

-- in not in trong sql
-- select * from orders o 
-- where o.ship_country in ('UK', 'Germany', 'Brazil');

-- select * from orders o 
-- where o.ship_country not in ('UK', 'Germany', 'Brazil');

-- select * from products p 
-- where p.category_id not in (2, 3 ,4);

-- select * from employees e
-- where e.title_of_courtesy not in ('Ms.', 'Mrs.');

-- select * from customers c 
-- where c.city in ('Berlin', 'London', 'Warszawa');

-- lay don hang chua duoc giao hang 
-- select * from orders o
-- where o.shipped_date is null;

-- select count(*) from orders o
-- where o.shipped_date is null;

-- select * from customers c 
-- where c.company_name is null;

-- select * from orders o 
-- where o.ship_region is not null and o.shipped_date is null;

-- group by nhom du lieu voi nhau 
-- hay duoc dung de count max min avg sum 

-- moi khach dat bao nhieu don hang
-- select o.customer_id, count(*) as totalOders from orders o 
-- group by o.customer_id

-- select p.supplier_id, count(*), avg(p.unit_price) from products p
-- group by p.supplier_id

-- so luong ton cho moi the loai co trong kho
-- select p.category_id, sum(p.units_in_stock) from products p 
-- group by p.category_id

-- gia van chuyen thap nhat va lon nhat 
-- theo tung thanh pho va quoc gia khac nhau
-- hieu ro group by hai truong
-- select o.ship_city,o.ship_country, max(o.freight), min(o.freight) from orders o 
-- group by o.ship_city, o.ship_country
-- order by max(o.freight) desc;

-- day month year
-- tinh so luong don dat hang trong nam 1987 cua tugn khach hang
-- SELECT o.customer_id, COUNT(*), EXTRACT(YEAR FROM o.order_date) AS order_year
-- FROM orders o
-- where EXTRACT(YEAR FROM o.order_date) = 1996
-- GROUP BY o.customer_id, EXTRACT(YEAR FROM o.order_date);

-- loc don hang duoc dat vao thang 5 nam 1997
-- select EXTRACT(month FROM o.order_date), EXTRACT(year FROM o.order_date), o.order_id 
-- from orders o 
-- where EXTRACT(month FROM o.order_date) = 5 and EXTRACT(year FROM o.order_date) = 1997

-- select EXTRACT(month FROM o.order_date), EXTRACT(year FROM o.order_date), EXTRACT(year FROM o.order_date), o.order_id
-- from orders o 
-- where EXTRACT(day FROM o.order_date) = 4 and EXTRACT(month FROM o.order_date) = 9 and EXTRACT(year FROM o.order_date) = 1996 

-- select  EXTRACT(year FROM o.order_date), o.customer_id, count(*)
-- from orders o 
-- where EXTRACT(year FROM o.order_date) = 1998 
-- group by o.customer_id, EXTRACT(year FROM o.order_date)
-- order by  count(*) asc;

-- select o.order_id, extract (month from o.order_date), extract(year from o.order_date)
-- from orders o 
-- where  extract (month from o.order_date) = 5
-- order by o.order_date asc;

-- select o.customer_id,count(*) as totalOrder from orders o 
-- group by o.customer_id
-- having count(*)> 20

-- select p.supplier_id, count(*),sum(p.units_in_stock), avg(p.unit_price) from products p 
-- group by p.supplier_id
-- having sum(p.units_in_stock) > 30 and avg(p.unit_price) < 50

-- loc ra don thang theo thang trong do moi don hang nam trong khoan 1997-07-01 den 1996-12-31
-- sap xep thang tang dan
-- select EXTRACT(month from o.shipped_date), sum(o.freight) 
-- from orders o
-- where o.shipped_date BETWEEN '1996-07-01' and '1996-12-31' 
-- group by EXTRACT(month from o.shipped_Date)
-- order by EXTRACT(month from o.shipped_Date) asc;

-- select o.ship_city, count(*) from orders o
-- group by o.ship_city
-- having count(*) > 16 
-- order by count(*) desc;

-- on tap sql
-- select o.customer_id, count(*) from orders o
-- group by o.customer_id
-- order by count(*) desc; 

-- select o.employee_id, count(*) as totalOrder
-- from orders o
-- group by o.employee_id
-- having count(*) > 100
-- order by count(*) desc;

-- hay cho biet the loai nao co so san pham khac nhau lon hon 11
-- select p.category_id, count(p.product_id) as totalProduct 
-- from products p
-- group by p.category_id
-- having count(p.product_id) > 11

-- hay cho biet the loai nao co tong so trong kho > 350 
-- select p.category_id, sum(p.units_in_stock) 
-- from products p
-- group by p.category_id
-- having sum(p.units_in_stock) > 350

-- cho biet quoc gia nao co nhieu hon 7 khach hang 
-- select o.ship_country, count(o.customer_id) 
-- from orders o 
-- group by o.ship_country
-- having count(o.customer_id) > 7

-- hay cho biet nhung ngay nao co nhieu hon 5 don hang duoc giao 
-- sap xep tang dan ngay giao 
-- select o.shipped_date, count(o.order_id) 
-- from orders o
-- group by o.shipped_date
-- having count(o.order_id) > 5
-- order by o.shipped_date asc;

-- hay cho biet quoc gia bat dau bang chu 'A' va 'G'
-- va co so luong don dat hang lon hon 29
-- select o.ship_country ,count(o.order_id)
-- from orders o
-- where o.ship_country SIMILAR to '[A|G]%'
-- group by o.ship_country
-- having count(o.order_id) > 29
-- order by count(o.order_id) desc;

-- hay cho biet nhung thanh pho nao co so luong don hang khac 1 va 2 
-- ngay dat hang tu '1997-04-01' den ngay '1997-08-31'
-- select o.ship_city, count(*) 
-- from orders o
-- group by o.ship_city
-- having count(*) <> 1 and count(*) <> 2;




