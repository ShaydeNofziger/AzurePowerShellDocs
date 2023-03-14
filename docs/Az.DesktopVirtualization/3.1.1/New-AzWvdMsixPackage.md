---
external help file: Az.DesktopVirtualization-help.xml
Module Name: Az.DesktopVirtualization
online version: https://docs.microsoft.com/powershell/module/az.desktopvirtualization/new-azwvdmsixpackage
schema: 2.0.0
---

# New-AzWvdMsixPackage

## SYNOPSIS
Create or update a MSIX package.

## SYNTAX

### CreateExpanded (Default)
```
New-AzWvdMsixPackage -HostPoolName <String> -ResourceGroupName <String> -FullName <String>
 [-SubscriptionId <String>] [-DisplayName <String>] [-ImagePath <String>] [-IsActive] [-IsRegularRegistration]
 [-LastUpdated <DateTime>] [-PackageApplication <IMsixPackageApplications[]>]
 [-PackageDependency <IMsixPackageDependencies[]>] [-PackageFamilyName <String>] [-PackageName <String>]
 [-PackageRelativePath <String>] [-Version <String>] [-DefaultProfile <PSObject>] [-Break]
 [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>]
 [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### PackageAlias
```
New-AzWvdMsixPackage -HostPoolName <String> -ResourceGroupName <String> [-SubscriptionId <String>]
 [-DisplayName <String>] [-ImagePath <String>] [-IsActive] [-IsRegularRegistration] -PackageAlias <String>
 [-DefaultProfile <PSObject>] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
Create or update a MSIX package.

## EXAMPLES

### EXAMPLE 1
```
New-AzWvdMsixPackage -HostPoolName HostPoolName `
                     -ResourceGroupName resourceGroupName `
                     -SubscriptionId SubscriptionId `
                     -PackageAlias packagealias `
                     -ImagePath ImagePathURI
```

### EXAMPLE 2
```
New-AzWvdMsixPackage -FullName PackageFullName `
                     -HostPoolName HostPoolName `
                     -ResourceGroupName ResourceGroupName `
                     -SubscriptionId SubscriptionId `
                     -DisplayName displayname `
                     -ImagePath imageURI `
                     -IsActive:$false `
                     -IsRegularRegistration:$false `
                     -LastUpdated datelastupdated `
                     -PackageApplication $apps `
                     -PackageDependency $deps `
                     -PackageFamilyName packagefamilyname `
                     -PackageName packagename `
                     -PackageRelativePath packagerelativepath `
                     -Version packageversion
```

## PARAMETERS

### -HostPoolName
The name of the host pool within the specified resource group

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ResourceGroupName
The name of the resource group.
The name is case insensitive.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -FullName
The version specific package full name of the MSIX package within specified hostpool

```yaml
Type: String
Parameter Sets: CreateExpanded
Aliases: MsixPackageFullName

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SubscriptionId
The ID of the target subscription.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DisplayName
User friendly Name to be displayed in the portal.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ImagePath
VHD/CIM image path on Network Share.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -IsActive
Make this version of the package the active one across the hostpool.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -IsRegularRegistration
Specifies how to register Package in feed.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -PackageAlias
Package Alias from extract MSIX Image

```yaml
Type: String
Parameter Sets: PackageAlias
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -LastUpdated
Date Package was last updated, found in the appxmanifest.xml.

```yaml
Type: DateTime
Parameter Sets: CreateExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PackageApplication
List of package applications.

To construct, see NOTES section for PACKAGEAPPLICATION properties and create a hash table.

```yaml
Type: IMsixPackageApplications[]
Parameter Sets: CreateExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PackageDependency
List of package dependencies.

To construct, see NOTES section for PACKAGEDEPENDENCY properties and create a hash table.

```yaml
Type: IMsixPackageDependencies[]
Parameter Sets: CreateExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PackageFamilyName
Package Family Name from appxmanifest.xml.
Contains Package Name and Publisher name.

```yaml
Type: String
Parameter Sets: CreateExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PackageName
Package Name from appxmanifest.xml.

```yaml
Type: String
Parameter Sets: CreateExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PackageRelativePath
Relative Path to the package inside the image.

```yaml
Type: String
Parameter Sets: CreateExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Version
Package Version found in the appxmanifest.xml.

```yaml
Type: String
Parameter Sets: CreateExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DefaultProfile
The credentials, account, tenant, and subscription used for communication with Azure.

```yaml
Type: PSObject
Parameter Sets: (All)
Aliases: AzureRMContext, AzureCredential

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Break
Wait for .NET debugger to attach

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -HttpPipelineAppend
SendAsync Pipeline Steps to be appended to the front of the pipeline

```yaml
Type: SendAsyncStep[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -HttpPipelinePrepend
SendAsync Pipeline Steps to be prepended to the front of the pipeline

```yaml
Type: SendAsyncStep[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Proxy
The URI for the proxy server to use

```yaml
Type: Uri
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ProxyCredential
Credentials for a proxy server to use for the remote call

```yaml
Type: PSCredential
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ProxyUseDefaultCredentials
Use the default credentials for the proxy

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -WhatIf
Shows what would happen if the cmdlet runs.
The cmdlet is not run.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: wi

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Confirm
Prompts you for confirmation before running the cmdlet.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: cf

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Microsoft.Azure.PowerShell.Cmdlets.DesktopVirtualization.Models.Api20210712.IMsixPackage
## NOTES
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties.
For information on hash tables, run Get-Help about_Hash_Tables.

PACKAGEAPPLICATION \<IMsixPackageApplications\[\]\>: List of package applications. 
  \[AppId \<String\>\]: Package Application Id, found in appxmanifest.xml.
  \[AppUserModelId \<String\>\]: Used to activate Package Application.
Consists of Package Name and ApplicationID.
Found in appxmanifest.xml.
  \[Description \<String\>\]: Description of Package Application.
  \[FriendlyName \<String\>\]: User friendly name.
  \[IconImageName \<String\>\]: User friendly name.
  \[RawIcon \<Byte\[\]\>\]: the icon a 64 bit string as a byte array.
  \[RawPng \<Byte\[\]\>\]: the icon a 64 bit string as a byte array.

PACKAGEDEPENDENCY \<IMsixPackageDependencies\[\]\>: List of package dependencies. 
  \[DependencyName \<String\>\]: Name of package dependency.
  \[MinVersion \<String\>\]: Dependency version required.
  \[Publisher \<String\>\]: Name of dependency publisher.

## RELATED LINKS

[https://docs.microsoft.com/powershell/module/az.desktopvirtualization/new-azwvdmsixpackage](https://docs.microsoft.com/powershell/module/az.desktopvirtualization/new-azwvdmsixpackage)

