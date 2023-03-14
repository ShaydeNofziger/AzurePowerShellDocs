---
external help file: Az.StackHCI-help.xml
Module Name: Az.StackHCI
online version: https://learn.microsoft.com/powershell/module/az.stackhci/enable-azstackhciremotesupport
schema: 2.0.0
---

# Enable-AzStackHCIRemoteSupport

## SYNOPSIS
Enables Remote Support.

## SYNTAX

```
Enable-AzStackHCIRemoteSupport [-AccessLevel] <String> [[-ExpireInMinutes] <Int32>] [[-SasCredential] <String>]
 [-AgreeToRemoteSupportConsent] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
Enables Remote Support allows authorized Microsoft Support users to remotely access the device for diagnostics or repair depending on the access level granted.

## EXAMPLES

### EXAMPLE 1
```
Enable-AzStackHCIRemoteSupport -AccessLevel Diagnostics -ExpireInMinutes 1440 -SasCredential "Sample SAS"
```

### EXAMPLE 2
```
Enable-AzStackHCIRemoteSupport -AccessLevel DiagnosticsRepair -ExpireInMinutes 1440 -SasCredential "Sample SAS" -AgreeToRemoteSupportConsent
```

## PARAMETERS

### -AccessLevel
Controls the remote operations that can be performed.
This can be either Diagnostics or DiagnosticsAndRepair.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ExpireInMinutes
{{ Fill ExpireInMinutes Description }}

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -SasCredential
Hybrid Connection SAS Credential.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AgreeToRemoteSupportConsent
Optional.
If set to true then records user consent as provided and proceeds without prompt.

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

### System.Boolean
## NOTES

## RELATED LINKS

[https://learn.microsoft.com/powershell/module/az.stackhci/enable-azstackhciremotesupport](https://learn.microsoft.com/powershell/module/az.stackhci/enable-azstackhciremotesupport)

