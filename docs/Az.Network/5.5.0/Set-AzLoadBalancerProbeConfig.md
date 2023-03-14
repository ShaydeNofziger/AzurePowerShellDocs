---
external help file: Microsoft.Azure.PowerShell.Cmdlets.Network.dll-Help.xml
Module Name: Az.Network
online version: https://learn.microsoft.com/powershell/module/az.network/set-azloadbalancerprobeconfig
schema: 2.0.0
---

# Set-AzLoadBalancerProbeConfig

## SYNOPSIS
Updates a probe configuration for a load balancer.

## SYNTAX

```
Set-AzLoadBalancerProbeConfig -LoadBalancer <PSLoadBalancer> -Name <String> [-Protocol <String>] -Port <Int32>
 -IntervalInSeconds <Int32> -ProbeCount <Int32> [-ProbeThreshold <Int32>] [-RequestPath <String>]
 [-DefaultProfile <IAzureContextContainer>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
The Set-AzLoadBalancerProbeConfig cmdlet updates a probe configuration for a load balancer.

## EXAMPLES

### Example 1: Modify the probe configuration on a load balancer
```
$slb = Get-AzLoadBalancer -Name "MyLoadBalancer" -ResourceGroupName "MyResourceGroup"
$slb | Add-AzLoadBalancerProbeConfig -Name "NewProbe" -Protocol "http" -Port 80 -IntervalInSeconds 15 -ProbeCount 2 -ProbeThreshold 2 -RequestPath "healthcheck.aspx" 
$slb | Set-AzLoadBalancerProbeConfig -Name "NewProbe" -Port 80 -IntervalInSeconds 15 -ProbeCount 2
```

The first command gets the loadbalancer named MyLoadBalancer, and then stores it in the $slb variable.
The second command uses the pipeline operator to pass the load balancer in $slb to Add-AzLoadBalancerProbeConfig, which adds a new probe configuration to it.
The third command passes the load balancer to Set-AzLoadBalancerProbeConfig , which sets the new configuration.
Note that it is necessary to specify several of the same parameters that were specified in the previous command because they are required by the current cmdlet.

### Example 2
```
Set-AzLoadBalancerProbeConfig -IntervalInSeconds 15 -Name 'NewProbe' -Port 443 -ProbeCount 2 -Protocol https -LoadBalancer <PSLoadBalancer>
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

### -IntervalInSeconds
Specifies the interval, in seconds, between probes to each instance of the load-balanced service.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -LoadBalancer
Specifies a load balancer.
This cmdlet updates a probe configuration for the load balancer that this parameter specifies.

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
Specifies the name of the probe configuration that this cmdlet sets.

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

### -Port
Specifies the port on which probes should connect to a load-balanced service.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ProbeCount
Specifies the number of per-instance consecutive failures for an instance to be considered unhealthy.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ProbeThreshold
Specifies the number of consecutive successful or failed probes in order to allow or deny traffic from being delivered to this endpoint.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Protocol
Specifies the protocol to use for the probing.
The acceptable values for this parameter are: Tcp or Http.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -RequestPath
Specifies the path in the load-balanced service to probe to determine health.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
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
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### Microsoft.Azure.Commands.Network.Models.PSLoadBalancer
### System.String
### System.Int32
## OUTPUTS

### Microsoft.Azure.Commands.Network.Models.PSLoadBalancer
## NOTES

## RELATED LINKS

[Add-AzLoadBalancerProbeConfig]()

[Get-AzLoadBalancer]()

[Get-AzLoadBalancerProbeConfig]()

[New-AzLoadBalancerProbeConfig]()

[Remove-AzLoadBalancerProbeConfig]()

