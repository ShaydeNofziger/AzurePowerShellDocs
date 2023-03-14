﻿---
external help file: Az.Monitor-help.xml
Module Name: Az.Monitor
online version: https://learn.microsoft.com/powershell/module/az.DiagnosticSetting/new-AzDiagnosticSettingLogSettingsObject
schema: 2.0.0
---

# New-AzDiagnosticSettingLogSettingsObject

## SYNOPSIS
Create an in-memory object for LogSettings.

## SYNTAX

```
New-AzDiagnosticSettingLogSettingsObject -Enabled <Boolean> [-Category <String>] [-CategoryGroup <String>]
 [-RetentionPolicyDay <Int32>] [-RetentionPolicyEnabled <Boolean>] [<CommonParameters>]
```

## DESCRIPTION
Create an in-memory object for LogSettings.

## EXAMPLES

### EXAMPLE 1
```
New-AzDiagnosticSettingLogSettingsObject -Enabled $true -Category ContainerEventLogs -RetentionPolicyDay 7 -RetentionPolicyEnabled $true
```

## PARAMETERS

### -Enabled
a value indicating whether this log is enabled.

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Category
Name of a Diagnostic Log category for a resource type this setting is applied to.
To obtain the list of Diagnostic Log categories for a resource, first perform a GET diagnostic settings operation.

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

### -CategoryGroup
Name of a Diagnostic Log category group for a resource type this setting is applied to.
To obtain the list of Diagnostic Log categories for a resource, first perform a GET diagnostic settings operation.

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

### -RetentionPolicyDay
the number of days for the retention in days.
A value of 0 will retain the events indefinitely.

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

### -RetentionPolicyEnabled
a value indicating whether the retention policy is enabled.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Microsoft.Azure.PowerShell.Cmdlets.Monitor.DiagnosticSetting.Models.Api20210501Preview.LogSettings
## NOTES

## RELATED LINKS

[https://learn.microsoft.com/powershell/module/az.DiagnosticSetting/new-AzDiagnosticSettingLogSettingsObject](https://learn.microsoft.com/powershell/module/az.DiagnosticSetting/new-AzDiagnosticSettingLogSettingsObject)
