/****** Object:  Table [dbo].[InsertTable1NameToHere]    Script Date: 2020-01-24 3:15:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InsertTable1NameToHere](
	[InsertTable1NameToHereKeyColumn] [int] NOT NULL,
	[InsertTable1NameToHereColumn2] [varchar](max) NULL,
	[InsertTable1NameToHereColumn3] [datetime2](7) NULL,
	[lastUpdate] [datetime2](7) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InsertTable2NameToHere]    Script Date: 2020-01-24 3:15:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InsertTable2NameToHere](
	[InsertTable2NameToHereKeyColumn] [nvarchar](max) NOT NULL,
	[InsertTable2NameToHereColumn2] [nchar](10) NULL,
	[InsertTable2NameToHereColumn3] [ntext] NULL,
	[InsertTable2NameToHereColumn4] [float] NULL,
	[lastUpdate] [datetime2](7) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InsertTable3NameToHere]    Script Date: 2020-01-24 3:15:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InsertTable3NameToHere](
	[InsertTable3NameToHereKeyColumn] [nchar](10) NOT NULL,
	[InsertTable3NameToHereColumn2] [decimal](18, 0) NULL,
	[InsertTable3NameToHereColumn3] [real] NULL,
	[lastUpdate] [datetime2](7) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_InsertTable2NameToHere]    Script Date: 2020-01-24 3:15:50 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_InsertTable2NameToHere] ON [dbo].[InsertTable2NameToHere]
(
	[InsertTable2NameToHereColumn2] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [ShortTermDatabaseName] SET  READ_WRITE 
GO
