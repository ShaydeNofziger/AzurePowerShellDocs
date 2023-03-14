---
external help file: Microsoft.Azure.PowerShell.Cmdlets.Network.dll-Help.xml
Module Name: Az.Network
online version: https://learn.microsoft.com/powershell/module/az.network/get-azexpressroutecircuitconnectionconfig
schema: 2.0.0
---

# Get-AzExpressRouteCircuitConnectionConfig

## SYNOPSIS
Gets an ExpressRoute circuit connection configuration associated with Private Peering of ExpressRouteCircuit.

## SYNTAX

```
Get-AzExpressRouteCircuitConnectionConfig [[-Name] <String>] [-ExpressRouteCircuit] <PSExpressRouteCircuit>
 [-DefaultProfile <IAzureContextContainer>] [<CommonParameters>]
```

## DESCRIPTION
The Get-AzExpressRouteCircuitConnectionConfig cmdlet retrieves the configuration of a circuit connection associated with Private Peering for an ExpressRoute circuit.

## EXAMPLES

### Example 1: Display the circuit connection configuration for an ExpressRoute circuit
```
$circuit_init = Get-AzExpressRouteCircuit -Name $initiatingCircuitName -ResourceGroupName $rg
Get-AzExpressRouteCircuitConnectionConfig -Name $circuitConnectionName -ExpressRouteCircuit $circuit_init
```

### Example 2: Get circuit connection resource associated with an ExpressRoute Circuit using piping
```
Get-AzExpressRouteCircuit -Name $initiatingCircuitName -ResourceGroupName $rg|Get-AzExpressRouteCircuitConnectionConfig -Name $circuitConnectionName
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

### -ExpressRouteCircuit
The ExpressRoute circuit object containing the circuit connection configuration.

```yaml
Type: PSExpressRouteCircuit
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Name
The name of the circuit connection configuration to be retrieved.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### Microsoft.Azure.Commands.Network.Models.PSExpressRouteCircuit
## OUTPUTS

### Microsoft.Azure.Commands.Network.Models.PSExpressRouteCircuitConnection
## NOTES

## RELATED LINKS

[Get-AzExpressRouteCircuit]()

[Add-AzExpressRouteCircuitConnectionConfig]()

[Remove-AzExpressRouteCircuitConnectionConfig]()

[Set-AzExpressRouteCircuitConnectionConfig]()

