-- 08d test That Factorial Of 3 Is 6.sql

use pubs;
go

drop procedure if exists [test_udf_Factorial].[test That Factorial Of 3 Is 6]
go

create procedure [test_udf_Factorial].[test That Factorial Of 3 Is 6]
as
begin
	-- Arrange
	declare @actual bigint;

	-- Act
	set @actual = dbo.udf_Factorial(3);

	-- Assert
	execute tSQLt.AssertEquals @Expected = 6, @Actual = @actual;
end;
