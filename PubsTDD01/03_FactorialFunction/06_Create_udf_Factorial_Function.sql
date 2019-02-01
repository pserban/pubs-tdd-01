-- 06_CreateFunctionStub.sql

use pubs;
go

drop function if exists dbo.udf_Factorial;
go

create function dbo.udf_Factorial(@n int)
returns bigint
as
begin
	if @n <= 1 return 1;
	return @n * dbo.udf_Factorial(@n - 1);
end;