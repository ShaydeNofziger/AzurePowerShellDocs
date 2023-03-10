---
external help file: Microsoft.Azure.PowerShell.Cmdlets.Network.dll-Help.xml
Module Name: Az.Network
online version: https://learn.microsoft.com/powershell/module/az.network/add-azapplicationgatewayrewriteruleset
schema: 2.0.0
---

# Add-AzApplicationGatewayRewriteRuleSet

## SYNOPSIS
Adds a rewrite rule set to an application gateway.

## SYNTAX

```
Add-AzApplicationGatewayRewriteRuleSet -ApplicationGateway <PSApplicationGateway> -Name <String>
 -RewriteRule <System.Collections.Generic.List`1[Microsoft.Azure.Commands.Network.Models.PSApplicationGatewayRewriteRule]>
 [-DefaultProfile <IAzureContextContainer>] [<CommonParameters>]
```

## DESCRIPTION
The Add-AzApplicationGatewayRewriteRuleSet cmdlet adds a rewrite rule set to an application gateway.

## EXAMPLES

### Example 1
```
$AppGw = Get-AzApplicationGateway -Name "ApplicationGateway01" -ResourceGroupName "ResourceGroup01"
$AppGw = Add-AzApplicationGatewayRewriteRuleSet -ApplicationGateway $AppGw -Name "ruleset1" -RewriteRule $rule
```

The first command gets the application gateway and stores it in the $AppGw variable.
The second command adds the rewrite rule set to the application gateway.

## PARAMETERS

### -ApplicationGateway
The applicationGateway

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
The name of the RewriteRuleSet

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

### -RewriteRule
List of rewrite rules

```yaml
Type: System.Collections.Generic.List`1[Microsoft.Azure.Commands.Network.Models.PSApplicationGatewayRewriteRule]
Parameter Sets: (All)
Aliases:

Required: True
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

### Microsoft.Azure.Commands.Network.Models.PSApplicationGateway
## NOTES

## RELATED LINKS

[Get-AzApplicationGatewayRewriteRuleSet]()

[New-AzApplicationGatewayRewriteRuleSet]()

[Remove-AzApplicationGatewayRewriteRuleSet]()

[Set-AzApplicationGatewayRewriteRuleSet]()

[New-AzApplicationGatewayRewriteRule]()

[New-AzApplicationGatewayRewriteRuleActionSet]()

[New-AzApplicationGatewayRewriteRuleHeaderConfiguration]()

