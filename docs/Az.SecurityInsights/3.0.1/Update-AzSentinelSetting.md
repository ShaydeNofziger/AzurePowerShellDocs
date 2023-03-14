---
external help file: Az.SecurityInsights-help.xml
Module Name: Az.SecurityInsights
online version: https://learn.microsoft.com/powershell/module/az.securityinsights/update-azsentinelsetting
schema: 2.0.0
---

# Update-AzSentinelSetting

## SYNOPSIS
Updates setting.

## SYNTAX

### UpdateExpandedAnomaliesEyesOnEntityAnalytics (Default)
```
Update-AzSentinelSetting -ResourceGroupName <String> -WorkspaceName <String> [-SubscriptionId <String>]
 -SettingsName <String> -Enabled <Boolean> [-DefaultProfile <PSObject>] [-AsJob] [-Break]
 [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-NoWait] [-Proxy <Uri>]
 [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### UpdateExpandedUeba
```
Update-AzSentinelSetting -ResourceGroupName <String> -WorkspaceName <String> [-SubscriptionId <String>]
 -SettingsName <String> -DataSource <UebaDataSources[]> [-DefaultProfile <PSObject>] [-AsJob] [-Break]
 [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-NoWait] [-Proxy <Uri>]
 [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### UpdateViaIdentityExpandedAnomaliesEyesOnEntityAnalytics
```
Update-AzSentinelSetting -InputObject <ISecurityInsightsIdentity> -Enabled <Boolean>
 [-DefaultProfile <PSObject>] [-AsJob] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-NoWait] [-Proxy <Uri>] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### UpdateViaIdentityExpandedUeba
```
Update-AzSentinelSetting -InputObject <ISecurityInsightsIdentity> -DataSource <UebaDataSources[]>
 [-DefaultProfile <PSObject>] [-AsJob] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-NoWait] [-Proxy <Uri>] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
Updates setting.

## EXAMPLES

### EXAMPLE 1
```
Update-AzSentinelSetting -ResourceGroupName "myResourceGroupName" -WorkspaceName "myWorkspaceName" -SettingsName "Anomalies" -Enabled $true
```

## PARAMETERS

### -ResourceGroupName
The Resource Group Name.

```yaml
Type: String
Parameter Sets: UpdateExpandedAnomaliesEyesOnEntityAnalytics, UpdateExpandedUeba
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -WorkspaceName
\[Alias('DataConnectionName')\]
 The name of the workspace.

```yaml
Type: String
Parameter Sets: UpdateExpandedAnomaliesEyesOnEntityAnalytics, UpdateExpandedUeba
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SubscriptionId
Gets subscription credentials which uniquely identify Microsoft Azure subscription.
The subscription ID forms part of the URI for every service call.

```yaml
Type: String
Parameter Sets: UpdateExpandedAnomaliesEyesOnEntityAnalytics, UpdateExpandedUeba
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -InputObject
Identity Parameter
To construct, see NOTES section for INPUTOBJECT properties and create a hash table.

```yaml
Type: ISecurityInsightsIdentity
Parameter Sets: UpdateViaIdentityExpandedAnomaliesEyesOnEntityAnalytics, UpdateViaIdentityExpandedUeba
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -SettingsName
The setting Name

```yaml
Type: String
Parameter Sets: UpdateExpandedAnomaliesEyesOnEntityAnalytics, UpdateExpandedUeba
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Enabled
Anomalies

```yaml
Type: Boolean
Parameter Sets: UpdateExpandedAnomaliesEyesOnEntityAnalytics, UpdateViaIdentityExpandedAnomaliesEyesOnEntityAnalytics
Aliases:

Required: True
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -DataSource
{{ Fill DataSource Description }}

```yaml
Type: UebaDataSources[]
Parameter Sets: UpdateExpandedUeba, UpdateViaIdentityExpandedUeba
Aliases:

Required: True
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

### -AsJob
Run the command as a job

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

### -NoWait
Run the command asynchronously

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

### Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Models.ISecurityInsightsIdentity
## OUTPUTS

### Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Models.Api20210901Preview.Settings
## NOTES
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties.
For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT \<ISecurityInsightsIdentity\>: Identity Parameter
  \[ActionId \<String\>\]: Action ID
  \[AlertRuleTemplateId \<String\>\]: Alert rule template ID
  \[AutomationRuleId \<String\>\]: Automation rule ID
  \[BookmarkId \<String\>\]: Bookmark ID
  \[ConsentId \<String\>\]: consent ID
  \[DataConnectorId \<String\>\]: Connector ID
  \[EntityId \<String\>\]: entity ID
  \[EntityQueryId \<String\>\]: entity query ID
  \[EntityQueryTemplateId \<String\>\]: entity query template ID
  \[Id \<String\>\]: Resource identity path
  \[IncidentCommentId \<String\>\]: Incident comment ID
  \[IncidentId \<String\>\]: Incident ID
  \[MetadataName \<String\>\]: The Metadata name.
  \[Name \<String\>\]: Threat intelligence indicator name field.
  \[RelationName \<String\>\]: Relation Name
  \[ResourceGroupName \<String\>\]: The name of the resource group.
The name is case insensitive.
  \[RuleId \<String\>\]: Alert rule ID
  \[SentinelOnboardingStateName \<String\>\]: The Sentinel onboarding state name.
Supports - default
  \[SettingsName \<String\>\]: The setting name.
Supports - Anomalies, EyesOn, EntityAnalytics, Ueba
  \[SourceControlId \<String\>\]: Source control Id
  \[SubscriptionId \<String\>\]: The ID of the target subscription.
  \[WorkspaceName \<String\>\]: The name of the workspace.

## RELATED LINKS

[https://learn.microsoft.com/powershell/module/az.securityinsights/update-azsentinelsetting](https://learn.microsoft.com/powershell/module/az.securityinsights/update-azsentinelsetting)

