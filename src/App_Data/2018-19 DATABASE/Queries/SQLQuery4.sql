/****** Script for SelectTopNRows command from SSMS  ******/
select count(*)as total,student_id from reg_details r group by student_id having count(*)>1