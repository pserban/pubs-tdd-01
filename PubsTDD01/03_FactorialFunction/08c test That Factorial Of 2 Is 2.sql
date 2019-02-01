-- 08c test That Factorial Of 2 Is 2.sql

use pubs;
go

drop procedure if exists [test_udf_Factorial].[test That Factorial Of 2 Is 2]
go

create procedure [test_udf_Factorial].[test That Factorial Of 2 Is 2]
as
begin
	-- Arrange
	declare @actual bigint;

	-- Act
	set @actual = dbo.udf_Factorial(2);

	-- Assert
	execute tSQLt.AssertEquals @Expected = 2, @Actual = @actual;
end;