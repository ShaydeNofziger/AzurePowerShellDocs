---
external help file: Az.EventHub-help.xml
Module Name: Az.EventHub
online version: https://learn.microsoft.com/powershell/module/az.eventhub/new-azeventhubvirtualnetworkruleconfig
schema: 2.0.0
---

# New-AzEventHubVirtualNetworkRuleConfig

## SYNOPSIS
Constructs an INwRuleSetVirtualNetworkRules object that can be fed as input to Set-AzEventHubNetworkRuleSet

## SYNTAX

```
New-AzEventHubVirtualNetworkRuleConfig -SubnetId <String> [-IgnoreMissingVnetServiceEndpoint]
 [<CommonParameters>]
```

## DESCRIPTION
Constructs an INwRuleSetVirtualNetworkRules object that can be fed as input to Set-AzEventHubNetworkRuleSet

## EXAMPLES

### EXAMPLE 1
```
New-AzEventHubVirtualNetworkRuleConfig -SubnetId /subscriptions/subscriptionId/resourcegroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/myVirtualNetwork/subnets/default
```

## PARAMETERS

### -SubnetId
Resource ID of Virtual Network Subnet

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

### -IgnoreMissingVnetServiceEndpoint
Resource ID of Virtual Network Subnet

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

### Microsoft.Azure.PowerShell.Cmdlets.EventHub.Models.Api202201Preview.INwRuleSetVirtualNetworkRules
## NOTES

## RELATED LINKS

[https://learn.microsoft.com/powershell/module/az.eventhub/new-azeventhubvirtualnetworkruleconfig](https://learn.microsoft.com/powershell/module/az.eventhub/new-azeventhubvirtualnetworkruleconfig)

