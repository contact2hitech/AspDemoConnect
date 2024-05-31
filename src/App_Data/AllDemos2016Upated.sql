IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'BUILTIN\Users')
CREATE USER [BUILTIN\Users] FOR LOGIN [BUILTIN\Users]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[studinfo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[studinfo](
	[sid] [numeric](2, 0) NOT NULL,
	[sname] [varchar](50) NULL,
	[smobile] [varchar](50) NULL,
	[simage] [varchar](50) NULL,
 CONSTRAINT [PK_studinfo] PRIMARY KEY CLUSTERED 
(
	[sid] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[visitor_log]') AND type in (N'U'))
BEGIN
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
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AttendanceMaster1]') AND type in (N'U'))
BEGIN
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
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[reg_details]') AND type in (N'U'))
BEGIN
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
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[employee]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[employee](
	[eid] [numeric](18, 0) NOT NULL,
	[ename] [varchar](50) NULL,
	[did] [numeric](18, 0) NULL,
	[salary] [numeric](18, 0) NULL,
	[image] [varchar](50) NULL,
 CONSTRAINT [PK_employee] PRIMARY KEY CLUSTERED 
(
	[eid] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[product]') AND type in (N'U'))
BEGIN
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
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[category]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[category](
	[catid] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[catname] [nvarchar](50) NULL,
	[cactive] [bit] NULL,
 CONSTRAINT [PK_category] PRIMARY KEY CLUSTERED 
(
	[catid] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stu123]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'creATE PROCEDURE [dbo].[stu123]
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
	RETURN' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[yearMaster]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[yearMaster](
	[yearID] [numeric](18, 0) NULL,
	[yearName] [nvarchar](50) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Student_Assignment]') AND type in (N'U'))
BEGIN
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
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[transaction_master]') AND type in (N'U'))
BEGIN
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
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[err_data]') AND type in (N'U'))
BEGIN
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
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[subjectMaster]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[subjectMaster](
	[subjectID] [numeric](18, 0) NOT NULL,
	[subjectName] [nvarchar](50) NULL,
	[yearID] [numeric](18, 0) NULL,
 CONSTRAINT [PK_subjectMaster] PRIMARY KEY CLUSTERED 
(
	[subjectID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dept]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[dept](
	[did] [numeric](18, 0) NOT NULL,
	[dname] [varchar](50) NULL,
 CONSTRAINT [PK_dept] PRIMARY KEY CLUSTERED 
(
	[did] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[user_info]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[user_info](
	[uid] [numeric](3, 0) NULL,
	[uname] [varchar](50) NULL,
	[upassword] [varchar](50) NULL
) ON [PRIMARY]
END
