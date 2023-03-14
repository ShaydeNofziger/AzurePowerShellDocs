---
external help file: Az.StackHCI-help.xml
Module Name: Az.StackHCI
online version: https://learn.microsoft.com/powershell/module/az.stackhci/get-azstackhcivmattestation
schema: 2.0.0
---

# Get-AzStackHCIVMAttestation

## SYNOPSIS
Get-AzStackHCIVMAttestation shows a list of guests added to IMDS Attestation on a node.

## SYNTAX

```
Get-AzStackHCIVMAttestation [-Local] [<CommonParameters>]
```

## DESCRIPTION
Get-AzStackHCIVMAttestation shows a list of guests added to IMDS Attestation on a node.

## EXAMPLES

### EXAMPLE 1
```
Get-AzStackHCIVMAttestation
```

### EXAMPLE 2
```
Get-AzStackHCIVMAttestation -Local
```

## PARAMETERS

### -Local
Only retrieve guests with Attestation from the node executing the cmdlet.

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

### System.Management.Automation.PSObject
## NOTES

## RELATED LINKS

[https://learn.microsoft.com/powershell/module/az.stackhci/get-azstackhcivmattestation](https://learn.microsoft.com/powershell/module/az.stackhci/get-azstackhcivmattestation)

