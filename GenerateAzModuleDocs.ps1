param (
    [Parameter(Mandatory = $false)]
    [string] $AzModuleVersion = '9.5.0'
)

$RequiredAzModules = . $PSScriptRoot\Get-RequiredAzModules.ps1 -AzModuleVersion $AzModuleVersion | Get-Random -Shuffle
foreach ($AzModule in $RequiredAzModules) {
    # $AzModule
    if ($AzModule.ModuleName -eq 'Az.Aks') { continue }
    . $PSScriptRoot\Invoke-GenerateDocs.ps1 -ModuleName $AzModule.ModuleName -ModuleVersion $AzModule.ModuleVersion
}
