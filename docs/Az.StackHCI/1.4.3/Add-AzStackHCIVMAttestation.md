---
external help file: Az.StackHCI-help.xml
Module Name: Az.StackHCI
online version: https://learn.microsoft.com/powershell/module/az.stackhci/add-azstackhcivmattestation
schema: 2.0.0
---

# Add-AzStackHCIVMAttestation

## SYNOPSIS
Add-AzStackHCIVMAttestation configures guests for AzureStack HCI IMDS Attestation.

## SYNTAX

### VMName (Default)
```
Add-AzStackHCIVMAttestation [-VMName] <String[]> [-Force] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### VMObject
```
Add-AzStackHCIVMAttestation [-Force] [-VM] <Object[]> [-WhatIf] [-Confirm] [<CommonParameters>]
```

### AddAll
```
Add-AzStackHCIVMAttestation [-Force] [-AddAll] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
Add-AzStackHCIVMAttestation configures guests for AzureStack HCI IMDS Attestation.

## EXAMPLES

### EXAMPLE 1
```
Add-AzStackHCIVMAttestation -AddAll
```

### EXAMPLE 2
```
Invoke-Command -ScriptBlock {Add-AzStackHCIVMAttestation -VMName "bhat2", "ppt7pn0"} -ComputerName "HCINODE2"
```

## PARAMETERS

### -VMName
Specifies an array of guest VMs to enable.

```yaml
Type: String[]
Parameter Sets: VMName
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Force
No confirmations.

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

### -VM
Specifies an array of VM objects from Get-VM.

```yaml
Type: Object[]
Parameter Sets: VMObject
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -AddAll
Specifies a switch that will add all current guest VMs on host to IMDS Attestation on the current node.

```yaml
Type: SwitchParameter
Parameter Sets: AddAll
Aliases:

Required: True
Position: Named
Default value: False
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

### System.Object[]
### System.String[]
## OUTPUTS

### System.Management.Automation.PSObject
## NOTES

## RELATED LINKS

[https://learn.microsoft.com/powershell/module/az.stackhci/add-azstackhcivmattestation](https://learn.microsoft.com/powershell/module/az.stackhci/add-azstackhcivmattestation)

