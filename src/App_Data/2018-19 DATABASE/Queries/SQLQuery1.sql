
--Select DISTINCT(student_id),attID,attdate, attStatus from AttendanceMaster1
--where attdate=convert(datetime,'22/8/2014', 103) order by student_id ASC 
--trest
--SELECT DISTINCT(student_id),attID,attdate, attStatus FROM AttendanceMaster1 WHERE attdate=convert(datetime,'22/8/2014', 103) AND attID NOT IN (SELECT MIN(attID) FROM AttendanceMaster1 GROUP BY student_id )
-- order by student_id Asc 
--SELECT CONVERT(VARCHAR(10), '19/8/2014 11:02:00 AM', 103)
--delete from AttendanceMaster1 where student_id = 999
--select CONVERT(VARCHAR(10),'21/08/2014',103) as sampletest
--SELECT CONVERT(VARCHAR(12),GETDATE(), 103)
--SELECT DATENAME(MONTH, GETDATE()) + '.' + DATENAME(DAY,GETDATE()) + '.' + DATENAME(YEAR, GETDATE())
--SELECT convert(datetime, '20/08/2014', 103)
--Select DISTINCT student_id,attID, attStatus from AttendanceMaster1 
--where attdate=convert(datetime,'20/08/2014', 103)
--order by student_id Asc 
--SELECT CAST(FLOOR(CAST(GETDATE() AS FLOAT)) AS datetime)
--SELECT CAST(CEILING (CAST(GETDATE() AS FLOAT)) AS datetime) as hpp
--UPDATE AttendanceMaster1
--SET attdate=convert(datetime,'20/8/2014', 103)
--SELECT DISTINCT(student_id),attID,attdate, attStatus FROM AttendanceMaster1 WHERE attdate=convert(datetime,'22/8/2014', 103) AND attID NOT IN (SELECT MIN(attID) FROM AttendanceMaster1 GROUP BY student_id )
select distinct student_id ,attdate,attStatus from AttendanceMaster1 where (attdate BETWEEN convert(datetime,'23/7/2014', 103) AND convert(datetime,'23/8/2014', 103)) AND student_id IN(SELECT student_id FROM AttendanceMaster1 where student_id =999); 

UPDATE [Demos].[dbo].[reg_details] SET [student_id] =999,[name] ='HTESH',[emailid] ='abc@abc.com',[mobile] =9876543210,[city] ='Ahmedabad',[uname] ='abc@abc.com',[upassword] ='123',[simage] = '001.JPG' WHERE uid =0
--2017 delete user

USE [Demos]
GO

DELETE FROM [dbo].[reg_details]
      WHERE emailid=''
GO
