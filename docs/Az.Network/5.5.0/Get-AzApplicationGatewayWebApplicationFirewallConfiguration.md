---
external help file: Microsoft.Azure.PowerShell.Cmdlets.Network.dll-Help.xml
Module Name: Az.Network
online version: https://learn.microsoft.com/powershell/module/az.network/get-azapplicationgatewaywebapplicationfirewallconfiguration
schema: 2.0.0
---

# Get-AzApplicationGatewayWebApplicationFirewallConfiguration

## SYNOPSIS
Gets the WAF configuration of an application gateway.

## SYNTAX

```
Get-AzApplicationGatewayWebApplicationFirewallConfiguration -ApplicationGateway <PSApplicationGateway>
 [-DefaultProfile <IAzureContextContainer>] [<CommonParameters>]
```

## DESCRIPTION
The Get-AzApplicationGatewayWebApplicationFirewallConfiguration cmdlet gets the web application firewall (WAF) configuration of an application gateway.

## EXAMPLES

### Example 1: Get an application gateway web application firewall configuration
```
$AppGW = Get-AzApplicationGateway -Name "ApplicationGateway01" -ResourceGroupName "ResourceGroup01"
$FirewallConfig = Get-AzApplicationGatewayWebApplicationFirewallConfiguration -ApplicationGateway $AppGW
```

The first command gets the application gateway named ApplicationGateway01, and then stores it in the $AppGW variable.
The second command gets the firewall configuration of the application gateway in $AppGW, and then stores it in $FirewallConfig.

## PARAMETERS

### -ApplicationGateway
Specifies an application gateway object.
You can use the Get-AzApplicationGateway cmdlet to get an application gateway object.

```yaml
Type: PSApplicationGateway
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

### Microsoft.Azure.Commands.Network.Models.PSApplicationGateway
## OUTPUTS

### Microsoft.Azure.Commands.Network.Models.PSApplicationGatewayWebApplicationFirewallConfiguration
## NOTES

## RELATED LINKS

[Get-AzApplicationGateway]()

[New-AzApplicationGatewayWebApplicationFirewallConfiguration]()

[Set-AzApplicationGatewayWebApplicationFirewallConfiguration]()

