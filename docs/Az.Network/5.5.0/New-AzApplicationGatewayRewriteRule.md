﻿---
external help file: Microsoft.Azure.PowerShell.Cmdlets.Network.dll-Help.xml
Module Name: Az.Network
online version: https://learn.microsoft.com/powershell/module/az.network/new-azapplicationgatewayrewriterule
schema: 2.0.0
---

# New-AzApplicationGatewayRewriteRule

## SYNOPSIS
Creates a rewrite rule for an application gateway.

## SYNTAX

```
New-AzApplicationGatewayRewriteRule -Name <String> -ActionSet <PSApplicationGatewayRewriteRuleActionSet>
 [-RuleSequence <Int32>] [-Condition <PSApplicationGatewayRewriteRuleCondition[]>]
 [-DefaultProfile <IAzureContextContainer>] [<CommonParameters>]
```

## DESCRIPTION
The New-AzApplicationGatewayRewriteRule cmdlet creates a rewrite rule for an Azure application gateway.

## EXAMPLES

### Example 1 : Create a rewrite rule for an application gateway
```
$rule = New-AzApplicationGatewayRewriteRule -Name rule1 -ActionSet $action -RuleSequence 101 -Condition $condition
```

This command creates a rewrite rule named rule1 and stores the result in the variable named $rule.

## PARAMETERS

### -ActionSet
ActionSet of the rewrite rule

```yaml
Type: PSApplicationGatewayRewriteRuleActionSet
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Condition
Condition for the rewrite rule to execute

```yaml
Type: PSApplicationGatewayRewriteRuleCondition[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
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
The name of the RewriteRule

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

### -RuleSequence
The rule ordering of this rewrite rule in the rewrite rule set

```yaml
Type: Int32
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

### None
## OUTPUTS

### Microsoft.Azure.Commands.Network.Models.PSApplicationGatewayRewriteRule
## NOTES

## RELATED LINKS

[Add-AzApplicationGatewayRewriteRuleSet]()

[Get-AzApplicationGatewayRewriteRuleSet]()

[New-AzApplicationGatewayRewriteRuleSet]()

[Remove-AzApplicationGatewayRewriteRuleSet]()

[Set-AzApplicationGatewayRewriteRuleSet]()

[New-AzApplicationGatewayRewriteRuleActionSet]()

[New-AzApplicationGatewayRewriteRuleHeaderConfiguration]()
