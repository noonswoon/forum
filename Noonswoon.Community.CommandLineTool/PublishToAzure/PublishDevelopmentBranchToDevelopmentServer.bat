echo off

nant /f:PublishToAzure.build ^
-D:branch=development ^
-D:visualstudio.config=Debug ^
-D:service=gdnscommunitydev ^
-D:storage=gdnscommunitydevstorage ^
-D:environment=production ^
-D:solutionName="MVCForum" ^
-D:cloudProjectName="Noonswoon.Community.Azure" ^
-D:azurePublishSettingName="golfdigg"

pause
