echo off
sqlcmd -S nssqlweb.cloudapp.net -d NoonswoonProduction -U kycpgbsaivkbzhwh -P 7YvqVmYBQsPULr5NNAbJYd7B6JhNYYJ4DWMNRZXkxRJhjvWAKBAGGqm3Z2tkejLZ -o "exported_data.csv" -Q "SELECT Id, FacebookId,FirstName FROM [User]" -W -w 999 -s ","

pause

