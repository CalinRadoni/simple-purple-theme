```powershell
<#
.Synopsis
    Create a local administrator

.Parameter AdminName
    Specifies the user name for the new account

.Parameter SecureAdminPass
    A SecureString object containing the password for the new account

.Example
    $Password = Read-Host -AsSecureString
    CreateLocalAdministrator -AdminName "NewAdmin" -SecureAdminPass $Password

.Example
    $Password = ConvertTo-SecureString -AsPlainText -Force -String "replaceThisWithThePassword"
    CreateLocalAdministrator -AdminName "NewAdmin" -SecureAdminPass $Password
#>
Function CreateLocalAdministrator {
    Param (
        [Parameter(Mandatory = $true)]
        [ValidateNotNullOrEmpty()]
        [String]$AdminName,

        [Parameter(Mandatory = $true)]
        [ValidateNotNullOrEmpty()]
        [Security.SecureString]$SecureAdminPass
    )

    try {
        New-LocalUser -ErrorAction Stop "$AdminName" -Password $SecureAdminPass -FullName "$AdminName" -PasswordNeverExpires
        Add-LocalGroupMember -ErrorAction Stop -Group "Administrators" -Member "$AdminName"
    }
    catch {
        Write-Error $Error[0]
        return $false
    }

    return $true
}
```
