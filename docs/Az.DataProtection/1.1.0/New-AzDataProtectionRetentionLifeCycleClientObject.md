---
external help file: Az.DataProtection-help.xml
Module Name: Az.DataProtection
online version: https://learn.microsoft.com/powershell/module/az.dataprotection/new-azdataprotectionretentionlifecycleclientobject
schema: 2.0.0
---

# New-AzDataProtectionRetentionLifeCycleClientObject

## SYNOPSIS
Creates new Lifecycle object

## SYNTAX

```
New-AzDataProtectionRetentionLifeCycleClientObject -SourceDataStore <DataStoreType>
 -SourceRetentionDurationType <DurationType> -SourceRetentionDurationCount <Int32>
 [-TargetDataStore <DataStoreType>] [-CopyOption <CopyOption>] [<CommonParameters>]
```

## DESCRIPTION
Creates new Lifecycle object

## EXAMPLES

### EXAMPLE 1
```
New-AzDataProtectionRetentionLifeCycleClientObject -SourceDataStore OperationalStore -SourceRetentionDurationType Days -SourceRetentionDurationCount 30
```

### EXAMPLE 2
```
New-AzDataProtectionRetentionLifeCycleClientObject -SourceDataStore OperationalStore -SourceRetentionDurationType Weeks -SourceRetentionDurationCount 20
```

## PARAMETERS

### -SourceDataStore
Source Datastore

```yaml
Type: DataStoreType
Parameter Sets: (All)
Aliases:
Accepted values: ArchiveStore, OperationalStore, VaultStore

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SourceRetentionDurationType
Retention Duration Type

```yaml
Type: DurationType
Parameter Sets: (All)
Aliases:
Accepted values: Days, Weeks, Months, Years

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SourceRetentionDurationCount
Retention Duration Count

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -TargetDataStore
Target Datastore

```yaml
Type: DataStoreType
Parameter Sets: (All)
Aliases:
Accepted values: ArchiveStore, OperationalStore, VaultStore

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -CopyOption
CopyOption

```yaml
Type: CopyOption
Parameter Sets: (All)
Aliases:
Accepted values: CustomCopyOption, ImmediateCopyOption, CopyOnExpiryOption

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

### Microsoft.Azure.PowerShell.Cmdlets.DataProtection.Models.Api20221201.ISourceLifeCycle
## NOTES

## RELATED LINKS

[https://learn.microsoft.com/powershell/module/az.dataprotection/new-azdataprotectionretentionlifecycleclientobject](https://learn.microsoft.com/powershell/module/az.dataprotection/new-azdataprotectionretentionlifecycleclientobject)

