---
external help file: Microsoft.Azure.PowerShell.Cmdlets.Network.dll-Help.xml
Module Name: Az.Network
online version: https://learn.microsoft.com/powershell/module/az.network/get-azloadbalancerprobeconfig
schema: 2.0.0
---

# Get-AzLoadBalancerProbeConfig

## SYNOPSIS
Gets a probe configuration for a load balancer.

## SYNTAX

```
Get-AzLoadBalancerProbeConfig -LoadBalancer <PSLoadBalancer> [-Name <String>]
 [-DefaultProfile <IAzureContextContainer>] [<CommonParameters>]
```

## DESCRIPTION
The Get-AzLoadBalancerProbeConfig cmdlet gets one or more probe configurations for a load balancer.

## EXAMPLES

### Example 1: Get the probe configuration of a load balancer
```
$slb = Get-AzLoadBalancer -Name "MyLoadBalancer" -ResourceGroupName "MyResourceGroup"
Get-AzLoadBalancerProbeConfig -Name "MyProbe" -LoadBalancer $slb
```

The first command gets the load balancer named MyLoadBalancer, and then stores it in the variable $slb.
The second command gets the associated probe configuration named MyProbe from the load balancer in $slb.

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
Specifies the load balancer that is associated with the probe configuration to get.

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
Specifies the name of the probe configuration to get.

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

### Microsoft.Azure.Commands.Network.Models.PSProbe
## NOTES

## RELATED LINKS

[Add-AzLoadBalancerProbeConfig]()

[Get-AzLoadBalancer]()

[New-AzLoadBalancerProbeConfig]()

[Remove-AzLoadBalancerProbeConfig]()

[Set-AzLoadBalancerProbeConfig]()

