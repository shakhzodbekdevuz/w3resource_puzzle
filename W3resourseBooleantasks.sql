use W3Resource
go

--Boolean 
--exercises 1
select * from Inventory.Customer where grade>100

--Exercises 2
select * from Inventory.Customer where grade>100  and city='New York'

--Exercises 3
select * from Inventory.Customer where grade>100  or city='New York'

--Exercises 4
select * from Inventory.Customer where city!='New York'  and grade<=100

--Exercises 6
select * from Inventory.Orders where not ((ord_date='2012-09-10' and salesman_id>5005) or purch_amt>1000 )

--Exercises 7
select * from Inventory.Salesman where commission>0.10 and commission<0.12

--Exercises 8
select * from Inventory.Orders where purch_amt<200 or not (ord_date>='2012-02-10' and customer_id<3009)

--Exercises 9
select ord_no, purch_amt,ord_date, customer_id,salesman_id from Inventory.Orders where not (ord_date='2012-08-17' or(customer_id>3005 and purch_amt<1000))


--Exercises 10
select ord_no,purch_amt,((purch_amt*100)/6000) as 'A', (100*(6000-purch_amt)/6000) as 'U' from Inventory.Orders where (purch_amt*100)/6000>50

--Exercises 11
select * from emp_details where emp_lname='Dosni' or emp_lname='Mardy' 

--Exercises 12
select *from emp_details where emp_dept=47 or emp_dept=63