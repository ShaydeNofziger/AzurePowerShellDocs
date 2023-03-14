---
external help file: Az.Cdn-help.xml
Module Name: Az.Cdn
online version: https://docs.microsoft.com/powershell/module/az.Cdn/new-AzCdnDeliveryRuleRequestSchemeConditionObject
schema: 2.0.0
---

# New-AzCdnDeliveryRuleRequestSchemeConditionObject

## SYNOPSIS
Create an in-memory object for DeliveryRuleRequestSchemeCondition.

## SYNTAX

```
New-AzCdnDeliveryRuleRequestSchemeConditionObject -Name <MatchVariable> [-ParameterMatchValue <String[]>]
 [-ParameterNegateCondition <Boolean>] [-ParameterTransform <Transform[]>] [<CommonParameters>]
```

## DESCRIPTION
Create an in-memory object for DeliveryRuleRequestSchemeCondition.

## EXAMPLES

### EXAMPLE 1
```
{{ Add code here }}
```

### EXAMPLE 2
```
{{ Add code here }}
```

## PARAMETERS

### -Name
The name of the condition for the delivery rule.

```yaml
Type: MatchVariable
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ParameterMatchValue
The match value for the condition of the delivery rule.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ParameterNegateCondition
Describes if this is negate condition or not.

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -ParameterTransform
List of transforms.

```yaml
Type: Transform[]
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

## OUTPUTS

### Microsoft.Azure.PowerShell.Cmdlets.Cdn.Models.Api20210601.DeliveryRuleRequestSchemeCondition
## NOTES

## RELATED LINKS

[https://docs.microsoft.com/powershell/module/az.Cdn/new-AzCdnDeliveryRuleRequestSchemeConditionObject](https://docs.microsoft.com/powershell/module/az.Cdn/new-AzCdnDeliveryRuleRequestSchemeConditionObject)

