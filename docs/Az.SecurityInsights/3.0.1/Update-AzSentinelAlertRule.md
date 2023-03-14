---
external help file: Az.SecurityInsights-help.xml
Module Name: Az.SecurityInsights
online version: https://learn.microsoft.com/powershell/module/az.securityinsights/Update-azsentinelalertrule
schema: 2.0.0
---

# Update-AzSentinelAlertRule

## SYNOPSIS
Updates the alert rule.

## SYNTAX

### UpdateScheduled (Default)
```
Update-AzSentinelAlertRule -ResourceGroupName <String> -WorkspaceName <String> -RuleId <String>
 [-SubscriptionId <String>] [-AlertRuleTemplateName <String>] [-Enabled] [-Disabled] [-Description <String>]
 [-Query <String>] [-DisplayName <String>] [-SuppressionDuration <TimeSpan>] [-SuppressionEnabled]
 [-Severity <AlertSeverity>] [-Tactic <AttackTactic>] [-CreateIncident] [-GroupingConfigurationEnabled]
 [-ReOpenClosedIncident] [-LookbackDuration <TimeSpan>] [-MatchingMethod <String>]
 [-GroupByAlertDetail <AlertDetail>] [-GroupByCustomDetail <String[]>] [-GroupByEntity <EntityMappingType>]
 [-EntityMapping <EntityMapping>] [-AlertDescriptionFormat <String>] [-AlertDisplayNameFormat <String>]
 [-AlertSeverityColumnName <String>] [-AlertTacticsColumnName <String>] [-QueryFrequency <TimeSpan>]
 [-QueryPeriod <TimeSpan>] [-TriggerOperator <TriggerOperator>] [-TriggerThreshold <Int32>]
 [-EventGroupingSettingAggregationKind <EventGroupingAggregationKind>] [-DefaultProfile <PSObject>]
 [-Scheduled] [-AsJob] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-NoWait] [-Proxy <Uri>] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### UpdateFusionMLTI
```
Update-AzSentinelAlertRule -ResourceGroupName <String> -WorkspaceName <String> -RuleId <String>
 [-SubscriptionId <String>] [-AlertRuleTemplateName <String>] [-Enabled] [-Disabled]
 [-DefaultProfile <PSObject>] [-AsJob] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-NoWait] [-Proxy <Uri>] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] [-FusionMLorTI] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### UpdateMicrosoftSecurityIncidentCreation
```
Update-AzSentinelAlertRule -ResourceGroupName <String> -WorkspaceName <String> -RuleId <String>
 [-SubscriptionId <String>] [-AlertRuleTemplateName <String>] [-Enabled] [-Disabled] [-Description <String>]
 [-DisplayNamesFilter <String>] [-DisplayNamesExcludeFilter <String>]
 [-ProductFilter <MicrosoftSecurityProductName>] [-SeveritiesFilter <AlertSeverity[]>]
 [-DefaultProfile <PSObject>] [-AsJob] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-NoWait] [-Proxy <Uri>] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] [-MicrosoftSecurityIncidentCreation] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### UpdateNRT
```
Update-AzSentinelAlertRule -ResourceGroupName <String> -WorkspaceName <String> -RuleId <String>
 [-SubscriptionId <String>] [-AlertRuleTemplateName <String>] [-Enabled] [-Disabled] [-Description <String>]
 [-Query <String>] [-DisplayName <String>] [-SuppressionDuration <TimeSpan>] [-SuppressionEnabled]
 [-Severity <AlertSeverity>] [-Tactic <AttackTactic>] [-CreateIncident] [-GroupingConfigurationEnabled]
 [-ReOpenClosedIncident] [-LookbackDuration <TimeSpan>] [-MatchingMethod <String>]
 [-GroupByAlertDetail <AlertDetail>] [-GroupByCustomDetail <String[]>] [-GroupByEntity <EntityMappingType>]
 [-EntityMapping <EntityMapping>] [-AlertDescriptionFormat <String>] [-AlertDisplayNameFormat <String>]
 [-AlertSeverityColumnName <String>] [-AlertTacticsColumnName <String>] [-DefaultProfile <PSObject>] [-AsJob]
 [-Break] [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-NoWait]
 [-Proxy <Uri>] [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [-NRT] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

### UpdateViaIdentityFusionMLTI
```
Update-AzSentinelAlertRule -InputObject <ISecurityInsightsIdentity> [-AlertRuleTemplateName <String>]
 [-Enabled] [-Disabled] [-DefaultProfile <PSObject>] [-AsJob] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-NoWait] [-Proxy <Uri>] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] [-FusionMLorTI] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### UpdateViaIdentityMicrosoftSecurityIncidentCreation
```
Update-AzSentinelAlertRule -InputObject <ISecurityInsightsIdentity> [-AlertRuleTemplateName <String>]
 [-Enabled] [-Disabled] [-Description <String>] [-DisplayNamesFilter <String>]
 [-DisplayNamesExcludeFilter <String>] [-ProductFilter <MicrosoftSecurityProductName>]
 [-SeveritiesFilter <AlertSeverity[]>] [-DefaultProfile <PSObject>] [-AsJob] [-Break]
 [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-NoWait] [-Proxy <Uri>]
 [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [-MicrosoftSecurityIncidentCreation] [-WhatIf]
 [-Confirm] [<CommonParameters>]
```

### UpdateViaIdentityNRT
```
Update-AzSentinelAlertRule -InputObject <ISecurityInsightsIdentity> [-AlertRuleTemplateName <String>]
 [-Enabled] [-Disabled] [-Description <String>] [-Query <String>] [-DisplayName <String>]
 [-SuppressionDuration <TimeSpan>] [-SuppressionEnabled] [-Severity <AlertSeverity>] [-Tactic <AttackTactic>]
 [-CreateIncident] [-GroupingConfigurationEnabled] [-ReOpenClosedIncident] [-LookbackDuration <TimeSpan>]
 [-MatchingMethod <String>] [-GroupByAlertDetail <AlertDetail>] [-GroupByCustomDetail <String[]>]
 [-GroupByEntity <EntityMappingType>] [-EntityMapping <EntityMapping>] [-AlertDescriptionFormat <String>]
 [-AlertDisplayNameFormat <String>] [-AlertSeverityColumnName <String>] [-AlertTacticsColumnName <String>]
 [-DefaultProfile <PSObject>] [-AsJob] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-NoWait] [-Proxy <Uri>] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] [-NRT] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### UpdateViaIdentityUpdateScheduled
