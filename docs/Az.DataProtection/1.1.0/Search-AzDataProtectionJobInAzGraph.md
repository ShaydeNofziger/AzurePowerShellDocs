---
external help file: Az.DataProtection-help.xml
Module Name: Az.DataProtection
online version: https://learn.microsoft.com/powershell/module/az.dataprotection/search-azdataprotectionjobinazgraph
schema: 2.0.0
---

# Search-AzDataProtectionJobInAzGraph

## SYNOPSIS
Searches for Backup Jobs in Azure Resource Graph and retrieves the expected entries

## SYNTAX

```
Search-AzDataProtectionJobInAzGraph -Subscription <String[]> -DatasourceType <DatasourceTypes>
 [-ResourceGroup <String[]>] [-Vault <String[]>] [-StartTime <DateTime>] [-EndTime <DateTime>]
 [-Operation <JobOperation[]>] [-Status <JobStatus[]>] [<CommonParameters>]
```

## DESCRIPTION
Searches for Backup Jobs in Azure Resource Graph and retrieves the expected entries

## EXAMPLES

### EXAMPLE 1
```
$endtime = Get-Date
$starttime = $endtime.AddHours(-5)
Search-AzDataProtectionJobInAzGraph -Subscription "xxx-xxx-xxx" -ResourceGroup sarath-rg -Vault sarath-vault -DatasourceType AzureDisk -StartTime $starttime -EndTime $endtime
```

### EXAMPLE 2
```
Search-AzDataProtectionJobInAzGraph -Subscription "xxxx-xxx-xxx" -ResourceGroup sarath-rg -Vault sarath-vault -DatasourceType AzureDisk -Operation OnDemandBackup
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

### -StartTime
Start Time filter for the backup Job

```yaml
Type: DateTime
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -EndTime
End Time filter for the Backup Job

```yaml
Type: DateTime
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Operation
Operation filter for the backup job

```yaml
Type: JobOperation[]
Parameter Sets: (All)
Aliases:
Accepted values: OnDemandBackup, ScheduledBackup, Restore

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Status
Status filter for the backup job

```yaml
Type: JobStatus[]
Parameter Sets: (All)
Aliases:
Accepted values: InProgress, Completed, Failed

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

[https://learn.microsoft.com/powershell/module/az.dataprotection/search-azdataprotectionjobinazgraph](https://learn.microsoft.com/powershell/module/az.dataprotection/search-azdataprotectionjobinazgraph)

