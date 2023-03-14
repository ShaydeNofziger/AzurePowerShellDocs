---
external help file: Microsoft.Azure.PowerShell.Cmdlets.Network.dll-Help.xml
Module Name: Az.Network
online version: https://learn.microsoft.com/powershell/module/az.network/reset-azvirtualnetworkgateway
schema: 2.0.0
---

# Reset-AzVirtualNetworkGateway

## SYNOPSIS
Resets the Virtual Network Gateway

## SYNTAX

```
Reset-AzVirtualNetworkGateway -VirtualNetworkGateway <PSVirtualNetworkGateway> [-GatewayVip <String>] [-AsJob]
 [-DefaultProfile <IAzureContextContainer>] [<CommonParameters>]
```

## DESCRIPTION
Resets the Virtual Network Gateway

## EXAMPLES

### Example 1:
```
$Gateway = Get-AzVirtualNetworkGateway -Name myGateway1 -ResourceGroupName myRG
Reset-AzVirtualNetworkGateway -VirtualNetworkGateway $Gateway
```

## PARAMETERS

### -AsJob
Run cmdlet in the background

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

### -GatewayVip
The gateway vip in order to reset particular gateway instance (e.g.
in case of Active-Active feature enabled gateways.) By default, gateway primary instance will be reset if no value is passed.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -VirtualNetworkGateway
@{Text=}

```yaml
Type: PSVirtualNetworkGateway
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

### Microsoft.Azure.Commands.Network.Models.PSVirtualNetworkGateway
### System.String
## OUTPUTS

### Microsoft.Azure.Commands.Network.Models.PSVirtualNetworkGateway
## NOTES

## RELATED LINKS

[Get-AzVirtualNetworkGateway]()

[New-AzVirtualNetworkGateway]()

[Remove-AzVirtualNetworkGateway]()

[Resize-AzVirtualNetworkGateway]()

[Set-AzVirtualNetworkGateway]()