```
Update-AzSentinelAlertRule -InputObject <ISecurityInsightsIdentity> [-AlertRuleTemplateName <String>]
 [-Enabled] [-Disabled] [-Description <String>] [-Query <String>] [-DisplayName <String>]
 [-SuppressionDuration <TimeSpan>] [-SuppressionEnabled] [-Severity <AlertSeverity>] [-Tactic <AttackTactic>]
 [-CreateIncident] [-GroupingConfigurationEnabled] [-ReOpenClosedIncident] [-LookbackDuration <TimeSpan>]
 [-MatchingMethod <String>] [-GroupByAlertDetail <AlertDetail>] [-GroupByCustomDetail <String[]>]
 [-GroupByEntity <EntityMappingType>] [-EntityMapping <EntityMapping>] [-AlertDescriptionFormat <String>]
 [-AlertDisplayNameFormat <String>] [-AlertSeverityColumnName <String>] [-AlertTacticsColumnName <String>]
 [-QueryFrequency <TimeSpan>] [-QueryPeriod <TimeSpan>] [-TriggerOperator <TriggerOperator>]
 [-TriggerThreshold <Int32>] [-EventGroupingSettingAggregationKind <EventGroupingAggregationKind>]
 [-DefaultProfile <PSObject>] [-Scheduled] [-AsJob] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-NoWait] [-Proxy <Uri>] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
Updates the alert rule.

## EXAMPLES

### EXAMPLE 1
```
Update-AzSentinelAlertRule -ResourceGroupName "myResourceGroupName" -WorkspaceName "myWorkspaceName" -ruleId "4a21e485-75ae-48b3-a7b9-e6a92bcfe434" -Query "SecurityAlert | take 2"
```

## PARAMETERS

### -ResourceGroupName
The Resource Group Name.

```yaml
Type: String
Parameter Sets: UpdateScheduled, UpdateFusionMLTI, UpdateMicrosoftSecurityIncidentCreation, UpdateNRT
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -WorkspaceName
The name of the workspace.

```yaml
Type: String
Parameter Sets: UpdateScheduled, UpdateFusionMLTI, UpdateMicrosoftSecurityIncidentCreation, UpdateNRT
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RuleId
\[Alias('RuleId')\]
 The name of Operational Insights Resource Provider.

```yaml
Type: String
Parameter Sets: UpdateScheduled, UpdateFusionMLTI, UpdateMicrosoftSecurityIncidentCreation, UpdateNRT
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
Parameter Sets: UpdateScheduled, UpdateFusionMLTI, UpdateMicrosoftSecurityIncidentCreation, UpdateNRT
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
Parameter Sets: UpdateViaIdentityFusionMLTI, UpdateViaIdentityMicrosoftSecurityIncidentCreation, UpdateViaIdentityNRT, UpdateViaIdentityUpdateScheduled
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -AlertRuleTemplateName
{{ Fill AlertRuleTemplateName Description }}

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

### -Enabled
{{ Fill Enabled Description }}

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

### -Disabled
{{ Fill Disabled Description }}

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

### -Description
{{ Fill Description Description }}

