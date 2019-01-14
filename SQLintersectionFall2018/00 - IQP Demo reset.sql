USE [tpch10g-btree];
GO

ALTER DATABASE SCOPED CONFIGURATION 
	SET BATCH_MODE_ON_ROWSTORE = ON;

ALTER DATABASE SCOPED CONFIGURATION 
	SET ROW_MODE_MEMORY_GRANT_FEEDBACK = ON;

ALTER DATABASE SCOPED CONFIGURATION 
	SET BATCH_MODE_MEMORY_GRANT_FEEDBACK = ON;

ALTER DATABASE SCOPED CONFIGURATION 
	SET DEFERRED_COMPILATION_TV = ON;
GO

DBCC TRACESTATUS;
GO

USE [tpch10g-cci];
GO
ALTER DATABASE SCOPED CONFIGURATION 
	SET BATCH_MODE_ON_ROWSTORE = ON;

ALTER DATABASE SCOPED CONFIGURATION 
	SET ROW_MODE_MEMORY_GRANT_FEEDBACK = ON;

ALTER DATABASE SCOPED CONFIGURATION 
	SET BATCH_MODE_MEMORY_GRANT_FEEDBACK = ON;

ALTER DATABASE SCOPED CONFIGURATION 
	SET DEFERRED_COMPILATION_TV = ON;
GO


USE [WideWorldImportersDW];
GO
ALTER DATABASE SCOPED CONFIGURATION 
	SET BATCH_MODE_ON_ROWSTORE = ON;

ALTER DATABASE SCOPED CONFIGURATION 
	SET ROW_MODE_MEMORY_GRANT_FEEDBACK = ON;

ALTER DATABASE SCOPED CONFIGURATION 
	SET BATCH_MODE_MEMORY_GRANT_FEEDBACK = ON;

ALTER DATABASE SCOPED CONFIGURATION 
	SET DEFERRED_COMPILATION_TV = ON;
GO

