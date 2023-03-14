---
external help file: Az.ServiceBus-help.xml
Module Name: Az.ServiceBus
online version: https://learn.microsoft.com/powershell/module/az.servicebus/new-azservicebusipruleconfig
schema: 2.0.0
---

# New-AzServiceBusIPRuleConfig

## SYNOPSIS
Constructs an INwRuleSetIPRules object that can be fed as input to Set-AzServiceBusNetworkRuleSet

## SYNTAX

```
New-AzServiceBusIPRuleConfig -IPMask <String> [-Action <NetworkRuleIPAction>] [<CommonParameters>]
```

## DESCRIPTION
Constructs an INwRuleSetIPRules object that can be fed as input to Set-AzServiceBusNetworkRuleSet

## EXAMPLES

### EXAMPLE 1
```
New-AzServiceBusIPRuleConfig -IPMask 3.3.3.3 -Action Allow
```

## PARAMETERS

### -IPMask
IP Mask

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

### -Action
The IP Filter Action

```yaml
Type: NetworkRuleIPAction
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

### Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Models.Api20221001Preview.INwRuleSetIPRules
## NOTES

## RELATED LINKS

[https://learn.microsoft.com/powershell/module/az.servicebus/new-azservicebusipruleconfig](https://learn.microsoft.com/powershell/module/az.servicebus/new-azservicebusipruleconfig)

