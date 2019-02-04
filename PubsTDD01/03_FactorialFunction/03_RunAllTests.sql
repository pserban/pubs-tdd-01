-- 03_RunAllTests.sql

use pubs;
go

execute tSQLt.RunAll;

execute tSQLt.Run @TestName = 'test_udf_Factorial';

execute tSQLt.Run @TestName = 'test_udf_Factorial.[test That Factorial Of 2 Is 2]';

execute tSQLt.DropClass @ClassName = 'test_udf_Factorial';
