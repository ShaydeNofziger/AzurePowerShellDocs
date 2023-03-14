---
external help file: Az.SecurityInsights-help.xml
Module Name: Az.SecurityInsights
online version: https://learn.microsoft.com/powershell/module/az.securityinsights/update-azsentinelentityquery
schema: 2.0.0
---

# Update-AzSentinelEntityQuery

## SYNOPSIS
Updates the entity query.

## SYNTAX

### UpdateActivity (Default)
```
Update-AzSentinelEntityQuery -ResourceGroupName <String> -WorkspaceName <String> -EntityQueryId <String>
 [-SubscriptionId <String>] [-Title <String>] [-Content <String>] [-Description <String>]
 [-QueryDefinitionQuery <String>] [-InputEntityType <EntityType>] [-RequiredInputFieldsSet <String[]>]
 [-EntitiesFilter <ActivityEntityQueriesPropertiesEntitiesFilter>] [-TemplateName <String>] [-Enabled]
 [-Disabled] [-DefaultProfile <PSObject>] [-AsJob] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-NoWait] [-Proxy <Uri>] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### UpdateViaIdentityActivity
```
Update-AzSentinelEntityQuery -InputObject <ISecurityInsightsIdentity> [-Title <String>] [-Content <String>]
 [-Description <String>] [-QueryDefinitionQuery <String>] [-InputEntityType <EntityType>]
 [-RequiredInputFieldsSet <String[]>] [-EntitiesFilter <ActivityEntityQueriesPropertiesEntitiesFilter>]
 [-TemplateName <String>] [-Enabled] [-Disabled] [-DefaultProfile <PSObject>] [-AsJob] [-Break]
 [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-NoWait] [-Proxy <Uri>]
 [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
Updates the entity query.

## EXAMPLES

### EXAMPLE 1
```
Update-AzSentinelEntityQuery -ResourceGroupName "myResourceGroupName" -WorkspaceName "myWorkspaceName" -EntityQueryId "4a21e485-75ae-48b3-a7b9-e6a92bcfe434" -Title "myEntityQuery Title"
```

## PARAMETERS

### -ResourceGroupName
The Resource Group Name.

```yaml
Type: String
Parameter Sets: UpdateActivity
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
Parameter Sets: UpdateActivity
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -EntityQueryId
The Id of the Entity Query.

```yaml
Type: String
Parameter Sets: UpdateActivity
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
Parameter Sets: UpdateActivity
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
Parameter Sets: UpdateViaIdentityActivity
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Title
{{ Fill Title Description }}

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

### -Content
{{ Fill Content Description }}

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

### -Description
{{ Fill Description Description }}

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

### -QueryDefinitionQuery
{{ Fill QueryDefinitionQuery Description }}

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

### -InputEntityType
{{ Fill InputEntityType Description }}

```yaml
Type: EntityType
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RequiredInputFieldsSet
{{ Fill RequiredInputFieldsSet Description }}

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -EntitiesFilter
To construct, see NOTES section for ENTITIESFILTER properties and create a hash table.

```yaml
Type: ActivityEntityQueriesPropertiesEntitiesFilter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TemplateName
{{ Fill TemplateName Description }}

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

### Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Models.Api20210901Preview.CustomEntityQuery
## NOTES
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties.
For information on hash tables, run Get-Help about_Hash_Tables.

ENTITIESFILTER \<ActivityEntityQueriesPropertiesEntitiesFilter\>: 
  \[(Any) \<String\[\]\>\]: This indicates any property can be added to this object.

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

[https://learn.microsoft.com/powershell/module/az.securityinsights/update-azsentinelentityquery](https://learn.microsoft.com/powershell/module/az.securityinsights/update-azsentinelentityquery)

