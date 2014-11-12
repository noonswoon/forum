echo off

nant /f:PublishToAzure.build ^
-D:branch=development ^
-D:visualstudio.config=Debug ^
-D:service=nscomdev ^
-D:storage=nscomdevstorage ^
-D:environment=production

pause
