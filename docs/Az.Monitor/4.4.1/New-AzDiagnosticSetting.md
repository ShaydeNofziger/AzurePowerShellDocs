---
external help file: Az.Monitor-help.xml
Module Name: Az.Monitor
online version: https://learn.microsoft.com/powershell/module/az.monitor/new-azdiagnosticsetting
schema: 2.0.0
---

# New-AzDiagnosticSetting

## SYNOPSIS
Creates or updates diagnostic settings for the specified resource.

## SYNTAX

```
New-AzDiagnosticSetting -Name <String> -ResourceId <String> [-EventHubAuthorizationRuleId <String>]
 [-EventHubName <String>] [-Log <ILogSettings[]>] [-LogAnalyticsDestinationType <String>]
 [-MarketplacePartnerId <String>] [-Metric <IMetricSettings[]>] [-ServiceBusRuleId <String>]
 [-StorageAccountId <String>] [-WorkspaceId <String>] [-DefaultProfile <PSObject>] [-Break]
 [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>]
 [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
Creates or updates diagnostic settings for the specified resource.

## EXAMPLES

### EXAMPLE 1
```
$subscriptionId = (Get-AzContext).Subscription.Id
$metric = @()
$log = @()
$metric += New-AzDiagnosticSettingMetricSettingsObject -Enabled $true -Category AllMetrics -RetentionPolicyDay 7 -RetentionPolicyEnabled $true
$log += New-AzDiagnosticSettingLogSettingsObject -Enabled $true -Category ContainerEventLogs -RetentionPolicyDay 7 -RetentionPolicyEnabled $true
New-AzDiagnosticSetting -Name test-setting -ResourceId /subscriptions/$subscriptionId/resourceGroups/test-rg-name/providers/Microsoft.AppPlatform/Spring/springcloud-001 -WorkspaceId /subscriptions/$subscriptionId/resourcegroups/test-rg-name/providers/microsoft.operationalinsights/workspaces/test-workspace -Log $log -Metric $metric
```

### EXAMPLE 2
```
$subscriptionId = (Get-AzContext).Subscription.Id
$metric = @()
$log = @()
$categories = Get-AzDiagnosticSettingCategory -ResourceId /subscriptions/$subscriptionId/resourceGroups/test-rg-name/providers/Microsoft.AppPlatform/Spring/springcloud-001
$categories | ForEach-Object {if($_.CategoryType -eq "Metrics"){$metric+=New-AzDiagnosticSettingMetricSettingsObject -Enabled $true -Category $_.Name -RetentionPolicyDay 7 -RetentionPolicyEnabled $true} else{$log+=New-AzDiagnosticSettingLogSettingsObject -Enabled $true -Category $_.Name -RetentionPolicyDay 7 -RetentionPolicyEnabled $true}}
New-AzDiagnosticSetting -Name test-setting -ResourceId /subscriptions/$subscriptionId/resourceGroups/test-rg-name/providers/Microsoft.AppPlatform/Spring/springcloud-001 -WorkspaceId /subscriptions/$subscriptionId/resourcegroups/test-rg-name/providers/microsoft.operationalinsights/workspaces/test-workspace -Log $log -Metric $metric
```

## PARAMETERS

### -Name
The name of the diagnostic setting.

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

### -ResourceId
The identifier of the resource.

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

### -EventHubAuthorizationRuleId
The resource Id for the event hub authorization rule.

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

### -EventHubName
The name of the event hub.
If none is specified, the default event hub will be selected.

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

### -Log
The list of logs settings.
To construct, see NOTES section for LOG properties and create a hash table.

```yaml
Type: ILogSettings[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -LogAnalyticsDestinationType
A string indicating whether the export to Log Analytics should use the default destination type, i.e.
AzureDiagnostics, or use a destination type constructed as follows: \<normalized service identity\>_\<normalized category name\>.
Possible values are: Dedicated and null (null is default.)

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

### -MarketplacePartnerId
The full ARM resource ID of the Marketplace resource to which you would like to send Diagnostic Logs.

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

### -Metric
The list of metric settings.
To construct, see NOTES section for METRIC properties and create a hash table.

```yaml
Type: IMetricSettings[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ServiceBusRuleId
The service bus rule Id of the diagnostic setting.
This is here to maintain backwards compatibility.

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

### -StorageAccountId
The resource ID of the storage account to which you would like to send Diagnostic Logs.

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

### -WorkspaceId
The full ARM resource ID of the Log Analytics workspace to which you would like to send Diagnostic Logs.
Example: /subscriptions/4b9e8510-67ab-4e9a-95a9-e2f1e570ea9c/resourceGroups/insights-integration/providers/Microsoft.OperationalInsights/workspaces/viruela2

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

### -DefaultProfile
The credentials, account, tenant, and subscription used for communication with Azure.

```yaml
Type: PSObject
Parameter Sets: (All)
Aliases: AzureRMContext, AzureCredential

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Break
Wait for .NET debugger to attach

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -HttpPipelineAppend
SendAsync Pipeline Steps to be appended to the front of the pipeline

```yaml
Type: SendAsyncStep[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -HttpPipelinePrepend
SendAsync Pipeline Steps to be prepended to the front of the pipeline

```yaml
Type: SendAsyncStep[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Proxy
The URI for the proxy server to use

```yaml
Type: Uri
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ProxyCredential
Credentials for a proxy server to use for the remote call

```yaml
Type: PSCredential
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ProxyUseDefaultCredentials
Use the default credentials for the proxy

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -WhatIf
Shows what would happen if the cmdlet runs.
The cmdlet is not run.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: wi

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Confirm
Prompts you for confirmation before running the cmdlet.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: cf

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

### Microsoft.Azure.PowerShell.Cmdlets.Monitor.DiagnosticSetting.Models.Api20210501Preview.IDiagnosticSettingsResource
## NOTES
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties.
For information on hash tables, run Get-Help about_Hash_Tables.

LOG \<ILogSettings\[\]\>: The list of logs settings.
  Enabled \<Boolean\>: a value indicating whether this log is enabled.
  \[Category \<String\>\]: Name of a Diagnostic Log category for a resource type this setting is applied to.
To obtain the list of Diagnostic Log categories for a resource, first perform a GET diagnostic settings operation.
  \[CategoryGroup \<String\>\]: Name of a Diagnostic Log category group for a resource type this setting is applied to.
To obtain the list of Diagnostic Log categories for a resource, first perform a GET diagnostic settings operation.
  \[RetentionPolicyDay \<Int32?\>\]: the number of days for the retention in days.
A value of 0 will retain the events indefinitely.
  \[RetentionPolicyEnabled \<Boolean?\>\]: a value indicating whether the retention policy is enabled.

METRIC \<IMetricSettings\[\]\>: The list of metric settings.
  Enabled \<Boolean\>: a value indicating whether this category is enabled.
  \[Category \<String\>\]: Name of a Diagnostic Metric category for a resource type this setting is applied to.
To obtain the list of Diagnostic metric categories for a resource, first perform a GET diagnostic settings operation.
  \[RetentionPolicyDay \<Int32?\>\]: the number of days for the retention in days.
A value of 0 will retain the events indefinitely.
  \[RetentionPolicyEnabled \<Boolean?\>\]: a value indicating whether the retention policy is enabled.
  \[TimeGrain \<TimeSpan?\>\]: the timegrain of the metric in ISO8601 format.

## RELATED LINKS

[https://learn.microsoft.com/powershell/module/az.monitor/new-azdiagnosticsetting](https://learn.microsoft.com/powershell/module/az.monitor/new-azdiagnosticsetting)

