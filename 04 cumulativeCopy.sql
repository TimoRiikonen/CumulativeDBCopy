-- USE [LongTermDatabaseName]
USE [LongTermDatabaseName]

-- InsertTable1NameToHere
DECLARE @PreviousUpdate datetime2
SET @PreviousUpdate = (SELECT InsertTable1NameToHere FROM [LongTermDatabaseName]..[CumulativeCopyTimes])
DECLARE @ThisUpdate datetime2
SET @ThisUpdate = (SELECT MAX([lastUpdate]) FROM [LongTermDatabaseName].[dbo].[InsertTable1NameToHere])
SELECT 'InsertTable1NameToHere',@PreviousUpdate,@ThisUpdate

MERGE INTO [LongTermDatabaseName].dbo.InsertTable1NameToHere AS Target
USING (SELECT 	[InsertTable1NameToHereKeyColumn]
      ,[InsertTable1NameToHereColumn2]
      ,[InsertTable1NameToHereColumn3]
	  ,[lastUpdate]
  FROM [LongTermDatabaseName].[dbo].[InsertTable1NameToHere] Source
  WHERE @ThisUpdate >= Source.[lastUpdate]
  ) AS Source
  ON (Target.InsertTable1NameToHereKeyColumn = Source.InsertTable1NameToHereKeyColumn)
WHEN MATCHED AND ((Source.lastUpdate > @PreviousUpdate) OR (@PreviousUpdate IS NULL))
THEN UPDATE SET Target.[InsertTable1NameToHereColumn2] = Source.[InsertTable1NameToHereColumn2], Target.[InsertTable1NameToHereColumn3] = Source.[InsertTable1NameToHereColumn3]
WHEN NOT MATCHED THEN
INSERT VALUES (
	Source.[InsertTable1NameToHereKeyColumn]
      ,[InsertTable1NameToHereColumn2]
      ,[InsertTable1NameToHereColumn3]
);

UPDATE [LongTermDatabaseName]..[CumulativeCopyTimes] SET InsertTable1NameToHere = @ThisUpdate
GO


-- InsertTable2NameToHere
DECLARE @PreviousUpdate datetime2
SET @PreviousUpdate = (SELECT InsertTable2NameToHere FROM [LongTermDatabaseName]..[CumulativeCopyTimes])
DECLARE @ThisUpdate datetime2
SET @ThisUpdate = (SELECT MAX([lastUpdate]) FROM [LongTermDatabaseName].[dbo].[InsertTable2NameToHere])
SELECT 'InsertTable2NameToHere',@PreviousUpdate,@ThisUpdate


MERGE INTO [LongTermDatabaseName].dbo.InsertTable2NameToHere AS Target
USING (SELECT 	[InsertTable2NameToHereKeyColumn]
      ,[InsertTable2NameToHereColumn2]
      ,[InsertTable2NameToHereColumn3]
      ,[InsertTable2NameToHereColumn4]
	  ,[lastUpdate]
  FROM [LongTermDatabaseName].[dbo].[InsertTable2NameToHere] Source
  WHERE @ThisUpdate >= Source.[lastUpdate]
  ) AS Source
  ON (Target.InsertTable2NameToHereKeyColumn = Source.InsertTable2NameToHereKeyColumn)
WHEN MATCHED AND ((Source.lastUpdate > @PreviousUpdate) OR (@PreviousUpdate IS NULL))
THEN UPDATE SET Target.[InsertTable2NameToHereColumn2] = Source.[InsertTable2NameToHereColumn2], Target.[InsertTable2NameToHereColumn3] = Source.[InsertTable2NameToHereColumn3],
	Target.[InsertTable2NameToHereColumn4] = Source.[InsertTable2NameToHereColumn4]
WHEN NOT MATCHED THEN
INSERT VALUES (
	Source.[InsertTable2NameToHereKeyColumn]
      ,[InsertTable2NameToHereColumn2]
      ,[InsertTable2NameToHereColumn3]
      ,[InsertTable2NameToHereColumn4]
	  );

UPDATE [LongTermDatabaseName]..[CumulativeCopyTimes] SET InsertTable2NameToHere = @ThisUpdate
GO


-- InsertTable3NameToHere
DECLARE @PreviousUpdate datetime2
SET @PreviousUpdate = (SELECT InsertTable3NameToHere FROM [LongTermDatabaseName]..[CumulativeCopyTimes])
DECLARE @ThisUpdate datetime2
SET @ThisUpdate = (SELECT MAX([lastUpdate]) FROM [LongTermDatabaseName].[dbo].[InsertTable3NameToHere])
SELECT 'InsertTable3NameToHere',@PreviousUpdate,@ThisUpdate

MERGE INTO [LongTermDatabaseName].dbo.InsertTable3NameToHere AS Target
USING (SELECT 	[InsertTable3NameToHereKeyColumn]
      ,[InsertTable3NameToHereColumn2]
      ,[InsertTable3NameToHereColumn3]
      ,[lastUpdate]
  FROM [LongTermDatabaseName].[dbo].[InsertTable3NameToHere] Source
  WHERE @ThisUpdate >= Source.[lastUpdate]
  ) AS Source
  ON (Target.InsertTable3NameToHereKeyColumn = Source.InsertTable3NameToHereKeyColumn)
WHEN MATCHED AND ((Source.lastUpdate > @PreviousUpdate) OR (@PreviousUpdate IS NULL))
THEN UPDATE SET Target.[InsertTable3NameToHereColumn2] = Source.[InsertTable3NameToHereColumn2], Target.[InsertTable3NameToHereColumn3] = Source.[InsertTable3NameToHereColumn3]
WHEN NOT MATCHED THEN
INSERT VALUES (
	Source.[InsertTable3NameToHereKeyColumn]
      ,[InsertTable3NameToHereColumn2]
      ,[InsertTable3NameToHereColumn3]
);

UPDATE [LongTermDatabaseName]..[CumulativeCopyTimes] SET InsertTable3NameToHere = @ThisUpdate
GO
