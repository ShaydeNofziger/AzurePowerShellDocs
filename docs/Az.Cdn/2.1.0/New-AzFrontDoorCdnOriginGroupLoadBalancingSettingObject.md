---
external help file: Az.Cdn-help.xml
Module Name: Az.Cdn
online version: https://docs.microsoft.com/powershell/module/az.Cdn/new-AzFrontDoorCdnOriginGroupLoadBalancingSettingObject
schema: 2.0.0
---

# New-AzFrontDoorCdnOriginGroupLoadBalancingSettingObject

## SYNOPSIS
Create an in-memory object for LoadBalancingSettingsParameters.

## SYNTAX

```
New-AzFrontDoorCdnOriginGroupLoadBalancingSettingObject [-AdditionalLatencyInMillisecond <Int32>]
 [-SampleSize <Int32>] [-SuccessfulSamplesRequired <Int32>] [<CommonParameters>]
```

## DESCRIPTION
Create an in-memory object for LoadBalancingSettingsParameters.

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

### -AdditionalLatencyInMillisecond
The additional latency in milliseconds for probes to fall into the lowest latency bucket.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -SampleSize
The number of samples to consider for load balancing decisions.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -SuccessfulSamplesRequired
The number of samples within the sample period that must succeed.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Microsoft.Azure.PowerShell.Cmdlets.Cdn.Models.Api20210601.LoadBalancingSettingsParameters
## NOTES

## RELATED LINKS

[https://docs.microsoft.com/powershell/module/az.Cdn/new-AzFrontDoorCdnOriginGroupLoadBalancingSettingObject](https://docs.microsoft.com/powershell/module/az.Cdn/new-AzFrontDoorCdnOriginGroupLoadBalancingSettingObject)

