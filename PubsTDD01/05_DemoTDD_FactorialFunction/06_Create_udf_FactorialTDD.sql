use pubs;
go

drop function if exists dbo.udf_FactorialTDD;
go

create function dbo.udf_FactorialTDD (@val int)
returns bigint
as
begin
	if @val <= 1 return 1;
	return @val * dbo.udf_FactorialTDD(@val - 1);
end;