---
external help file: Az.SecurityInsights-help.xml
Module Name: Az.SecurityInsights
online version: https://learn.microsoft.com/powershell/module/az.securityinsights/new-azsentinelalertrule
schema: 2.0.0
---

# New-AzSentinelAlertRule

## SYNOPSIS
Creates or updates the alert rule.

## SYNTAX

### FusionMLTI (Default)
```
New-AzSentinelAlertRule -ResourceGroupName <String> -WorkspaceName <String> [-SubscriptionId <String>]
 [-RuleId <String>] -Kind <AlertRuleKind> -AlertRuleTemplate <String> [-Enabled] [-DefaultProfile <PSObject>]
 [-AsJob] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-NoWait]
 [-Proxy <Uri>] [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

### NRT
```
New-AzSentinelAlertRule -ResourceGroupName <String> -WorkspaceName <String> [-SubscriptionId <String>]
 [-RuleId <String>] -Kind <AlertRuleKind> [-Enabled] -Query <String> -DisplayName <String>
 -Severity <AlertSeverity> [-AlertRuleTemplateName <String>] [-Description <String>]
 [-SuppressionDuration <TimeSpan>] [-SuppressionEnabled] [-Tactic <String>] [-CreateIncident]
 [-GroupingConfigurationEnabled] [-ReOpenClosedIncident] [-LookbackDuration <TimeSpan>]
 [-MatchingMethod <String>] [-GroupByAlertDetail <AlertDetail>] [-GroupByCustomDetail <String[]>]
 [-GroupByEntity <EntityMappingType>] [-EntityMapping <EntityMapping>] [-AlertDescriptionFormat <String>]
 [-AlertDisplayNameFormat <String>] [-AlertSeverityColumnName <String>] [-AlertTacticsColumnName <String>]
 [-DefaultProfile <PSObject>] [-AsJob] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-NoWait] [-Proxy <Uri>] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### Scheduled
