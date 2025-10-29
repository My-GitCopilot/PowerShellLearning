# $settings =@{
#     'AppName' = 'MyApplication'
#     'Version' = '1.0.0'
#     'Environment' = 'Production'
#     'maxusers' = 100
    
# }

# $settings.Contains('AppName') # True
# $settings.Contains('Database') # False


#custom object

# $person = [PSCustomObject]@{
#     FirstName = 'ranjeet'
#     LastName  = 'Batham'
#     Age       = 30
#     Occupation = 'Developer'
# }

# $person.FirstName  # ranjeet
# $person.Age        # 30
# "Full Name : $($person.FirstName) $($person.LastName)"  # ranjeet Batham

# $employee = @(
#     [PSCustomObject]@{Name = 'Alice';Department = 'HR'; Salary = 60000  }
#     [PSCustomObject]@{Name = 'Bob'; Department = 'IT';Salary = 75000 }
#     [PSCustomObject]@{Name = 'Charlie';Department = 'Finance';Salary = 80000    }
# )

# foreach ($emp in $employee) {
#     "Employee: $($emp.Name), Department: $($emp.Department), Salary: $($emp.Salary)"
# }

# pipeline input

# "Hello, World!" | ForEach-Object {
#     $_.ToUpper()
# }

# Get-Process | Where-Object {$_.Name -eq "Notepad"}|select-Object Name, Id, CPU

#Get-Service | Where-Object {$_.Name -like "SQL"} | Select-Object Name, Status

# Get-ChildItem -Path "C:\MyDoc" | Where-Object {$_.Length -gt 1MB} 

# $age = 70

# if ($age -lt 18) {
#    Write-Output "You are a minor."
# } elseif ($age -ge 18 -and $age -lt 65) {
#     Write-Output "You are an adult."
# } else {
#    Write-Output  "You are a senior citizen."
# }

# $input  = "Green"
# switch ($input) {
#     "Red" {  write-output "Stop" }
#     "Yellow" {  write-output "Start" }
#     "Green" {  write-output "Go" }
#     Default {write-output "Unknown" }
# }