---
external help file: Az.DataProtection-help.xml
Module Name: Az.DataProtection
online version: https://learn.microsoft.com/powershell/module/az.dataprotection/new-azdataprotectionbackupvaultstoragesettingobject
schema: 2.0.0
---

# New-AzDataProtectionBackupVaultStorageSettingObject

## SYNOPSIS
Get Backup Vault storage setting object

## SYNTAX

```
New-AzDataProtectionBackupVaultStorageSettingObject -Type <StorageSettingType> -DataStoreType <DataStoreType>
 [<CommonParameters>]
```

## DESCRIPTION
Get Backup Vault storage setting object

## EXAMPLES

### EXAMPLE 1
```
New-AzDataProtectionBackupVaultStorageSettingObject -Type GeoRedundant -DataStoreType VaultStore
```

## PARAMETERS

### -Type
Storage Type of the vault

```yaml
Type: StorageSettingType
Parameter Sets: (All)
Aliases:
Accepted values: GeoRedundant, LocallyRedundant, ZoneRedundant

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DataStoreType
DataStore Type of the vault

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### System.Management.Automation.PSObject
## NOTES

## RELATED LINKS

[https://learn.microsoft.com/powershell/module/az.dataprotection/new-azdataprotectionbackupvaultstoragesettingobject](https://learn.microsoft.com/powershell/module/az.dataprotection/new-azdataprotectionbackupvaultstoragesettingobject)

