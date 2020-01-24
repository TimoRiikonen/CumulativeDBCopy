SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

USE [LongTermDatabaseName]
CREATE TABLE [dbo].[CumulativeCopyTimes](
	[InsertTable1NameToHere] [datetime2](7) NULL,
	[InsertTable2NameToHere] [datetime2](7) NULL,
	[InsertTable3NameToHere] [datetime2](7) NULL
) ON [PRIMARY]
GO
INSERT INTO [LongTermDatabaseName]..[CumulativeCopyTimes] (InsertTable1NameToHere) SELECT NULL
GO
