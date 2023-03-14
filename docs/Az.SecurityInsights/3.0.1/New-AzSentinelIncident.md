---
external help file: Az.SecurityInsights-help.xml
Module Name: Az.SecurityInsights
online version: https://learn.microsoft.com/powershell/module/az.securityinsights/new-azsentinelincident
schema: 2.0.0
---

# New-AzSentinelIncident

## SYNOPSIS
Creates or updates the incident.

## SYNTAX

### CreateExpanded (Default)
```
New-AzSentinelIncident -ResourceGroupName <String> -WorkspaceName <String> [-Id <String>]
 [-SubscriptionId <String>] [-Classification <IncidentClassification>] [-ClassificationComment <String>]
 [-ClassificationReason <IncidentClassificationReason>] [-Description <String>]
 [-FirstActivityTimeUtc <DateTime>] [-Label <IIncidentLabel[]>] [-LastActivityTimeUtc <DateTime>]
 [-OwnerAssignedTo <String>] [-OwnerEmail <String>] [-OwnerObjectId <String>]
 [-OwnerUserPrincipalName <String>] [-ProviderIncidentId <String>] [-ProviderName <String>]
 [-Severity <IncidentSeverity>] [-Status <IncidentStatus>] [-Title <String>] [-DefaultProfile <PSObject>]
 [-Break] [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>]
 [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### Create
```
New-AzSentinelIncident -ResourceGroupName <String> -WorkspaceName <String> [-Id <String>]
 [-SubscriptionId <String>] -Incident <IIncident> [-DefaultProfile <PSObject>] [-Break]
 [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>]
 [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
Creates or updates the incident.

## EXAMPLES

### EXAMPLE 1
```
New-AzSentinelIncident -ResourceGroupName "myResourceGroup" -WorkspaceName "myWorkspaceName" -Id ((New-Guid).Guid) -Title "NewIncident" -Description "My Description" -Severity Low -Status New
```

## PARAMETERS

### -ResourceGroupName
The name of the resource group.
The name is case insensitive.

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

### -Id
Incident ID

```yaml
Type: String
Parameter Sets: (All)
Aliases: IncidentId

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SubscriptionId
The ID of the target subscription.

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

### -Incident
Represents an incident in Azure Security Insights.
To construct, see NOTES section for INCIDENT properties and create a hash table.

```yaml
Type: IIncident
Parameter Sets: Create
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Classification
The reason the incident was closed

```yaml
Type: IncidentClassification
Parameter Sets: CreateExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ClassificationComment
Describes the reason the incident was closed

```yaml
Type: String
Parameter Sets: CreateExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ClassificationReason
The classification reason the incident was closed with

```yaml
Type: IncidentClassificationReason
Parameter Sets: CreateExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Description
The description of the incident

```yaml
Type: String
Parameter Sets: CreateExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -FirstActivityTimeUtc
The time of the first activity in the incident

```yaml
Type: DateTime
Parameter Sets: CreateExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Label
List of labels relevant to this incident
To construct, see NOTES section for LABEL properties and create a hash table.

```yaml
Type: IIncidentLabel[]
Parameter Sets: CreateExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -LastActivityTimeUtc
The time of the last activity in the incident

```yaml
Type: DateTime
Parameter Sets: CreateExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -OwnerAssignedTo
The name of the user the incident is assigned to.

```yaml
Type: String
Parameter Sets: CreateExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -OwnerEmail
The email of the user the incident is assigned to.

```yaml
Type: String
Parameter Sets: CreateExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -OwnerObjectId
The object id of the user the incident is assigned to.

```yaml
Type: String
Parameter Sets: CreateExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -OwnerUserPrincipalName
The user principal name of the user the incident is assigned to.

```yaml
Type: String
Parameter Sets: CreateExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ProviderIncidentId
The incident ID assigned by the incident provider

```yaml
Type: String
Parameter Sets: CreateExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ProviderName
The name of the source provider that generated the incident

```yaml
Type: String
Parameter Sets: CreateExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Severity
The severity of the incident

```yaml
Type: IncidentSeverity
Parameter Sets: CreateExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Status
The status of the incident

```yaml
Type: IncidentStatus
Parameter Sets: CreateExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Title
The title of the incident

```yaml
Type: String
Parameter Sets: CreateExpanded
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

### Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Models.Api20210901Preview.IIncident
## OUTPUTS

### Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Models.Api20210901Preview.IIncident
## NOTES
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties.
For information on hash tables, run Get-Help about_Hash_Tables.

INCIDENT \<IIncident\>: Represents an incident in Azure Security Insights.
  \[Etag \<String\>\]: Etag of the azure resource
  \[SystemDataCreatedAt \<DateTime?\>\]: The timestamp of resource creation (UTC).
  \[SystemDataCreatedBy \<String\>\]: The identity that created the resource.
  \[SystemDataCreatedByType \<CreatedByType?\>\]: The type of identity that created the resource.
  \[SystemDataLastModifiedAt \<DateTime?\>\]: The timestamp of resource last modification (UTC)
  \[SystemDataLastModifiedBy \<String\>\]: The identity that last modified the resource.
  \[SystemDataLastModifiedByType \<CreatedByType?\>\]: The type of identity that last modified the resource.
  \[Classification \<IncidentClassification?\>\]: The reason the incident was closed
  \[ClassificationComment \<String\>\]: Describes the reason the incident was closed
  \[ClassificationReason \<IncidentClassificationReason?\>\]: The classification reason the incident was closed with
  \[Description \<String\>\]: The description of the incident
  \[FirstActivityTimeUtc \<DateTime?\>\]: The time of the first activity in the incident
  \[Label \<IIncidentLabel\[\]\>\]: List of labels relevant to this incident
    LabelName \<String\>: The name of the label
  \[LastActivityTimeUtc \<DateTime?\>\]: The time of the last activity in the incident
  \[OwnerAssignedTo \<String\>\]: The name of the user the incident is assigned to.
  \[OwnerEmail \<String\>\]: The email of the user the incident is assigned to.
  \[OwnerObjectId \<String\>\]: The object id of the user the incident is assigned to.
  \[OwnerUserPrincipalName \<String\>\]: The user principal name of the user the incident is assigned to.
  \[ProviderIncidentId \<String\>\]: The incident ID assigned by the incident provider
  \[ProviderName \<String\>\]: The name of the source provider that generated the incident
  \[Severity \<IncidentSeverity?\>\]: The severity of the incident
  \[Status \<IncidentStatus?\>\]: The status of the incident
  \[Title \<String\>\]: The title of the incident

LABEL \<IIncidentLabel\[\]\>: List of labels relevant to this incident
  LabelName \<String\>: The name of the label

## RELATED LINKS

[https://learn.microsoft.com/powershell/module/az.securityinsights/new-azsentinelincident](https://learn.microsoft.com/powershell/module/az.securityinsights/new-azsentinelincident)

