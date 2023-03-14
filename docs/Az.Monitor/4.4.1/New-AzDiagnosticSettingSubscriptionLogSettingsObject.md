---
external help file: Az.Monitor-help.xml
Module Name: Az.Monitor
online version: https://learn.microsoft.com/powershell/module/az.DiagnosticSetting/new-AzDiagnosticSettingSubscriptionLogSettingsObject
schema: 2.0.0
---

# New-AzDiagnosticSettingSubscriptionLogSettingsObject

## SYNOPSIS
Create an in-memory object for SubscriptionLogSettings.

## SYNTAX

```
New-AzDiagnosticSettingSubscriptionLogSettingsObject -Enabled <Boolean> [-Category <String>]
 [-CategoryGroup <String>] [<CommonParameters>]
```

## DESCRIPTION
Create an in-memory object for SubscriptionLogSettings.

## EXAMPLES

### EXAMPLE 1
```
New-AzDiagnosticSettingSubscriptionLogSettingsObject -Category Recommendation -Enabled $true
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
Name of a Subscription Diagnostic Log category for a resource type this setting is applied to.

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
Name of a Subscription Diagnostic Log category group for a resource type this setting is applied to.

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

### Microsoft.Azure.PowerShell.Cmdlets.Monitor.DiagnosticSetting.Models.Api20210501Preview.SubscriptionLogSettings
## NOTES

## RELATED LINKS

[https://learn.microsoft.com/powershell/module/az.DiagnosticSetting/new-AzDiagnosticSettingSubscriptionLogSettingsObject](https://learn.microsoft.com/powershell/module/az.DiagnosticSetting/new-AzDiagnosticSettingSubscriptionLogSettingsObject)

