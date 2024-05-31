USE [master]
GO
/****** Object:  Database [Demos]    Script Date: 6/30/2018 12:30:01 PM ******/
CREATE DATABASE [Demos] ON  PRIMARY 
( NAME = N'Demos', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\Demos.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Demos_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\Demos_log.ldf' , SIZE = 13632KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
GO
ALTER DATABASE [Demos] SET COMPATIBILITY_LEVEL = 90
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Demos].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Demos] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Demos] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Demos] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Demos] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Demos] SET ARITHABORT OFF 
GO
ALTER DATABASE [Demos] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Demos] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Demos] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Demos] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Demos] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Demos] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Demos] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Demos] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Demos] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Demos] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Demos] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Demos] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Demos] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Demos] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Demos] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Demos] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Demos] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Demos] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Demos] SET  MULTI_USER 
GO
ALTER DATABASE [Demos] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Demos] SET DB_CHAINING OFF 
GO
USE [Demos]
GO
/****** Object:  User [tybca]    Script Date: 6/30/2018 12:30:01 PM ******/
CREATE USER [tybca] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SYBCA4]    Script Date: 6/30/2018 12:30:01 PM ******/
CREATE USER [SYBCA4] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SYBCA]    Script Date: 6/30/2018 12:30:01 PM ******/
CREATE USER [SYBCA] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [sybca]    Script Date: 6/30/2018 12:30:01 PM ******/
CREATE USER [sybca] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [BUILTIN\Users]    Script Date: 6/30/2018 12:30:01 PM ******/
CREATE USER [BUILTIN\Users] FOR LOGIN [BUILTIN\Users]
GO
ALTER ROLE [db_owner] ADD MEMBER [SYBCA4]
GO
ALTER ROLE [db_owner] ADD MEMBER [SYBCA]
GO
ALTER ROLE [db_datareader] ADD MEMBER [BUILTIN\Users]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [BUILTIN\Users]
GO
/****** Object:  Table [dbo].[AttendanceMaster1]    Script Date: 6/30/2018 12:30:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AttendanceMaster1](
	[attID] [int] IDENTITY(1,1) NOT NULL,
	[student_id] [int] NULL,
	[attmonth] [int] NULL,
	[attYear] [int] NULL,
	[attStatus] [bit] NULL,
	[remarks] [varchar](200) NULL,
	[attdate] [datetime] NULL,
	[loggedInDate] [datetime] NULL,
	[ipaddress] [varchar](50) NULL,
 CONSTRAINT [PK_AttendanceMaster1] PRIMARY KEY CLUSTERED 
(
	[attID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[category]    Script Date: 6/30/2018 12:30:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category](
	[catid] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[catname] [nvarchar](50) NULL,
	[cactive] [bit] NULL,
 CONSTRAINT [PK_category] PRIMARY KEY CLUSTERED 
(
	[catid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[course_master]    Script Date: 6/30/2018 12:30:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[course_master](
	[cid] [numeric](18, 0) NULL,
	[cname] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dept]    Script Date: 6/30/2018 12:30:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dept](
	[did] [numeric](18, 0) NOT NULL,
	[dname] [varchar](50) NULL,
 CONSTRAINT [PK_dept] PRIMARY KEY CLUSTERED 
(
	[did] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[emailOTP]    Script Date: 6/30/2018 12:30:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[emailOTP](
	[seqid] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[emailid] [nvarchar](50) NOT NULL,
	[rawotp] [nchar](10) NOT NULL,
	[timestamp] [datetime] NOT NULL,
	[exptime] [datetime] NOT NULL,
 CONSTRAINT [PK_emailOTP] PRIMARY KEY CLUSTERED 
(
	[seqid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[employee]    Script Date: 6/30/2018 12:30:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employee](
	[eid] [numeric](18, 0) NOT NULL,
	[ename] [varchar](50) NULL,
	[did] [numeric](18, 0) NULL,
	[salary] [numeric](18, 0) NULL,
	[image] [varchar](50) NULL,
 CONSTRAINT [PK_employee] PRIMARY KEY CLUSTERED 
(
	[eid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[err_data]    Script Date: 6/30/2018 12:30:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[err_data](
	[err_id] [numeric](5, 0) IDENTITY(1,1) NOT NULL,
	[err_code] [nvarchar](50) NULL,
	[err_message] [nvarchar](500) NULL,
	[err_details] [nvarchar](1000) NULL,
	[err_source] [nvarchar](100) NULL,
	[err_user] [nvarchar](100) NULL,
	[err_userid] [nvarchar](50) NULL,
	[err_date] [nvarchar](50) NULL,
	[err_time] [nvarchar](50) NULL,
 CONSTRAINT [PK_err_data] PRIMARY KEY CLUSTERED 
(
	[err_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hitlist]    Script Date: 6/30/2018 12:30:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hitlist](
	[sid] [numeric](18, 0) NULL,
	[sname] [nvarchar](50) NULL,
	[smobile] [nvarchar](50) NULL,
	[semail] [nvarchar](50) NULL,
	[scourse] [numeric](18, 0) NULL,
	[scity] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 6/30/2018 12:30:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[pid] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[pname] [nvarchar](50) NULL,
	[catid] [numeric](18, 0) NULL,
	[pdesc] [nvarchar](50) NULL,
	[pqty] [numeric](18, 0) NULL,
	[pprice] [numeric](18, 0) NULL,
	[pactive] [bit] NULL,
	[pcode] [nvarchar](50) NULL,
 CONSTRAINT [PK_product] PRIMARY KEY CLUSTERED 
(
	[pid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[reg_details]    Script Date: 6/30/2018 12:30:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reg_details](
	[uid] [numeric](3, 0) NOT NULL,
	[student_id] [numeric](3, 0) NULL,
	[name] [varchar](50) NULL,
	[emailid] [varchar](50) NULL,
	[mobile] [nchar](10) NULL,
	[city] [varchar](50) NULL,
	[uname] [varchar](50) NULL,
	[upassword] [varchar](50) NULL,
	[simage] [varchar](50) NULL,
	[div] [numeric](2, 0) NULL,
	[amount_bal] [numeric](8, 2) NULL,
	[account_type] [varchar](20) NULL,
 CONSTRAINT [PK_reg_details] PRIMARY KEY CLUSTERED 
(
	[uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student_Assignment]    Script Date: 6/30/2018 12:30:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student_Assignment](
	[Sr_No] [bigint] IDENTITY(1,1) NOT NULL,
	[Academic_Year] [varchar](50) NULL,
	[Ass_Sem] [varchar](50) NULL,
	[Ass_Div] [varchar](50) NULL,
	[Ass_AssignmentNo] [varchar](50) NULL,
	[Ass_Type] [varchar](50) NULL,
	[Ass_URL] [varchar](300) NULL,
	[IsActive] [bit] NULL,
	[Ass_Date] [datetime] NULL,
	[Ass_SubDate] [datetime] NULL,
	[yearID] [numeric](18, 0) NULL,
	[subjectID] [numeric](18, 0) NULL,
 CONSTRAINT [PK_Student_Assignment] PRIMARY KEY CLUSTERED 
(
	[Sr_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[studinfo]    Script Date: 6/30/2018 12:30:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[studinfo](
	[sid] [numeric](2, 0) NOT NULL,
	[sname] [varchar](50) NULL,
	[smobile] [varchar](50) NULL,
	[simage] [varchar](50) NULL,
 CONSTRAINT [PK_studinfo] PRIMARY KEY CLUSTERED 
(
	[sid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[subjectMaster]    Script Date: 6/30/2018 12:30:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[subjectMaster](
	[subjectID] [numeric](18, 0) NOT NULL,
	[subjectName] [nvarchar](50) NULL,
	[yearID] [numeric](18, 0) NULL,
 CONSTRAINT [PK_subjectMaster] PRIMARY KEY CLUSTERED 
(
	[subjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[transaction_master]    Script Date: 6/30/2018 12:30:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[transaction_master](
	[srno] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[student_id] [numeric](3, 0) NULL,
	[tr_type] [varchar](50) NULL,
	[tr_date] [varchar](50) NULL,
	[tr_time] [varchar](50) NULL,
	[tr_details] [varchar](50) NULL,
	[tr_amt] [numeric](18, 2) NULL,
	[tr_total] [numeric](18, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_info]    Script Date: 6/30/2018 12:30:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_info](
	[uid] [numeric](3, 0) NULL,
	[uname] [varchar](50) NULL,
	[upassword] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[visitor_log]    Script Date: 6/30/2018 12:30:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[visitor_log](
	[student_id] [numeric](3, 0) NOT NULL,
	[sub_id] [nvarchar](50) NULL,
	[visittime] [nvarchar](50) NULL,
	[loggedcounter] [numeric](18, 0) NULL,
	[hostmachine] [nvarchar](50) NULL,
	[ipaddress] [nvarchar](50) NULL,
 CONSTRAINT [PK_visitor_log] PRIMARY KEY CLUSTERED 
(
	[student_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[yearMaster]    Script Date: 6/30/2018 12:30:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[yearMaster](
	[yearID] [numeric](18, 0) NULL,
	[yearName] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[stu123]    Script Date: 6/30/2018 12:30:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
creATE PROCEDURE [dbo].[stu123]
	/*
	(
	@parameter1 int = 5,
	@parameter2 datatype OUTPUT
	)
	*/
	(@psid int)
AS
	/* SET NOCOUNT ON */
	select * from student where sid=@psid;
	RETURN
GO
USE [master]
GO
ALTER DATABASE [Demos] SET  READ_WRITE 
GO
