---
external help file: Microsoft.Azure.PowerShell.Cmdlets.Network.dll-Help.xml
Module Name: Az.Network
online version: https://learn.microsoft.com/powershell/module/az.network/remove-azapplicationgatewayconnectiondraining
schema: 2.0.0
---

# Remove-AzApplicationGatewayConnectionDraining

## SYNOPSIS
Removes the connection draining configuration of a back-end HTTP settings object.

## SYNTAX

```
Remove-AzApplicationGatewayConnectionDraining -BackendHttpSettings <PSApplicationGatewayBackendHttpSettings>
 [-DefaultProfile <IAzureContextContainer>] [<CommonParameters>]
```

## DESCRIPTION
The Remove-AzApplicationGatewayConnectionDraining cmdlet removes the connection draining configuration of a back-end HTTP settings object.

## EXAMPLES

### Example 1
```
$AppGw = Get-AzApplicationGateway -Name "ApplicationGateway01" -ResourceGroupName "ResourceGroup01"
$Settings  = Get-AzApplicationGatewayBackendHttpSetting -Name "Settings01" -ApplicationGateway $AppGw
Remove-AzApplicationGatewayConnectionDraining -BackendHttpSettings $Settings
Set-AzApplicationGateway -ApplicationGateway $AppGW
```

The first command gets the application gateway named ApplicationGateway01 in the resource group named ResourceGroup01 and stores it in the $AppGw variable.
The second command gets the back-end HTTP settings named Settings01 for $AppGw and stores the settings in the $Settings variable.
The third command removes the connection draining configuration of the back-end HTTP settings stored in $Settings.
And, the last command updates the application gateway.

## PARAMETERS

### -BackendHttpSettings
The backend http settings

```yaml
Type: PSApplicationGatewayBackendHttpSettings
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### Microsoft.Azure.Commands.Network.Models.PSApplicationGatewayBackendHttpSettings
## OUTPUTS

### Microsoft.Azure.Commands.Network.Models.PSApplicationGatewayBackendHttpSettings
## NOTES

## RELATED LINKS

[Get-AzApplicationGateway]()

[Get-AzApplicationGatewayBackendHttpSetting]()

[Get-AzApplicationGatewayConnectionDraining]()

[New-AzApplicationGatewayConnectionDraining]()

[Set-AzApplicationGatewayConnectionDraining]()

