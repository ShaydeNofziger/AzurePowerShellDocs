---
external help file: Az.Monitor-help.xml
Module Name: Az.Monitor
online version: https://learn.microsoft.com/powershell/module/az.Autoscale/new-AzAutoscaleScaleRuleMetricDimensionObject
schema: 2.0.0
---

# New-AzAutoscaleScaleRuleMetricDimensionObject

## SYNOPSIS
Create an in-memory object for ScaleRuleMetricDimension.

## SYNTAX

```
New-AzAutoscaleScaleRuleMetricDimensionObject -DimensionName <String>
 -Operator <ScaleRuleMetricDimensionOperationType> -Value <String[]> [<CommonParameters>]
```

## DESCRIPTION
Create an in-memory object for ScaleRuleMetricDimension.

## EXAMPLES

### EXAMPLE 1
```
New-AzAutoscaleScaleRuleMetricDimensionObject -DimensionName VMName -Operator 'Equals' -Value test-vm
```

## PARAMETERS

### -DimensionName
Name of the dimension.

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

### -Operator
the dimension operator.
Only 'Equals' and 'NotEquals' are supported.
'Equals' being equal to any of the values.
'NotEquals' being not equal to all of the values.

```yaml
Type: ScaleRuleMetricDimensionOperationType
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Value
list of dimension values.
For example: \["App1","App2"\].

```yaml
Type: String[]
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

## OUTPUTS

### Microsoft.Azure.PowerShell.Cmdlets.Monitor.Autoscale.Models.Api20221001.ScaleRuleMetricDimension
## NOTES

## RELATED LINKS

[https://learn.microsoft.com/powershell/module/az.Autoscale/new-AzAutoscaleScaleRuleMetricDimensionObject](https://learn.microsoft.com/powershell/module/az.Autoscale/new-AzAutoscaleScaleRuleMetricDimensionObject)

