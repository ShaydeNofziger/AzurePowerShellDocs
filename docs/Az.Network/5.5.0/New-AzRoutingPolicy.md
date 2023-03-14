---
external help file: Microsoft.Azure.PowerShell.Cmdlets.Network.dll-Help.xml
Module Name: Az.Network
online version: https://learn.microsoft.com/powershell/module/az.network/new-azroutingpolicy
schema: 2.0.0
---

# New-AzRoutingPolicy

## SYNOPSIS
Returns an in-memory routing policy object.

## SYNTAX

```
New-AzRoutingPolicy -Destination <String[]> -NextHop <String> -Name <String>
 [-DefaultProfile <IAzureContextContainer>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
The New-AzRoutingPolicy cmdlet creates a routing policy object.
This can be passed in to Add-AzRoutingPolicy (./Add-AzRoutingPolicy.md) cmdlet to add to an existing routing intent resource or \[New-AzRoutingIntent\](./New-AzRoutingIntent.md)cmdlet to create a new routing intent resource.

## EXAMPLES

### Example 1
```
$rgName = "testRg"
$firewallName = "testFirewall"
$firewall = Get-AzFirewall -Name $firewallName -ResourceGroupName $rgName
New-AzRoutingPolicy -Name "PrivateTraffic" -Destination @("PrivateTraffic") -NextHop $firewall.Id

Name            : PrivateTraffic
DestinationType : TrafficType
Destinations    : {PrivateTraffic}
NextHopType     : ResourceId
NextHop         : /subscriptions/testSub/resourceGroups/testRg/providers/Microsoft.Network/azureFirewalls/testFirewall
```

## PARAMETERS

### -DefaultProfile
The credentials, account, tenant, and subscription used for communication with Azure.

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

### -Name
Name of the routing policy

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

### -NextHop
Id of the next hop resource.

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

### -Destination
The list of destinations.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: True
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

### System.String
### Microsoft.Azure.Commands.Network.Models.PSRoutingIntent
## OUTPUTS

### Microsoft.Azure.Commands.Network.Models.PSRoutingPolicy
## NOTES

## RELATED LINKS

[Add-AzRoutingPolicy]()

[Get-AzRoutingIntent]()

[Get-AzRoutingPolicy]()

[New-AzRoutingIntent]()

[Remove-AzRoutingIntent]()

[Remove-AzRoutingPolicy]()

[Set-AzRoutingIntent]()

[Set-AzRoutingPolicy]()

