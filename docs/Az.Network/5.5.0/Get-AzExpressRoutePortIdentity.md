﻿---
external help file: Microsoft.Azure.PowerShell.Cmdlets.Network.dll-Help.xml
Module Name: Az.Network
online version: https://learn.microsoft.com/powershell/module/az.network/get-azexpressrouteportidentity
schema: 2.0.0
---

# Get-AzExpressRoutePortIdentity

## SYNOPSIS
Get identity assigned to an ExpressRoutePort.

## SYNTAX

```
Get-AzExpressRoutePortIdentity -ExpressRoutePort <PSExpressRoutePort>
 [-DefaultProfile <IAzureContextContainer>] [<CommonParameters>]
```

## DESCRIPTION
The Get-AzExpressRoutePortIdentity cmdlet gets identity assigned to a local Azure ExpressRoutePort object.

## EXAMPLES

### Example 1
```
$exrPort = Get-AzExpressRoutePort -Name $exrPortName -ResourceGroupName $resgpName
$identity = Get-AzExpressRoutePortIdentity -ExpressRoutePort $exrPort
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

### -ExpressRoutePort
The ExpressRoute Port

```yaml
Type: PSExpressRoutePort
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### Microsoft.Azure.Commands.Network.Models.PSExpressRoutePort
## OUTPUTS

### Microsoft.Azure.Commands.Network.Models.PSManagedServiceIdentity
## NOTES

## RELATED LINKS

[Set-AzExpressRoutePortIdentity]()

[New-AzExpressRoutePortIdentity]()

[Remove-AzExpressRoutePortIdentity]()
