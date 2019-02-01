-- 08e test That Factorial Of 4 is 24.sql

use pubs;
go

drop procedure if exists [test_udf_Factorial].[test That Factorial Of 4 Is 24]
go

create procedure [test_udf_Factorial].[test That Factorial Of 4 Is 24]
as
begin
	-- Arrange
	declare @actual bigint;

	-- Act
	set @actual = dbo.udf_Factorial(4);

	-- Assert
	execute tSQLt.AssertEquals @Expected = 24, @Actual = @actual;
end;