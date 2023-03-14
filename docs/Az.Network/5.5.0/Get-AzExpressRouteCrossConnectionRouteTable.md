---
external help file: Microsoft.Azure.PowerShell.Cmdlets.Network.dll-Help.xml
Module Name: Az.Network
online version: https://learn.microsoft.com/powershell/module/az.network/get-azexpressroutecrossconnectionroutetable
schema: 2.0.0
---

# Get-AzExpressRouteCrossConnectionRouteTable

## SYNOPSIS
Gets a route table from an ExpressRoute cross connection.

## SYNTAX

### SpecifyByParameterValues
```
Get-AzExpressRouteCrossConnectionRouteTable -ResourceGroupName <String> -CrossConnectionName <String>
 -PeeringType <String> -DevicePath <DevicePathEnum> [-DefaultProfile <IAzureContextContainer>]
 [<CommonParameters>]
```

### SpecifyByReference
```
Get-AzExpressRouteCrossConnectionRouteTable -ExpressRouteCrossConnection <PSExpressRouteCrossConnection>
 -PeeringType <String> -DevicePath <DevicePathEnum> [-DefaultProfile <IAzureContextContainer>]
 [<CommonParameters>]
```

## DESCRIPTION
The Get-AzExpressRouteCrossConnectionRouteTable cmdlet retrieves a detailed route table of an ExpressRoute circuit.
The route table will show all routes or can be filtered to show routes for a specific peering type.
You can use the route table to validate your peering configuration and connectivity.

## EXAMPLES

### Example 1: Display the route table for the primary path
```
Get-AzExpressRouteCrossConnectionRouteTable -ResourceGroupName $RG -CrossConnectionName $CircuitName -PeeringType MicrosoftPeering -DevicePath Primary
```

## PARAMETERS

### -CrossConnectionName
The Name of Express Route Cross Connection

```yaml
Type: String
Parameter Sets: SpecifyByParameterValues
Aliases: Name, ResourceName

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

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

### -DevicePath
The acceptable values for this parameter are: \`Primary\` or \`Secondary\`

```yaml
Type: DevicePathEnum
Parameter Sets: (All)
Aliases:
Accepted values: Primary, Secondary

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ExpressRouteCrossConnection
The Express Route Cross Connection

```yaml
Type: PSExpressRouteCrossConnection
Parameter Sets: SpecifyByReference
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -PeeringType
The acceptable values for this parameter are: \`AzurePrivatePeering\`, \`AzurePublicPeering\`, and \`MicrosoftPeering\`

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: AzurePrivatePeering, AzurePublicPeering, MicrosoftPeering

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ResourceGroupName
The name of the resource group containing the ExpressRoute cross connection.

```yaml
Type: String
Parameter Sets: SpecifyByParameterValues
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None
This cmdlet does not accept any input.

## OUTPUTS

### Microsoft.Azure.Commands.Network.Models.PSExpressRouteCircuitRoutesTable
## NOTES

## RELATED LINKS

[Get-AzExpressRouteCrossConnectionARPTable]()

[Get-AzExpressRouteCrossConnectionRouteTableSummary]()

