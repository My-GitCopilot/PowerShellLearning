
#Get-Module SqlServer -ListAvailable
#Import-Module sqlserver
# Put the cmdlet and its parameters on the same line so PowerShell parses them correctly.
Invoke-Sqlcmd -ServerInstance "localhost" -Database "MyAppDb" -Username "sa" -Password "****" -Query "SELECT * FROM Employees" -TrustServerCertificate
