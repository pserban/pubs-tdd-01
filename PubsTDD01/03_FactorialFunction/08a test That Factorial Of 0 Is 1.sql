-- 08a test That Factorial Of 0 Is 1.sql

use pubs;
go

drop procedure if exists [test_udf_Factorial].[test That Factorial Of 0 Is 1]
go

create procedure [test_udf_Factorial].[test That Factorial Of 0 Is 1]
as
begin
	-- Arrange
	declare @actual bigint;

	-- Act
	set @actual = dbo.udf_Factorial(0);

	-- Assert
	execute tSQLt.AssertEquals @Expected = 1, @Actual = @actual;
end;