```
New-AzSentinelAlertRule -ResourceGroupName <String> -WorkspaceName <String> [-SubscriptionId <String>]
 [-RuleId <String>] -Kind <AlertRuleKind> [-Enabled] -Query <String> -DisplayName <String>
 -Severity <AlertSeverity> -QueryFrequency <TimeSpan> -QueryPeriod <TimeSpan>
 -TriggerOperator <TriggerOperator> -TriggerThreshold <Int32> [-AlertRuleTemplateName <String>]
 [-Description <String>] [-SuppressionDuration <TimeSpan>] [-SuppressionEnabled] [-Tactic <String>]
 [-CreateIncident] [-GroupingConfigurationEnabled] [-ReOpenClosedIncident] [-LookbackDuration <TimeSpan>]
 [-MatchingMethod <String>] [-GroupByAlertDetail <AlertDetail>] [-GroupByCustomDetail <String[]>]
 [-GroupByEntity <EntityMappingType>] [-EntityMapping <EntityMapping>] [-AlertDescriptionFormat <String>]
 [-AlertDisplayNameFormat <String>] [-AlertSeverityColumnName <String>] [-AlertTacticsColumnName <String>]
 [-EventGroupingSettingAggregationKind <EventGroupingAggregationKind>] [-DefaultProfile <PSObject>] [-AsJob]
 [-Break] [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-NoWait]
 [-Proxy <Uri>] [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

### MicrosoftSecurityIncidentCreation
```
New-AzSentinelAlertRule -ResourceGroupName <String> -WorkspaceName <String> [-SubscriptionId <String>]
 [-RuleId <String>] -Kind <AlertRuleKind> [-Enabled] [-AlertRuleTemplateName <String>] [-Description <String>]
 -ProductFilter <MicrosoftSecurityProductName> [-DisplayNamesFilter <String>]
 [-DisplayNamesExcludeFilter <String>] [-SeveritiesFilter <AlertSeverity[]>] [-DefaultProfile <PSObject>]
 [-AsJob] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-NoWait]
 [-Proxy <Uri>] [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

## DESCRIPTION
Creates or updates the alert rule.

## EXAMPLES

### EXAMPLE 1
```
$AlertRuleTemplateName = "f71aba3d-28fb-450b-b192-4e76a83015c8"
New-AzSentinelAlertRule -ResourceGroupName "myResourceGroupName" -WorkspaceName "myWorkspaceName" -Kind Fusion -Enabled -AlertRuleTemplateName $AlertRuleTemplateName
```

### EXAMPLE 2
```
$AlertRuleTemplateName = "fa118b98-de46-4e94-87f9-8e6d5060b60b"
New-AzSentinelAlertRule -ResourceGroupName "myResourceGroupName" -WorkspaceName "myWorkspaceName" -Kind MLBehaviorAnalytics -Enabled -AlertRuleTemplateName $AlertRuleTemplateName
```

### EXAMPLE 3
```
$AlertRuleTemplateName = "0dd422ee-e6af-4204-b219-f59ac172e4c6"
New-AzSentinelAlertRule -ResourceGroupName "myResourceGroupName" -WorkspaceName "myWorkspaceName" -Kind ThreatIntelligence -Enabled -AlertRuleTemplateName $AlertRuleTemplateName
```

### EXAMPLE 4
```
$AlertRuleTemplateName = "a2e0eb51-1f11-461a-999b-cd0ebe5c7a72"
New-AzSentinelAlertRule -ResourceGroupName "myResourceGroupName" -WorkspaceName "myWorkspaceName" -Kind MicrosoftSecurityIncidentCreation -Enabled -AlertRuleTemplateName $AlertRuleTemplateName -ProductFilter "Azure Security Center for IoT"
```

### EXAMPLE 5
```
New-AzSentinelAlertRule -ResourceGroupName "myResourceGroup" -WorkspaceName "myWorkspaceName" -Kind Scheduled -Enabled -DisplayName "Powershell Exection Alert (Several Times per Hour)" -Severity Low -Query "SecurityEvent | where EventId == 4688" -QueryFrequency (New-TimeSpan -Hours 1) -QueryPeriod (New-TimeSpan -Hours 1) -TriggerThreshold 10
```

### EXAMPLE 6
```
New-AzSentinelAlertRule -ResourceGroupName "myResourceGroup" -WorkspaceName "myWorkspaceName" -Kind NRT -Enabled -DisplayName "Break glass account accessed" -Severity High -Query "let Break_Glass_Account = _GetWatchlist('break_glass_account')\n|project UPN;\nSigninLogs\n| where UserPrincipalName in (Break_Glass_Account)"
```

## PARAMETERS

### -ResourceGroupName
The Resource Group Name.

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

### -WorkspaceName
The name of the workspace.

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

### -SubscriptionId
Gets subscription credentials which uniquely identify Microsoft Azure subscription.
The subscription ID forms part of the URI for every service call.

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

### -RuleId
\[Alias('RuleId')\]
 The Id of the Rule.

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

### -Kind
Kind of the the data connection

```yaml
Type: AlertRuleKind
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AlertRuleTemplate
{{ Fill AlertRuleTemplate Description }}

```yaml
Type: String
Parameter Sets: FusionMLTI
Aliases:

Required: True
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

### -Query
{{ Fill Query Description }}

```yaml
Type: String
Parameter Sets: NRT, Scheduled
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DisplayName
{{ Fill DisplayName Description }}

```yaml
Type: String
Parameter Sets: NRT, Scheduled
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Severity
{{ Fill Severity Description }}

```yaml
Type: AlertSeverity
Parameter Sets: NRT, Scheduled
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -QueryFrequency
{{ Fill QueryFrequency Description }}

```yaml
Type: TimeSpan
Parameter Sets: Scheduled
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -QueryPeriod
{{ Fill QueryPeriod Description }}

```yaml
Type: TimeSpan
Parameter Sets: Scheduled
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TriggerOperator
{{ Fill TriggerOperator Description }}

```yaml
Type: TriggerOperator
Parameter Sets: Scheduled
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TriggerThreshold
{{ Fill TriggerThreshold Description }}

```yaml
Type: Int32
Parameter Sets: Scheduled
Aliases:

Required: True
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -AlertRuleTemplateName
{{ Fill AlertRuleTemplateName Description }}

```yaml
Type: String
Parameter Sets: NRT, Scheduled, MicrosoftSecurityIncidentCreation
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Description
{{ Fill Description Description }}

```yaml
Type: String
Parameter Sets: NRT, Scheduled, MicrosoftSecurityIncidentCreation
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
Parameter Sets: NRT, Scheduled
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
Parameter Sets: NRT, Scheduled
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Tactic
\[Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Support.AttackTactic\]
InitialAccess, Execution, Persistence, PrivilegeEscalation, DefenseEvasion, CredentialAccess, Discovery, LateralMovement, Collection, Exfiltration, CommandAndControl, Impact, PreAttack

```yaml
Type: String
Parameter Sets: NRT, Scheduled
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
Parameter Sets: NRT, Scheduled
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
Parameter Sets: NRT, Scheduled
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
Parameter Sets: NRT, Scheduled
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
Parameter Sets: NRT, Scheduled
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
Parameter Sets: NRT, Scheduled
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
Parameter Sets: NRT, Scheduled
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
Parameter Sets: NRT, Scheduled
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
Parameter Sets: NRT, Scheduled
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
Parameter Sets: NRT, Scheduled
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
Parameter Sets: NRT, Scheduled
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
Parameter Sets: NRT, Scheduled
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
Parameter Sets: NRT, Scheduled
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
Parameter Sets: NRT, Scheduled
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -EventGroupingSettingAggregationKind
{{ Fill EventGroupingSettingAggregationKind Description }}

```yaml
Type: EventGroupingAggregationKind
Parameter Sets: Scheduled
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
Parameter Sets: MicrosoftSecurityIncidentCreation
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DisplayNamesFilter
{{ Fill DisplayNamesFilter Description }}

```yaml
Type: String
Parameter Sets: MicrosoftSecurityIncidentCreation
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
Parameter Sets: MicrosoftSecurityIncidentCreation
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
Parameter Sets: MicrosoftSecurityIncidentCreation
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

## RELATED LINKS

[https://learn.microsoft.com/powershell/module/az.securityinsights/new-azsentinelalertrule](https://learn.microsoft.com/powershell/module/az.securityinsights/new-azsentinelalertrule)

