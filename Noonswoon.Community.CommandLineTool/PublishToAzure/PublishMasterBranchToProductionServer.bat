echo off

nant /f:PublishToAzure.build ^
-D:branch=master ^
-D:visualstudio.config=Release ^
-D:service=nscompro ^
-D:storage=nscomprostorage ^
-D:environment=production

pause
