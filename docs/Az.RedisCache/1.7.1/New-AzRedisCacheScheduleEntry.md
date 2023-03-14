---
external help file: Microsoft.Azure.PowerShell.Cmdlets.RedisCache.dll-Help.xml
Module Name: Az.RedisCache
online version: https://learn.microsoft.com/powershell/module/az.rediscache/new-azrediscachescheduleentry
schema: 2.0.0
---

# New-AzRedisCacheScheduleEntry

## SYNOPSIS
Creates a schedule entry.

## SYNTAX

```
New-AzRedisCacheScheduleEntry -DayOfWeek <String> -StartHourUtc <Int32> [-MaintenanceWindow <TimeSpan>]
 [-DefaultProfile <IAzureContextContainer>] [<CommonParameters>]
```

## DESCRIPTION
The New-AzRedisCacheScheduleEntry cmdlet creates a PSScheduleEntry object.
Azure Redis Cache patch schedule cmdlets, such as the New-AzRedisCachePatchSchedule cmdlet, require schedule entry objects.

## EXAMPLES

### Example 1: Create a schedule entry for weekends
```
New-AzRedisCacheScheduleEntry -DayOfWeek "Weekend" -StartHourUtc 2 -MaintenanceWindow "06:00:00"
```

This command creates a PSScheduleEntry object that represents a weekend schedule that has the specified start time and window.

## PARAMETERS

### -DayOfWeek
Specifies the day of the week for the schedule entry.
The acceptable values for this parameter are: - Everyday

- Weekend
- Monday
- Tuesday
- Wednesday
- Thursday
- Friday
- Saturday
- Sunday

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: Everyday, Weekend, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
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

### -MaintenanceWindow
Specifies the amount of time window allowed for updates.

```yaml
Type: TimeSpan
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -StartHourUtc
Specifies an hour of the day when the schedule starts.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### System.String
### System.Int32
### System.Nullable`1[[System.TimeSpan, System.Private.CoreLib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]
## OUTPUTS

### Microsoft.Azure.Commands.RedisCache.Models.PSScheduleEntry
## NOTES
* Keywords: azure, azurerm, arm, resource, management, manager, redis, cache, web, webapp, website

## RELATED LINKS

[Get-AzRedisCachePatchSchedule]()

[New-AzRedisCachePatchSchedule]()

[Remove-AzRedisCachePatchSchedule]()

