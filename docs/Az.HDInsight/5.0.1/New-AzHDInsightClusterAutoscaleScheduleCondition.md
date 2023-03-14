---
external help file: Microsoft.Azure.PowerShell.Cmdlets.HDInsight.dll-Help.xml
Module Name: Az.HDInsight
online version: https://docs.microsoft.com/powershell/module/az.hdinsight/new-azhdinsightclusterautoscaleschedulecondition
schema: 2.0.0
---

# New-AzHDInsightClusterAutoscaleScheduleCondition

## SYNOPSIS
Creates Schedule-based autoscale condition.

## SYNTAX

```
New-AzHDInsightClusterAutoscaleScheduleCondition -Time <DateTime> -WorkerNodeCount <Int32>
 -Day <AzureHDInsightDaysOfWeek[]> [-DefaultProfile <IAzureContextContainer>] [<CommonParameters>]
```

## DESCRIPTION
The New-AzHDInsightClusterAutoscaleScheduleCondition cmdlet creates Schedule-based autoscale condition.

## EXAMPLES

### Example 1
```
New-AzHDInsightClusterAutoscaleScheduleCondition -Time 09:00 -WorkerNodeCount 5 -Day Monday,Wednesday
```

This command creates a condition where cluster autoscale to 5 worker nodes at 09:00 every Monday, Wednesday.

### Example 2: Enable Schedule-based autoscale of a cluster with autoscale condition.
```
# create a autoscale condition
$condition=New-AzHDInsightClusterAutoscaleScheduleCondition -Time 09:00 -WorkerNodeCount 5 -Day Monday,Wednesday

# Set the cluster autoscale configuration
$clusterResourceGroup="group"
$clusterName="MyCluster"
Set-AzHDInsightClusterAutoscaleConfiguration -ResourceGroupName $clusterResourceGroup -ClusterName $clusterName -Schedule -TimeZone "Pacific Standard Time" -Condition $condition
```

This command creates a condition where cluster autoscale to 5 worker nodes at 09:00 every Monday, Wednesday.

## PARAMETERS

### -Day
Gets or sets the days of Autoscale schedule condition.

```yaml
Type: AzureHDInsightDaysOfWeek[]
Parameter Sets: (All)
Aliases:
Accepted values: Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday

Required: True
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

### -Time
Gets or sets the time of Autoscale schedule condition.

```yaml
Type: DateTime
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -WorkerNodeCount
Gets or sets the schedule workernode count of Autoscale schedule condition.

```yaml
Type: Int32
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

### None
## OUTPUTS

### Microsoft.Azure.Commands.HDInsight.Models.AzureHDInsightAutoscaleCondition
## NOTES

## RELATED LINKS

[New-AzHDInsightClusterAutoscaleConfiguration]()

[Set-AzHDInsightClusterAutoscaleConfiguration]()

