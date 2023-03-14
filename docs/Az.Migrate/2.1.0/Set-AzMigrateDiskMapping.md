﻿---
external help file: Az.Migrate-help.xml
Module Name: Az.Migrate
online version: https://docs.microsoft.com/powershell/module/az.migrate/set-azmigratediskmapping
schema: 2.0.0
---

# Set-AzMigrateDiskMapping

## SYNOPSIS
Updates disk mapping

## SYNTAX

```
Set-AzMigrateDiskMapping -DiskID <String> [-DiskName <String>] [-IsOSDisk <String>] [<CommonParameters>]
```

## DESCRIPTION
The Set-AzMigrateDiskMapping cmdlet updates a mapping of the source disk attached to the server to be migrated

## EXAMPLES

### EXAMPLE 1
```
Set-AzMigrateDiskMapping -DiskID "6000C294-1217-dec3-bc18-81f117220424" -DiskName "ContosoDisk_1" -IsOSDisk "True"
```

## PARAMETERS

### -DiskID
Specifies the disk ID of the disk attached to the discovered server to be migrated.

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

### -DiskName
Specifies the name of the managed disk to be created.

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

### -IsOSDisk
Specifies whether the disk contains the Operating System for the source server to be migrated.

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

### Microsoft.Azure.PowerShell.Cmdlets.Migrate.Models.Api20220501.IVMwareCbtUpdateDiskInput
## NOTES

## RELATED LINKS

[https://docs.microsoft.com/powershell/module/az.migrate/set-azmigratediskmapping](https://docs.microsoft.com/powershell/module/az.migrate/set-azmigratediskmapping)
