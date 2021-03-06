-- *************************************************** --
-- Batch Mode Adaptive Joins
-- *************************************************** --
USE [tpch10g-cci];
GO

ALTER DATABASE [tpch10g-cci] SET COMPATIBILITY_LEVEL = 150;
GO

ALTER DATABASE SCOPED CONFIGURATION CLEAR PROCEDURE_CACHE;
GO

DROP PROCEDURE IF EXISTS dbo.TPCH_LargeVolumeCustomer;
GO

/* TPC_H  Query 18 - Large Volume Customer */
CREATE OR ALTER PROCEDURE TPCH_LargeVolumeCustomer
	@L_QUANTITY INT
AS
SELECT	TOP 100
	C_NAME,
	C_CUSTKEY,
	O_ORDERKEY,
	O_ORDERDATE,
	O_TOTALPRICE,
	SUM(L_QUANTITY)
FROM	CUSTOMER,
	ORDERS,
	LINEITEM
WHERE	O_ORDERKEY	IN	(	SELECT	L_ORDERKEY
					FROM	LINEITEM
					GROUP	BY	L_ORDERKEY HAVING SUM(L_QUANTITY) > @L_QUANTITY 
				)	AND
	C_CUSTKEY	= O_CUSTKEY	AND
	O_ORDERKEY	= L_ORDERKEY
GROUP	BY	C_NAME,
		C_CUSTKEY,
		O_ORDERKEY,
		O_ORDERDATE,
		O_TOTALPRICE
ORDER	BY	O_TOTALPRICE	DESC,
		O_ORDERDATE;
GO

EXEC dbo.TPCH_LargeVolumeCustomer 314;
GO

EXEC dbo.TPCH_LargeVolumeCustomer 250;
GO