```yaml
Type: String
Parameter Sets: UpdateScheduled, UpdateMicrosoftSecurityIncidentCreation, UpdateNRT, UpdateViaIdentityMicrosoftSecurityIncidentCreation, UpdateViaIdentityNRT, UpdateViaIdentityUpdateScheduled
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Query
{{ Fill Query Description }}

```yaml
Type: String
Parameter Sets: UpdateScheduled, UpdateNRT, UpdateViaIdentityNRT, UpdateViaIdentityUpdateScheduled
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DisplayName
{{ Fill DisplayName Description }}

```yaml
Type: String
Parameter Sets: UpdateScheduled, UpdateNRT, UpdateViaIdentityNRT, UpdateViaIdentityUpdateScheduled
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SuppressionDuration
{{ Fill SuppressionDuration Description }}

```yaml
Type: TimeSpan
Parameter Sets: UpdateScheduled, UpdateNRT, UpdateViaIdentityNRT, UpdateViaIdentityUpdateScheduled
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SuppressionEnabled
{{ Fill SuppressionEnabled Description }}

```yaml
Type: SwitchParameter
Parameter Sets: UpdateScheduled, UpdateNRT, UpdateViaIdentityNRT, UpdateViaIdentityUpdateScheduled
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Severity
{{ Fill Severity Description }}

```yaml
Type: AlertSeverity
Parameter Sets: UpdateScheduled, UpdateNRT, UpdateViaIdentityNRT, UpdateViaIdentityUpdateScheduled
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Tactic
{{ Fill Tactic Description }}

```yaml
Type: AttackTactic
Parameter Sets: UpdateScheduled, UpdateNRT, UpdateViaIdentityNRT, UpdateViaIdentityUpdateScheduled
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -CreateIncident
{{ Fill CreateIncident Description }}

```yaml
Type: SwitchParameter
Parameter Sets: UpdateScheduled, UpdateNRT, UpdateViaIdentityNRT, UpdateViaIdentityUpdateScheduled
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -GroupingConfigurationEnabled
{{ Fill GroupingConfigurationEnabled Description }}

```yaml
Type: SwitchParameter
Parameter Sets: UpdateScheduled, UpdateNRT, UpdateViaIdentityNRT, UpdateViaIdentityUpdateScheduled
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -ReOpenClosedIncident
{{ Fill ReOpenClosedIncident Description }}

```yaml
Type: SwitchParameter
Parameter Sets: UpdateScheduled, UpdateNRT, UpdateViaIdentityNRT, UpdateViaIdentityUpdateScheduled
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -LookbackDuration
{{ Fill LookbackDuration Description }}

```yaml
Type: TimeSpan
Parameter Sets: UpdateScheduled, UpdateNRT, UpdateViaIdentityNRT, UpdateViaIdentityUpdateScheduled
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MatchingMethod
{{ Fill MatchingMethod Description }}

```yaml
Type: String
Parameter Sets: UpdateScheduled, UpdateNRT, UpdateViaIdentityNRT, UpdateViaIdentityUpdateScheduled
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -GroupByAlertDetail
{{ Fill GroupByAlertDetail Description }}

```yaml
Type: AlertDetail
Parameter Sets: UpdateScheduled, UpdateNRT, UpdateViaIdentityNRT, UpdateViaIdentityUpdateScheduled
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -GroupByCustomDetail
{{ Fill GroupByCustomDetail Description }}

```yaml
Type: String[]
Parameter Sets: UpdateScheduled, UpdateNRT, UpdateViaIdentityNRT, UpdateViaIdentityUpdateScheduled
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -GroupByEntity
{{ Fill GroupByEntity Description }}

```yaml
Type: EntityMappingType
Parameter Sets: UpdateScheduled, UpdateNRT, UpdateViaIdentityNRT, UpdateViaIdentityUpdateScheduled
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -EntityMapping
'Account', 'Host', 'IP', 'Malware', 'File', 'Process', 'CloudApplication', 'DNS', 'AzureResource', 'FileHash', 'RegistryKey', 'RegistryValue', 'SecurityGroup', 'URL', 'Mailbox', 'MailCluster', 'MailMessage', 'SubmissionMail'
To construct, see NOTES section for ENTITYMAPPING properties and create a hash table.

```yaml
Type: EntityMapping
Parameter Sets: UpdateScheduled, UpdateNRT, UpdateViaIdentityNRT, UpdateViaIdentityUpdateScheduled
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AlertDescriptionFormat
{{ Fill AlertDescriptionFormat Description }}

```yaml
Type: String
Parameter Sets: UpdateScheduled, UpdateNRT, UpdateViaIdentityNRT, UpdateViaIdentityUpdateScheduled
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AlertDisplayNameFormat
{{ Fill AlertDisplayNameFormat Description }}

```yaml
Type: String
Parameter Sets: UpdateScheduled, UpdateNRT, UpdateViaIdentityNRT, UpdateViaIdentityUpdateScheduled
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AlertSeverityColumnName
{{ Fill AlertSeverityColumnName Description }}

