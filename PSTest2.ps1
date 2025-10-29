
#Get-Module SqlServer -ListAvailable
#Import-Module sqlserver
# Put the cmdlet and its parameters on the same line so PowerShell parses them correctly.
Invoke-Sqlcmd -ServerInstance "Batham-PC" -Database "MyAppDb" -Username "sa" -Password "admin@123" -Query "SELECT * FROM Employees" -TrustServerCertificate
