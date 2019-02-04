use pubs;
go

drop procedure if exists [test_udf_FactorialTDD].[test That Factorial Of 4 Is 1 * 2 * 3 * 4];
go

create procedure [test_udf_FactorialTDD].[test That Factorial Of 4 Is 1 * 2 * 3 * 4]
as
begin
	-- Arrange
	declare @expected bigint = 1 * 2 * 3 * 4;
	declare @actual bigint;

	-- Act
	set @actual = dbo.udf_FactorialTDD(4);

	-- Assert
	execute tSQLt.AssertEquals @Expected = @expected, @Actual = @actual;
end;
