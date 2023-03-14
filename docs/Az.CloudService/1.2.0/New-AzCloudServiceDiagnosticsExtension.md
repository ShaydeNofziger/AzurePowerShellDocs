---
external help file: Az.CloudService-help.xml
Module Name: Az.CloudService
online version: https://learn.microsoft.com/powershell/module/az.cloudservice/new-azcloudservicediagnosticsextension
schema: 2.0.0
---

# New-AzCloudServiceDiagnosticsExtension

## SYNOPSIS
Create a in-memory object for Diagnostics Extension

## SYNTAX

```
New-AzCloudServiceDiagnosticsExtension [[-Subscription] <String>] [-Name] <String>
 [-ResourceGroupName] <String> [-CloudServiceName] <String> [-DiagnosticsConfigurationPath] <String>
 [-StorageAccountName] <String> [-StorageAccountKey] <String> [[-TypeHandlerVersion] <String>]
 [[-RolesAppliedTo] <String[]>] [[-AutoUpgradeMinorVersion] <Boolean>] [<CommonParameters>]
```

## DESCRIPTION
Create a in-memory object for Diagnostics Extension

## EXAMPLES

### EXAMPLE 1
```
$storageAccountKey = Get-AzStorageAccountKey -ResourceGroupName "ContosOrg" -Name "ContosSA"
$configFile = "<WAD configuration file path>"
$extension = New-AzCloudServiceDiagnosticsExtension -Name "WADExtension" -ResourceGroupName "ContosOrg" -CloudServiceName "ContosCS" -StorageAccountName "ContosSA" -StorageAccountKey $storageAccountKey[0].Value -DiagnosticsConfigurationPath $configFile -TypeHandlerVersion "1.5" -AutoUpgradeMinorVersion $true
```

## PARAMETERS

### -Subscription
Subscription.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Name
Name of Diagnostics Extension.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ResourceGroupName
Resource Group name of Cloud Service.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -CloudServiceName
Name of Cloud Service.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DiagnosticsConfigurationPath
Specifies the configuration for Azure Diagnostics.
You can download the schema by using the following command: (Get-AzureServiceAvailableExtension -ExtensionName 'PaaSDiagnostics' -ProviderNamespace 'Microsoft.Azure.Diagnostics').PublicConfigurationSchema | Out-File -Encoding utf8 -FilePath 'WadConfig.xsd'

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -StorageAccountName
Name of the Storage Account.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -StorageAccountKey
Storage Account Key.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 7
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TypeHandlerVersion
Specifies the version of the extension.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 8
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RolesAppliedTo
Roles applied to.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 9
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AutoUpgradeMinorVersion
Auto upgrade minor version.

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 10
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20220904.Extension
## NOTES

## RELATED LINKS

[https://learn.microsoft.com/powershell/module/az.cloudservice/new-azcloudservicediagnosticsextension](https://learn.microsoft.com/powershell/module/az.cloudservice/new-azcloudservicediagnosticsextension)

