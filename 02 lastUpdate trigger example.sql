-- ================================================
-- Template generated from Template Explorer using:
-- Create Trigger (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- See additional Create Trigger templates for more
-- examples of different Trigger statements.
--
-- This block of comments will not be included in
-- the definition of the function.
-- ================================================
USE [ShortTermDatabaseName]

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


UPDATE [InsertTable1NameToHere] SET lastUpdate = GetDate() WHERE lastUpdate IS NULL
GO

CREATE TRIGGER dbo.InsertTable1NameToHereLastUpdate
   ON  dbo.InsertTable1NameToHere
   AFTER UPDATE,INSERT
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for trigger here
	UPDATE [InsertTable1NameToHere] SET lastUpdate = GetDate() FROM [InsertTable1NameToHere] u INNER JOIN Inserted i ON u.InsertIdColumnToHere = i.InsertIdColumnToHere 

END
GO

UPDATE [InsertTable2NameToHere] SET lastUpdate = GetDate() WHERE lastUpdate IS NULL
GO


CREATE TRIGGER dbo.InsertTable2NameToHereLastUpdate
   ON  dbo.InsertTable2NameToHere
   AFTER UPDATE,INSERT
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for trigger here
	UPDATE [InsertTable2NameToHere] SET lastUpdate = GetDate() FROM [InsertTable2NameToHere] u INNER JOIN Inserted i ON u.InsertIdColumnToHere = i.InsertIdColumnToHere 

END
GO

UPDATE [InsertTable3NameToHereLastUpdate] SET lastUpdate = GetDate() WHERE lastUpdate IS NULL
GO

CREATE TRIGGER dbo.InsertTable3NameToHereLastUpdateLastUpdate
   ON  dbo.InsertTable3NameToHereLastUpdate
   AFTER UPDATE,INSERT
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for trigger here
	UPDATE [InsertTable3NameToHereLastUpdate] SET lastUpdate = GetDate() FROM [InsertTable3NameToHereLastUpdate] u INNER JOIN Inserted i ON u.InsertIdColumnToHere = i.InsertIdColumnToHere 

END
GO
