---
external help file: Az.Monitor-help.xml
Module Name: Az.Monitor
online version: https://learn.microsoft.com/powershell/module/az.ScheduledQueryRule/new-AzScheduledQueryRuleConditionObject
schema: 2.0.0
---

# New-AzScheduledQueryRuleConditionObject

## SYNOPSIS
Create an in-memory object for Condition.

## SYNTAX

```
New-AzScheduledQueryRuleConditionObject [-Dimension <IDimension[]>]
 [-FailingPeriodMinFailingPeriodsToAlert <Int64>] [-FailingPeriodNumberOfEvaluationPeriod <Int64>]
 [-MetricMeasureColumn <String>] [-MetricName <String>] [-Operator <ConditionOperator>] [-Query <String>]
 [-ResourceIdColumn <String>] [-Threshold <Double>] [-TimeAggregation <TimeAggregation>] [<CommonParameters>]
```

## DESCRIPTION
Create an in-memory object for Condition.

## EXAMPLES

### EXAMPLE 1
```
$dimension = New-AzScheduledQueryRuleDimensionObject -Name Computer -Operator Include -Value *
New-AzScheduledQueryRuleConditionObject -Dimension $dimension -Query "Perf | where ObjectName == `"Processor`" and CounterName == `"% Processor Time`" | summarize AggregatedValue = avg(CounterValue) by bin(TimeGenerated, 5m), Computer" -TimeAggregation "Average" -MetricMeasureColumn "AggregatedValue" -Operator "GreaterThan" -Threshold "70" -FailingPeriodNumberOfEvaluationPeriod 1 -FailingPeriodMinFailingPeriodsToAlert 1
```

## PARAMETERS

### -Dimension
List of Dimensions conditions.
To construct, see NOTES section for DIMENSION properties and create a hash table.

```yaml
Type: IDimension[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -FailingPeriodMinFailingPeriodsToAlert
The number of violations to trigger an alert.
Should be smaller or equal to numberOfEvaluationPeriods.
Default value is 1.

```yaml
Type: Int64
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -FailingPeriodNumberOfEvaluationPeriod
The number of aggregated lookback points.
The lookback time window is calculated based on the aggregation granularity (windowSize) and the selected number of aggregated points.
Default value is 1.

```yaml
Type: Int64
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -MetricMeasureColumn
The column containing the metric measure number.
Relevant only for rules of the kind LogAlert.

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

### -MetricName
The name of the metric to be sent.
Relevant and required only for rules of the kind LogToMetric.

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

### -Operator
The criteria operator.
Relevant and required only for rules of the kind LogAlert.

```yaml
Type: ConditionOperator
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Query
Log query alert.

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

### -ResourceIdColumn
The column containing the resource id.
The content of the column must be a uri formatted as resource id.
Relevant only for rules of the kind LogAlert.

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

### -Threshold
the criteria threshold value that activates the alert.
Relevant and required only for rules of the kind LogAlert.

```yaml
Type: Double
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -TimeAggregation
Aggregation type.
Relevant and required only for rules of the kind LogAlert.

```yaml
Type: TimeAggregation
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

### Microsoft.Azure.PowerShell.Cmdlets.Monitor.ScheduledQueryRule.Models.Api20210801.Condition
## NOTES
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties.
For information on hash tables, run Get-Help about_Hash_Tables.

DIMENSION \<IDimension\[\]\>: List of Dimensions conditions.
  Name \<String\>: Name of the dimension
  Operator \<DimensionOperator\>: Operator for dimension values
  Value \<String\[\]\>: List of dimension values

## RELATED LINKS

[https://learn.microsoft.com/powershell/module/az.ScheduledQueryRule/new-AzScheduledQueryRuleConditionObject](https://learn.microsoft.com/powershell/module/az.ScheduledQueryRule/new-AzScheduledQueryRuleConditionObject)

