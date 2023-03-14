---
external help file: Az.SecurityInsights-help.xml
Module Name: Az.SecurityInsights
online version: https://learn.microsoft.com/powershell/module/az.securityinsights/get-azsentinelmetadata
schema: 2.0.0
---

# Get-AzSentinelMetadata

## SYNOPSIS
Get a Metadata.

## SYNTAX

### List (Default)
```
Get-AzSentinelMetadata -ResourceGroupName <String> [-SubscriptionId <String[]>] -WorkspaceName <String>
 [-Filter <String>] [-Orderby <String>] [-Skip <Int32>] [-Top <Int32>] [-DefaultProfile <PSObject>] [-Break]
 [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>]
 [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [<CommonParameters>]
```

### Get
```
Get-AzSentinelMetadata -Name <String> -ResourceGroupName <String> [-SubscriptionId <String[]>]
 -WorkspaceName <String> [-DefaultProfile <PSObject>] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] [<CommonParameters>]
```

### GetViaIdentity
```
Get-AzSentinelMetadata -InputObject <ISecurityInsightsIdentity> [-DefaultProfile <PSObject>] [-Break]
 [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>]
 [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [<CommonParameters>]
```

## DESCRIPTION
Get a Metadata.

## EXAMPLES

### EXAMPLE 1
```
Get-AzSentinelMetadata -ResourceGroupName "myResourceGroupName" -workspaceName "myWorkspaceName"
```

## PARAMETERS

### -Name
The Metadata name.

```yaml
Type: String
Parameter Sets: Get
Aliases: MetadataName

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ResourceGroupName
The name of the resource group.
The name is case insensitive.

```yaml
Type: String
Parameter Sets: List, Get
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SubscriptionId
The ID of the target subscription.

```yaml
Type: String[]
Parameter Sets: List, Get
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -WorkspaceName
The name of the workspace.

```yaml
Type: String
Parameter Sets: List, Get
Aliases:

Required: True
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
Parameter Sets: GetViaIdentity
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Filter
Filters the results, based on a Boolean condition.
Optional.

```yaml
Type: String
Parameter Sets: List
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Orderby
Sorts the results.
Optional.

```yaml
Type: String
Parameter Sets: List
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Skip
Used to skip n elements in the OData query (offset).
Returns a nextLink to the next page of results if there are any left.

```yaml
Type: Int32
Parameter Sets: List
Aliases:

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -Top
Returns only the first n results.
Optional.

```yaml
Type: Int32
Parameter Sets: List
Aliases:

Required: False
Position: Named
Default value: 0
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Models.ISecurityInsightsIdentity
## OUTPUTS

### Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Models.Api20210901Preview.IMetadataModel
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

[https://learn.microsoft.com/powershell/module/az.securityinsights/get-azsentinelmetadata](https://learn.microsoft.com/powershell/module/az.securityinsights/get-azsentinelmetadata)

