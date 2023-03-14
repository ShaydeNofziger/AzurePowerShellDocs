---
external help file: Microsoft.Azure.PowerShell.Cmdlets.Network.dll-Help.xml
Module Name: Az.Network
online version: https://learn.microsoft.com/powershell/module/az.network/get-azloadbalancerinboundnatpoolconfig
schema: 2.0.0
---

# Get-AzLoadBalancerInboundNatPoolConfig

## SYNOPSIS
Gets one or more inbound NAT pool configurations from a load balancer.

## SYNTAX

```
Get-AzLoadBalancerInboundNatPoolConfig -LoadBalancer <PSLoadBalancer> [-Name <String>]
 [-DefaultProfile <IAzureContextContainer>] [<CommonParameters>]
```

## DESCRIPTION
The Get-AzLoadBalancerInboundNatPoolConfig cmdlet gets one or more inbound NAT pool configurations from a load balancer.

## EXAMPLES

### 1: Get
```
$slb = Get-AzLoadBalancer -Name "MyLoadBalancer" -ResourceGroupName "MyResourceGroup"
$slb | Get-AzLoadBalancerInboundNatPoolConfig -Name myInboundNatPool
```

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
@{Text=}

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
@{Text=}

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

### Microsoft.Azure.Commands.Network.Models.PSInboundNatPool
## NOTES

## RELATED LINKS

[Add-AzLoadBalancerInboundNatPoolConfig]()

[New-AzLoadBalancerInboundNatPoolConfig]()

[Remove-AzLoadBalancerInboundNatPoolConfig]()

[Set-AzLoadBalancerInboundNatPoolConfig]()

