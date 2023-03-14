[CmdletBinding()]
param(
    [Parameter(Mandatory = $true)]
    [string] $AzModuleVersion
)

begin {
    $AzModule = Get-Module -Name 'Az' -ListAvailable | Where-Object -Property Version -EQ $AzModuleVersion

    if ($null -eq $AzModule) {
        throw "Az module not installed at the specified version: $AzModuleVersion. Install-Module before continuing!"
    }

    $PathToAzPsd = $AzModule | Select-Object -ExpandProperty 'Path'
    $AzModuleFolder = Split-Path -Path $PathToAzPsd -Parent
    $PathToAzPsm = Join-Path -Path $AzModuleFolder -ChildPath 'Az.psm1'
}

process {
    $ImportModuleLines = Get-Content -Path $PathToAzPsm | Where-Object -FilterScript { $_ -like '*Import-Module*' }
    foreach ($importModuleLine in $ImportModuleLines) {
        $moduleNameString = $importModuleLine.Substring($importModuleLine.IndexOf('Import-Module ') + 'Import-Module '.Length)
        $moduleNameString = $moduleNameString.Substring(0, $moduleNameString.IndexOf(' '))
        $moduleVersionString = $importModuleLine.Substring($importModuleLine.IndexOf('-RequiredVersion ') + '-RequiredVersion '.Length)
        $moduleVersionString = $moduleVersionString.Substring(0, $moduleVersionString.IndexOf(' '))

        if ($moduleNameString -eq 'Az.Accounts') {
            # Az.Accounts is a weird one because it specifies minimum instead of required version. Setting this statically for now
            $moduleVersionString = '2.12.1'
        }
        [PSCustomObject] @{
            ModuleName = $moduleNameString
            ModuleVersion = $moduleVersionString
        }
    }

}

end {

}
