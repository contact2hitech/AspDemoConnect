/****** Script for SelectTopNRows command from SSMS  ******/
select count(*)as t,emailid from reg_details r group by emailid having count(*)>1