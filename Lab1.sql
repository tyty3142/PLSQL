1-2. select idProduct, productname, price, active, type, iddepartment, stock 
from bb_product;

3. select idshopper, b.idbasket, b.orderplaced, b.dtordered, b.dtcreated
from bb_shopper s inner join bb_basket b using (idshopper);

4. select idproduct, p.productname, pc.categoryname, pd.optionname
from bb_product p inner join bb_productoption using (idproduct)
inner join bb_productoptiondetail pd using (idoption)
inner join bb_productoptioncategory pc using (idoptioncategory);




pg. 27

1. 
select distinct idproduct, productname, orderplaced
from bb_product p inner join bb_basketitem bi using (idproduct)
inner join bb_basket using (idbasket)
where orderplaced >= 1
order by idproduct asc;

2.
select idbasket, idproduct, p.productname, p.description
from bb_product p inner join bb_basketitem bi using (idproduct)
inner join bb_basket using (idbasket);

select idbasket,7 idproduct, productname, p.description
from bb_product p, bb_basket;

3.
select idbasket, lastname, idproduct, p.productname, p.description
from bb_product p inner join bb_basketitem bi using (idproduct)
inner join bb_basket using (idbasket)
inner join bb_shopper using (idshopper)
order by 1,2;

select idbasket, lastname, idproduct, productname, p.description
from bb_product p, bb_basket, bb_shopper;

4.
select idbasket, idshopper, to_char(dtordered, 'MONTH DD, YYYY') "Order Date"
from bb_basket
where dtordered like '%-FEB-12';

5.
select idproduct, count(quantity) Quantity
from bb_basketitem
group by idproduct
order by 1,2;

6.
select idproduct, count(quantity) Quantity
from bb_basketitem
where quantity <= 3
group by idproduct
order by 1,2;

7.
select idproduct, productname, price 
from bb_product
where price > (select avg(price) from bb_product);

8.
	create table CONTACTS
		(
			con_id number(4) primary key,
			company_name varchar2(30) not null,
			email varchar2(30),
			last_date date default sysdate,
			con_cnt number(3)
			check (con_cnt > 0)
		);
		
9.
insert into contacts
values(8493, 'George Foreman Grilling', 'blah@blah.com', '09-AUG-2018', 1);
commit;

insert into contacts
values(4942, 'why are you here?', 'stop@gethelp.com', default, 2);
commit;
10.
update contacts set email='grubhub@buhburg.com'
WHERE con_id='8493';
select * from contacts;
rollback;
select * from contacts	