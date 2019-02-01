-- 04_CreateFirstUnitTest.sql

use pubs;
go

drop procedure if exists [test_udf_Factorial].[test That udf_Factorial Exists];
go

create procedure [test_udf_Factorial].[test That udf_Factorial Exists]
as
begin
	-- Arrange
	-- Act
	-- Assert
	execute tSQLt.AssertObjectExists @ObjectName = 'udf_Factorial';
end;