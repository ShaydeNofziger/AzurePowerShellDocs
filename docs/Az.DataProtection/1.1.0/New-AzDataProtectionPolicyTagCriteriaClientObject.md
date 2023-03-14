---
external help file: Az.DataProtection-help.xml
Module Name: Az.DataProtection
online version: https://learn.microsoft.com/powershell/module/az.dataprotection/new-azdataprotectionpolicytagcriteriaclientobject
schema: 2.0.0
---

# New-AzDataProtectionPolicyTagCriteriaClientObject

## SYNOPSIS
Creates a new criteria object

## SYNTAX

### ScheduleCriteria (Default)
```
New-AzDataProtectionPolicyTagCriteriaClientObject [-DaysOfWeek <DaysOfWeek[]>] [-WeeksOfMonth <WeeksOfMonth[]>]
 [-MonthsOfYear <MonthsOfYear[]>] [-ScheduleTimes <DateTime[]>] [<CommonParameters>]
```

### AbsoluteCriteria
```
New-AzDataProtectionPolicyTagCriteriaClientObject -AbsoluteCriteria <AbsoluteTagCriteria> [<CommonParameters>]
```

### MonthlyCriteria
```
New-AzDataProtectionPolicyTagCriteriaClientObject [-MonthsOfYear <MonthsOfYear[]>]
 [-ScheduleTimes <DateTime[]>] -DaysOfMonth <String[]> [<CommonParameters>]
```

## DESCRIPTION
Creates a new criteria object

## EXAMPLES

### EXAMPLE 1
```
New-AzDataProtectionPolicyTagCriteriaClientObject -AbsoluteCriteria FirstOfDay
```

### EXAMPLE 2
```
New-AzDataProtectionPolicyTagCriteriaClientObject -DaysOfWeek @("Sunday", "Monday")
```

## PARAMETERS

### -AbsoluteCriteria
Absolute criteria

```yaml
Type: AbsoluteTagCriteria
Parameter Sets: AbsoluteCriteria
Aliases:
Accepted values: AllBackup, FirstOfDay, FirstOfMonth, FirstOfWeek, FirstOfYear

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DaysOfWeek
Days of the week

```yaml
Type: DaysOfWeek[]
Parameter Sets: ScheduleCriteria
Aliases:
Accepted values: Sunday, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -WeeksOfMonth
Weeks of the month.

```yaml
Type: WeeksOfMonth[]
Parameter Sets: ScheduleCriteria
Aliases:
Accepted values: First, Second, Third, Fourth, Last

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MonthsOfYear
Months of the year.

```yaml
Type: MonthsOfYear[]
Parameter Sets: ScheduleCriteria, MonthlyCriteria
Aliases:
Accepted values: January, February, March, April, May, June, July, August, September, October, November, December

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ScheduleTimes
Schedule times.

```yaml
Type: DateTime[]
Parameter Sets: ScheduleCriteria, MonthlyCriteria
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DaysOfMonth
Days of the month.
Allowed values are 1 to 28 and Last

```yaml
Type: String[]
Parameter Sets: MonthlyCriteria
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

### Microsoft.Azure.PowerShell.Cmdlets.DataProtection.Models.Api20221201.IScheduleBasedBackupCriteria
## NOTES

## RELATED LINKS

[https://learn.microsoft.com/powershell/module/az.dataprotection/new-azdataprotectionpolicytagcriteriaclientobject](https://learn.microsoft.com/powershell/module/az.dataprotection/new-azdataprotectionpolicytagcriteriaclientobject)

