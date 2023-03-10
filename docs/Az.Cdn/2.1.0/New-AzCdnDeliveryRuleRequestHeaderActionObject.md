---
external help file: Az.Cdn-help.xml
Module Name: Az.Cdn
online version: https://docs.microsoft.com/powershell/module/az.Cdn/new-AzCdnDeliveryRuleRequestHeaderActionObject
schema: 2.0.0
---

# New-AzCdnDeliveryRuleRequestHeaderActionObject

## SYNOPSIS
Create an in-memory object for DeliveryRuleRequestHeaderAction.

## SYNTAX

```
New-AzCdnDeliveryRuleRequestHeaderActionObject -ParameterHeaderAction <HeaderAction>
 -ParameterHeaderName <String> -Name <DeliveryRuleAction> [-ParameterValue <String>] [<CommonParameters>]
```

## DESCRIPTION
Create an in-memory object for DeliveryRuleRequestHeaderAction.

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

### -ParameterHeaderAction
Action to perform.

```yaml
Type: HeaderAction
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ParameterHeaderName
Name of the header to modify.

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

### -Name
The name of the action for the delivery rule.

```yaml
Type: DeliveryRuleAction
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ParameterValue
Value for the specified action.

```yaml
Type: String
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

### Microsoft.Azure.PowerShell.Cmdlets.Cdn.Models.Api20210601.DeliveryRuleRequestHeaderAction
## NOTES

## RELATED LINKS

[https://docs.microsoft.com/powershell/module/az.Cdn/new-AzCdnDeliveryRuleRequestHeaderActionObject](https://docs.microsoft.com/powershell/module/az.Cdn/new-AzCdnDeliveryRuleRequestHeaderActionObject)