```yaml
Type: String
Parameter Sets: UpdateScheduled, UpdateNRT, UpdateViaIdentityNRT, UpdateViaIdentityUpdateScheduled
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AlertTacticsColumnName
{{ Fill AlertTacticsColumnName Description }}

```yaml
Type: String
Parameter Sets: UpdateScheduled, UpdateNRT, UpdateViaIdentityNRT, UpdateViaIdentityUpdateScheduled
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -QueryFrequency
{{ Fill QueryFrequency Description }}

```yaml
Type: TimeSpan
Parameter Sets: UpdateScheduled, UpdateViaIdentityUpdateScheduled
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -QueryPeriod
{{ Fill QueryPeriod Description }}

```yaml
Type: TimeSpan
Parameter Sets: UpdateScheduled, UpdateViaIdentityUpdateScheduled
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TriggerOperator
{{ Fill TriggerOperator Description }}

```yaml
Type: TriggerOperator
Parameter Sets: UpdateScheduled, UpdateViaIdentityUpdateScheduled
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TriggerThreshold
{{ Fill TriggerThreshold Description }}

```yaml
Type: Int32
Parameter Sets: UpdateScheduled, UpdateViaIdentityUpdateScheduled
Aliases:

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -EventGroupingSettingAggregationKind
{{ Fill EventGroupingSettingAggregationKind Description }}

```yaml
Type: EventGroupingAggregationKind
Parameter Sets: UpdateScheduled, UpdateViaIdentityUpdateScheduled
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DisplayNamesFilter
{{ Fill DisplayNamesFilter Description }}

```yaml
Type: String
Parameter Sets: UpdateMicrosoftSecurityIncidentCreation, UpdateViaIdentityMicrosoftSecurityIncidentCreation
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DisplayNamesExcludeFilter
{{ Fill DisplayNamesExcludeFilter Description }}

```yaml
Type: String
Parameter Sets: UpdateMicrosoftSecurityIncidentCreation, UpdateViaIdentityMicrosoftSecurityIncidentCreation
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ProductFilter
{{ Fill ProductFilter Description }}

```yaml
Type: MicrosoftSecurityProductName
Parameter Sets: UpdateMicrosoftSecurityIncidentCreation, UpdateViaIdentityMicrosoftSecurityIncidentCreation
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SeveritiesFilter
High, Medium, Low, Informational

```yaml
Type: AlertSeverity[]
Parameter Sets: UpdateMicrosoftSecurityIncidentCreation, UpdateViaIdentityMicrosoftSecurityIncidentCreation
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

### -Scheduled
{{ Fill Scheduled Description }}

```yaml
Type: SwitchParameter
Parameter Sets: UpdateScheduled, UpdateViaIdentityUpdateScheduled
Aliases:

Required: True
Position: Named
Default value: False
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

### -NRT
{{ Fill NRT Description }}

```yaml
Type: SwitchParameter
Parameter Sets: UpdateNRT, UpdateViaIdentityNRT
Aliases:

Required: True
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -MicrosoftSecurityIncidentCreation
{{ Fill MicrosoftSecurityIncidentCreation Description }}

```yaml
Type: SwitchParameter
Parameter Sets: UpdateMicrosoftSecurityIncidentCreation, UpdateViaIdentityMicrosoftSecurityIncidentCreation
Aliases:

Required: True
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -FusionMLorTI
{{ Fill FusionMLorTI Description }}

```yaml
Type: SwitchParameter
Parameter Sets: UpdateFusionMLTI, UpdateViaIdentityFusionMLTI
Aliases:

Required: True
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

### Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Models.Api20210901Preview.AlertRule
## NOTES
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties.
For information on hash tables, run Get-Help about_Hash_Tables.

ENTITYMAPPING \<EntityMapping\>: 'Account', 'Host', 'IP', 'Malware', 'File', 'Process', 'CloudApplication', 'DNS', 'AzureResource', 'FileHash', 'RegistryKey', 'RegistryValue', 'SecurityGroup', 'URL', 'Mailbox', 'MailCluster', 'MailMessage', 'SubmissionMail'
  \[EntityType \<EntityMappingType?\>\]: The V3 type of the mapped entity
  \[FieldMapping \<IFieldMapping\[\]\>\]: array of field mappings for the given entity mapping
    \[ColumnName \<String\>\]: the column name to be mapped to the identifier
    \[Identifier \<String\>\]: the V3 identifier of the entity

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

[https://learn.microsoft.com/powershell/module/az.securityinsights/Update-azsentinelalertrule](https://learn.microsoft.com/powershell/module/az.securityinsights/Update-azsentinelalertrule)

