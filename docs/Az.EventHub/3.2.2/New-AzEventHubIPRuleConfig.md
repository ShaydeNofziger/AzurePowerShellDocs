---
external help file: Az.EventHub-help.xml
Module Name: Az.EventHub
online version: https://learn.microsoft.com/powershell/module/az.eventhub/new-azeventhubipruleconfig
schema: 2.0.0
---

# New-AzEventHubIPRuleConfig

## SYNOPSIS
Constructs an INwRuleSetIPRules object that can be fed as input to Set-AzEventHubNetworkRuleSet

## SYNTAX

```
New-AzEventHubIPRuleConfig -IPMask <String> [-Action <NetworkRuleIPAction>] [<CommonParameters>]
```

## DESCRIPTION
Constructs an INwRuleSetIPRules object that can be fed as input to Set-AzEventHubNetworkRuleSet

## EXAMPLES

### EXAMPLE 1
```
New-AzEventHubIPRuleConfig -IPMask 3.3.3.3 -Action Allow
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

### Microsoft.Azure.PowerShell.Cmdlets.EventHub.Models.Api202201Preview.INwRuleSetIPRules
## NOTES

## RELATED LINKS

[https://learn.microsoft.com/powershell/module/az.eventhub/new-azeventhubipruleconfig](https://learn.microsoft.com/powershell/module/az.eventhub/new-azeventhubipruleconfig)

