
# Path to your appsettings.json file
$appSettingsPath = "C:\MyProjects\CleanArchitechture\MyApp.Api\appsettings.json"

# Read and parse JSON
$appSettings = Get-Content $appSettingsPath -Raw | ConvertFrom-Json

# Extract connection string
$connectionString = $appSettings.ConnectionStrings.DefaultConnection
# Create a SQL connection object
$connection = New-Object System.Data.SqlClient.SqlConnection
$connection.ConnectionString = $connectionString

try {
    # Open the connection
    $connection.Open()
    Write-Host "Connection opened successfully!"

    # Create a SQL command
    $query = "UPDATE Employees SET FirstName='Ranjeet', LastName='Batham' WHERE FirstName='Ranjeet11'"
    $command = $connection.CreateCommand()
    $command.CommandText = $query

    # Execute the command and get rows affected
    $rowsAffected = $command.ExecuteNonQuery() 
    Write-Host "Rows affected: $rowsAffected"

} catch {
    Write-Host "Error:" $_.Exception.Message
}
finally {
    # Always close the connection
    if ($connection.State -eq 'Open') {
        $connection.Close()
        Write-Host "Connection closed successfully!"
    }
}
