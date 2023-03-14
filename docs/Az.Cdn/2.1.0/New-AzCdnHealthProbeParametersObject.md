﻿---
external help file: Az.Cdn-help.xml
Module Name: Az.Cdn
online version: https://docs.microsoft.com/powershell/module/az.Cdn/new-AzCdnHealthProbeParametersObject
schema: 2.0.0
---

# New-AzCdnHealthProbeParametersObject

## SYNOPSIS
Create an in-memory object for HealthProbeParameters.

## SYNTAX

```
New-AzCdnHealthProbeParametersObject [-ProbeIntervalInSecond <Int32>] [-ProbePath <String>]
 [-ProbeProtocol <ProbeProtocol>] [-ProbeRequestType <HealthProbeRequestType>] [<CommonParameters>]
```

## DESCRIPTION
Create an in-memory object for HealthProbeParameters.

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

### -ProbeIntervalInSecond
The number of seconds between health probes.Default is 240sec.

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

### -ProbePath
The path relative to the origin that is used to determine the health of the origin.

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

### -ProbeProtocol
Protocol to use for health probe.

```yaml
Type: ProbeProtocol
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ProbeRequestType
The type of health probe request that is made.

```yaml
Type: HealthProbeRequestType
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

### Microsoft.Azure.PowerShell.Cmdlets.Cdn.Models.Api20210601.HealthProbeParameters
## NOTES

## RELATED LINKS

[https://docs.microsoft.com/powershell/module/az.Cdn/new-AzCdnHealthProbeParametersObject](https://docs.microsoft.com/powershell/module/az.Cdn/new-AzCdnHealthProbeParametersObject)
