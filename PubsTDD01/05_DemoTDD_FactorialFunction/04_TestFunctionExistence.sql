use pubs;
go

drop procedure if exists [test_udf_FactorialTDD].[test If udf_FactorialTDD Exists];
go

create procedure [test_udf_FactorialTDD].[test If udf_FactorialTDD Exists]
as
begin
	-- Arrange
	-- Act
	-- Assert
	execute tSQLt.AssertObjectExists @ObjectName = 'udf_FactorialTDD';
end;