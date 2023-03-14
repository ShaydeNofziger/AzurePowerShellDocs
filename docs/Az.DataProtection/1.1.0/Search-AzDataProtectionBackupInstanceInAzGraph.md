---
external help file: Az.DataProtection-help.xml
Module Name: Az.DataProtection
online version: https://learn.microsoft.com/powershell/module/az.dataprotection/search-azdataprotectionbackupinstanceinazgraph
schema: 2.0.0
---

# Search-AzDataProtectionBackupInstanceInAzGraph

## SYNOPSIS
Searches for Backup instances in Azure Resource Graph and retrieves the expected entries

## SYNTAX

```
Search-AzDataProtectionBackupInstanceInAzGraph -Subscription <String[]> -DatasourceType <DatasourceTypes>
 [-ResourceGroup <String[]>] [-Vault <String[]>] [-ProtectionStatus <ProtectionStatus[]>] [<CommonParameters>]
```

## DESCRIPTION
Searches for Backup instances in Azure Resource Graph and retrieves the expected entries

## EXAMPLES

### EXAMPLE 1
```
Search-AzDataProtectionBackupInstanceInAzGraph -Subscription "xxxx-xxx-xxx" -DatasourceType AzureDisk
```

### EXAMPLE 2
```
Search-AzDataProtectionBackupInstanceInAzGraph -Subscription "xxxx-xxx-xxx" -DatasourceType AzureDisk -ResourceGroup @("sarath-rg", "sarath-rg2")
```

### EXAMPLE 3
```
Search-AzDataProtectionBackupInstanceInAzGraph -Subscription "xxxx-xxx-xxx" -DatasourceType AzureDisk -ResourceGroup @("sarath-rg", "sarath-rg2") -ProtectionStatus  ProtectionConfigured
```

## PARAMETERS

### -Subscription
Subscription of Vault

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

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

### -ResourceGroup
Resource Group of Vault

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Vault
Name of the vault

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ProtectionStatus
Protection Status of the item

```yaml
Type: ProtectionStatus[]
Parameter Sets: (All)
Aliases:
Accepted values: ConfiguringProtection, ProtectionConfigured, ConfiguringProtectionFailed, ProtectionError

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

### System.Management.Automation.PSObject
## NOTES

## RELATED LINKS

[https://learn.microsoft.com/powershell/module/az.dataprotection/search-azdataprotectionbackupinstanceinazgraph](https://learn.microsoft.com/powershell/module/az.dataprotection/search-azdataprotectionbackupinstanceinazgraph)

