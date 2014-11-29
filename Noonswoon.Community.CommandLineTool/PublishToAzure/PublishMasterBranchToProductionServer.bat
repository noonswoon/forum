echo off

nant /f:PublishToAzure.build ^
-D:branch=master ^
-D:visualstudio.config=Release ^
-D:service=gdnscommunitypro ^
-D:storage=gdnscommunityprostorage ^
-D:environment=production ^
-D:solutionName="MVCForum" ^
-D:cloudProjectName="Noonswoon.Community.Azure" ^
-D:publishSettingName="golfdigg" ^
-D:subscriptionName="BizSpark Plus"

pause
