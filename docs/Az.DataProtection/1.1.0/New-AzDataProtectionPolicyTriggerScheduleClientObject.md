---
external help file: Az.DataProtection-help.xml
Module Name: Az.DataProtection
online version: https://learn.microsoft.com/powershell/module/az.dataprotection/new-azdataprotectionpolicytriggerscheduleclientobject
schema: 2.0.0
---

# New-AzDataProtectionPolicyTriggerScheduleClientObject

## SYNOPSIS
Creates new Schedule object

## SYNTAX

```
New-AzDataProtectionPolicyTriggerScheduleClientObject -ScheduleDays <DateTime[]>
 -IntervalType <BackupFrequency> -IntervalCount <Int32> [<CommonParameters>]
```

## DESCRIPTION
Creates new Schedule object

## EXAMPLES

### EXAMPLE 1
```
$date = Get-Date
New-AzDataProtectionPolicyTriggerScheduleClientObject -ScheduleDays $date -IntervalType Daily -IntervalCount 1
```

### EXAMPLE 2
```
$date = Get-Date
New-AzDataProtectionPolicyTriggerScheduleClientObject -ScheduleDays $date -IntervalType Hourly -IntervalCount 4
```

## PARAMETERS

### -ScheduleDays
Days with which backup will be scheduled.

```yaml
Type: DateTime[]
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -IntervalType
Freuquency of the backup.

```yaml
Type: BackupFrequency
Parameter Sets: (All)
Aliases:
Accepted values: Daily, Weekly, Hourly

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -IntervalCount
Frequency of the backup.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### System.String[]
## NOTES

## RELATED LINKS

[https://learn.microsoft.com/powershell/module/az.dataprotection/new-azdataprotectionpolicytriggerscheduleclientobject](https://learn.microsoft.com/powershell/module/az.dataprotection/new-azdataprotectionpolicytriggerscheduleclientobject)

