---
external help file: Az.StackHCI-help.xml
Module Name: Az.StackHCI
online version: https://learn.microsoft.com/powershell/module/az.stackhci/get-azstackhciremotesupportaccess
schema: 2.0.0
---

# Get-AzStackHCIRemoteSupportAccess

## SYNOPSIS
Gets Remote Support Access.

## SYNTAX

```
Get-AzStackHCIRemoteSupportAccess [-Cluster] [-IncludeExpired] [<CommonParameters>]
```

## DESCRIPTION
Gets remote support access.

## EXAMPLES

### EXAMPLE 1
```
Get-AzStackHCIRemoteSupportAccess -Cluster
```

### EXAMPLE 2
```
Get-AzStackHCIRemoteSupportAccess -Cluster -IncludeExpired
```

## PARAMETERS

### -Cluster
Optional.
Defaults to false.
Indicates whether to show remote support sessions across cluster.

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

### -IncludeExpired
Optional.
Defaults to false.
Indicates whether to include past expired entries.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### System.Boolean
## NOTES

## RELATED LINKS

[https://learn.microsoft.com/powershell/module/az.stackhci/get-azstackhciremotesupportaccess](https://learn.microsoft.com/powershell/module/az.stackhci/get-azstackhciremotesupportaccess)

