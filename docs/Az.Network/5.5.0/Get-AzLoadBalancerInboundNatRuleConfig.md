---
external help file: Microsoft.Azure.PowerShell.Cmdlets.Network.dll-Help.xml
Module Name: Az.Network
online version: https://learn.microsoft.com/powershell/module/az.network/get-azloadbalancerinboundnatruleconfig
schema: 2.0.0
---

# Get-AzLoadBalancerInboundNatRuleConfig

## SYNOPSIS
Gets an inbound NAT rule configuration for a load balancer.

## SYNTAX

```
Get-AzLoadBalancerInboundNatRuleConfig -LoadBalancer <PSLoadBalancer> [-Name <String>]
 [-DefaultProfile <IAzureContextContainer>] [<CommonParameters>]
```

## DESCRIPTION
The Get-AzLoadBalancerInboundNatRuleConfig cmdlet gets one or more inbound network address translation (NAT) rules in an Azure load balancer.

## EXAMPLES

### Example 1: Get an inbound NAT rule configuration
```
$slb = Get-AzLoadBalancer -Name "MyLoadBalancer" -ResourceGroupName "MyResourceGroup"
Get-AzLoadBalancerInboundNatRuleConfig -Name "MyInboundNatRule1" -LoadBalancer $slb
```

The first command gets the load balancer named MyLoadBalancer, and stores it in the variable $slb.
The second command gets the associated NAT rule named MyInboundNatRule1 from the load balancer in $slb.

## PARAMETERS

### -DefaultProfile
The credentials, account, tenant, and subscription used for communication with azure.

```yaml
Type: IAzureContextContainer
Parameter Sets: (All)
Aliases: AzContext, AzureRmContext, AzureCredential

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -LoadBalancer
Specifies the load balancer that is associated with the inbound NAT rule configuration to get.

```yaml
Type: PSLoadBalancer
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -Name
Specifies the name of the inbound NAT rule configuration to get.

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

### Microsoft.Azure.Commands.Network.Models.PSLoadBalancer
## OUTPUTS

### Microsoft.Azure.Commands.Network.Models.PSInboundNatRule
## NOTES

## RELATED LINKS

[Get-AzLoadBalancer]()

[New-AzLoadBalancerInboundNatRuleConfig]()

[Remove-AzLoadBalancerInboundNatRuleConfig]()

[Set-AzLoadBalancerInboundNatRuleConfig]()

