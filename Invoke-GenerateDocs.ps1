[CmdletBinding()]
param(
    [Parameter(Mandatory = $true)]
    [string] $ModuleName,

    [Parameter(Mandatory = $true)]
    [string] $ModuleVersion,

    [Parameter(Mandatory = $false)]
    [string] $OutputFolder
)

begin {
    if ([string]::IsNullOrWhiteSpace($OutputFolder)) {
        $OutputFolder = Join-Path -Path $PSScriptRoot -ChildPath 'docs'
    }

    if (-not (Test-Path -Path $OutputFolder)) {
        New-Item -Path $OutputFolder -ItemType 'Directory' | Out-Null
    }
    
    [string] $OutputDirectory = Join-Path -Path $OutputFolder -ChildPath $ModuleName

    if (-not (Test-Path -Path $OutputDirectory)) {
        New-Item -Path $OutputDirectory -ItemType 'Directory' | Out-Null
    }

    [string] $VersionedOutputDirectory = Join-Path -Path $OutputDirectory -ChildPath $ModuleVersion

    if (-not (Test-Path -Path $VersionedOutputDirectory)) {
        New-Item -Path $VersionedOutputDirectory -ItemType 'Directory' | Out-Null
    }

    $Module = Get-Module -Name $ModuleName -ListAvailable | Where-Object -Property 'Version' -EQ $ModuleVersion

    if ($null -eq $Module) {
        Install-Module -Name $ModuleName -RequiredVersion $ModuleVersion -Scope 'CurrentUser'

        $Module = Get-Module -Name $ModuleName -ListAvailable | Where-Object -Property 'Version' -EQ $ModuleVersion
    }

    if ($null -eq (Get-Module -Name $ModuleName)) {
        Import-Module -Name $ModuleName -RequiredVersion $ModuleVersion
    }

}

process {
    New-MarkdownHelp -Module $ModuleName -Encoding ([System.Text.Encoding]::UTF8) -OutputFolder $VersionedOutputDirectory -Force
}

end {
}
