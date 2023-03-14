---
external help file: Az.Migrate-help.xml
Module Name: Az.Migrate
online version: https://docs.microsoft.com/powershell/module/az.migrate/new-azmigratetestnicmapping
schema: 2.0.0
---

# New-AzMigrateTestNicMapping

## SYNOPSIS
Creates an object to update NIC properties of a test migrating server.

## SYNTAX

```
New-AzMigrateTestNicMapping -NicID <String> -TestNicSubnet <String> [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
The New-AzMigrateTestNicMapping cmdlet creates a mapping of the source NIC attached to the server to be test migrated.
This object is provided as an input to the Start-AzMigrateTestMigration cmdlet to update the NIC and its properties for a test migrating server.

## EXAMPLES

### EXAMPLE 1
```
New-AzMigrateTestNicMapping -NicID a2399354-653a-464e-a567-d30ef5467a31 -TestNicSubnet subnet1
```

## PARAMETERS

### -NicID
Specifies the ID of the NIC to be updated.

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

### -TestNicSubnet
Specifies the Subnet name for the NIC in the destination Virtual Network to which the server needs to be test migrated.

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

### Microsoft.Azure.PowerShell.Cmdlets.Migrate.Models.Api20220501.IVMwareCbtNicInput
## NOTES

## RELATED LINKS

[https://docs.microsoft.com/powershell/module/az.migrate/new-azmigratetestnicmapping](https://docs.microsoft.com/powershell/module/az.migrate/new-azmigratetestnicmapping)

