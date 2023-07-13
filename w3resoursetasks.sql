use W3Resource
go
--Exercise 1
select * from  Inventory.Salesman

--Exercise 2
select 'This is SQL Exercise, Practice and Solution';

--Exercise 3
select 1,2,3;

--Exercise 4
select 10+15

--Exercise 5
select 3*5

--Exercise 6
select  name, commission from Inventory.Salesman

--Exercise 7
select ord_date, salesman_id, ord_no, purch_amt from Inventory.Orders

--Exercise 8
select distinct salesman_id from Inventory.Orders

--Exercise 9
select city, name from Inventory.Salesman
where city='Paris'

--Exercise 10
 select customer_id, cust_name, city, grade, salesman_id from Inventory.Customer
 where grade=200

--Exercise 11
select ord_no, ord_date, purch_amt from Inventory.Orders
where salesman_id=5001

--Exercise 12
select year, subject, winner from nobel_win
where year=1970

--Exercise 13
select year, subject, winner from nobel_win
where subject='Literature' and year=1971

--Exercise 14
select year , subject from nobel_win
where winner='Dennis Gabor'

--Exercise 15
select winner from nobel_win
where subject='Physics' and year>=1950

--Exercise 16
select year, subject, winner, country from nobel_win
where year>=1965 and year<=1975

--Exercise 17
select year ,subject, winner, country, category from nobel_win
where year>=1972 and (winner='Menachem Begin' or winner='Yitzhak Rabin')

--Exercise 18
select year, subject, winner, country,  category from nobel_win
where winner like 'Louis %';

--Exercise 19
select * from nobel_win
where (subject ='Physics' AND year=1970) or (subject ='Economics' AND year=1971)

--Exercise 20
select * from nobel_win
where (subject ='Physics' or subject='Economics') and year=1970

--Exercise 21
select * from nobel_win
where (subject ='Physiology' and year<1971) or (subject='Peace' and year>=1974)

--Exercise 22
select * from nobel_win
where winner='Johannes Georg Bednorz'

--Exercise 23
select * from nobel_win
where subject not like 'P%' 

--Exercise 24
select * from nobel_win
where year=1970 and (subject<>'Chemistry' or subject<>'Economics')

--Exercise 25
select * from item_mast
where pro_price between 200 and 600

--Exercise 26
select avg(pro_price) from item_mast
where pro_com=16 


--Exercise 27
select pro_name as 'Item name',pro_price as 'Price and Rs' from dbo.item_mast

--Exercise 28
select pro_name, pro_price from dbo.item_mast
where pro_price>=250 
order by pro_price desc, pro_name

--Exercise 29
select avg(pro_price) , pro_com from item_mast
group  by pro_com

--Exercise 30
select pro_name,  pro_price from dbo.item_mast
where pro_price=(select min(pro_price) from dbo.item_mast)

--Exercise 31
select distinct emp_lname from dbo.emp_details

--Exercise 32
select * from dbo.emp_details
where emp_lname='Snares'

--Exercise 33
select * from dbo.emp_details
where emp_dept=57