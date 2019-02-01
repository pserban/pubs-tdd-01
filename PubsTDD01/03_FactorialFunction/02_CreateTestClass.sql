-- 02_CreateTestClass.sql

use pubs;
go

execute tSQLt.NewTestClass @ClassName = 'test_udf_Factorial';
go
