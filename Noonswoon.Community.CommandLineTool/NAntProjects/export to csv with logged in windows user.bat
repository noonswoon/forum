echo off
sqlcmd -S nssqlweb.cloudapp.net -d NoonswoonProduction -E -o "exported_data.csv" -Q "SELECT Id, FacebookId,FirstName FROM [User]" -W -w 999 -s ","

pause

