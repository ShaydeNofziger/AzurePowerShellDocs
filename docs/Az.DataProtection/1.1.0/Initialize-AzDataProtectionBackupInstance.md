---
external help file: Az.DataProtection-help.xml
Module Name: Az.DataProtection
online version: https://learn.microsoft.com/powershell/module/az.dataprotection/initialize-azdataprotectionbackupinstance
schema: 2.0.0
---

# Initialize-AzDataProtectionBackupInstance

## SYNOPSIS
Initializes Backup instance Request object for configuring backup

## SYNTAX

```
Initialize-AzDataProtectionBackupInstance -DatasourceType <DatasourceTypes> -DatasourceLocation <String>
 [-PolicyId <String>] [-DatasourceId <String>] [-SecretStoreURI <String>] [-SecretStoreType <SecretStoreTypes>]
 [-SnapshotResourceGroupId <String>] [<CommonParameters>]
```

## DESCRIPTION
Initializes Backup instance Request object for configuring backup

## EXAMPLES

### EXAMPLE 1
```
$policy = Get-AzDataProtectionBackupPolicy -SubscriptionId "xxxx-xxx-xxx" -ResourceGroupName sarath-rg -VaultName sarath-vault
$AzureDiskId = "/subscriptions/{subscription}/resourceGroups/{resourceGroup}/providers/Microsoft.Compute/disks/{diskname}"
$instance = Initialize-AzDataProtectionBackupInstance -DatasourceType AzureDisk -DatasourceLocation westus -DatasourceId $AzureDiskId -PolicyId $policy[0].Id
$instance.Property.PolicyInfo.PolicyParameter.DataStoreParametersList[0].ResourceGroupId = "/subscriptions/{subscription}/resourceGroups/{snapshotResourceGroup}"
$instance
```

## PARAMETERS

### -DatasourceType
Datasource Type

```yaml
Type: DatasourceTypes
Parameter Sets: (All)
Aliases:
Accepted values: AzureDisk, AzureBlob, AzureDatabaseForPostgreSQL

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DatasourceLocation
Location of the Datasource to be protected.

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

### -PolicyId
Policy Id to be assiciated to Datasource

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

### -DatasourceId
ID of the datasource to be protected

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

### -SecretStoreURI
Secret uri for secret store authentication of data source.
This parameter is only supported for AzureDatabaseForPostgreSQL currently.

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

### -SecretStoreType
Secret store type for secret store authentication of data source.
This parameter is only supported for AzureDatabaseForPostgreSQL currently.

```yaml
Type: SecretStoreTypes
Parameter Sets: (All)
Aliases:
Accepted values: AzureKeyVault

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SnapshotResourceGroupId
Sanpshot Resource Group

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Microsoft.Azure.PowerShell.Cmdlets.DataProtection.Models.Api20221201.IBackupInstanceResource
## NOTES

## RELATED LINKS

[https://learn.microsoft.com/powershell/module/az.dataprotection/initialize-azdataprotectionbackupinstance](https://learn.microsoft.com/powershell/module/az.dataprotection/initialize-azdataprotectionbackupinstance)

