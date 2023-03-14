---
external help file: Az.DataProtection-help.xml
Module Name: Az.DataProtection
online version: https://learn.microsoft.com/powershell/module/az.dataprotection/get-azdataprotectionpolicytemplate
schema: 2.0.0
---

# Get-AzDataProtectionPolicyTemplate

## SYNOPSIS
Gets default policy template for a selected datasource type.

## SYNTAX

```
Get-AzDataProtectionPolicyTemplate -DatasourceType <DatasourceTypes> [<CommonParameters>]
```

## DESCRIPTION
Gets default policy template for a selected datasource type.

## EXAMPLES

### EXAMPLE 1
```
Get-AzDataProtectionPolicyTemplate -DatasourceType AzureDisk
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Microsoft.Azure.PowerShell.Cmdlets.DataProtection.Models.Api20221201.IBackupPolicy
## NOTES

## RELATED LINKS

[https://learn.microsoft.com/powershell/module/az.dataprotection/get-azdataprotectionpolicytemplate](https://learn.microsoft.com/powershell/module/az.dataprotection/get-azdataprotectionpolicytemplate)

