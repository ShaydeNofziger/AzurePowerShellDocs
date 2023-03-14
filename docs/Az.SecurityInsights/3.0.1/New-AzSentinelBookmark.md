---
external help file: Az.SecurityInsights-help.xml
Module Name: Az.SecurityInsights
online version: https://learn.microsoft.com/powershell/module/az.securityinsights/new-azsentinelbookmark
schema: 2.0.0
---

# New-AzSentinelBookmark

## SYNOPSIS
Creates or updates the bookmark.

## SYNTAX

### CreateExpanded (Default)
```
New-AzSentinelBookmark -ResourceGroupName <String> -WorkspaceName <String> [-Id <String>]
 [-SubscriptionId <String>] [-DisplayName <String>] [-EventTime <DateTime>] [-IncidentInfoIncidentId <String>]
 [-IncidentInfoRelationName <String>] [-IncidentInfoSeverity <IncidentSeverity>] [-IncidentInfoTitle <String>]
 [-Label <String[]>] [-Note <String>] [-Query <String>] [-QueryEndTime <DateTime>] [-QueryResult <String>]
 [-QueryStartTime <DateTime>] [-DefaultProfile <PSObject>] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### Create
```
New-AzSentinelBookmark -ResourceGroupName <String> -WorkspaceName <String> [-Id <String>]
 [-SubscriptionId <String>] -Bookmark <IBookmark> [-DefaultProfile <PSObject>] [-Break]
 [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>]
 [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
Creates or updates the bookmark.

## EXAMPLES

### EXAMPLE 1
```
$queryStartTime = (Get-Date).AddDays(-1).ToUniversalTime() | Get-Date -Format "yyyy-MM-ddThh:00:00.000Z"
$queryEndTime = (Get-Date).ToUniversalTime() | Get-Date -Format "yyyy-MM-ddThh:00:00.000Z"
New-AzSentinelBookmark -ResourceGroupName "myResourceGroup" -WorkspaceName "myWorkspaceName" -Id ((New-Guid).Guid) -DisplayName "Incident Evidence" -Query "SecurityEvent | take 1" -QueryStartTime $queryStartTime -QueryEndTime $queryEndTime -EventTime $queryEndTime
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
Bookmark ID

```yaml
Type: String
Parameter Sets: (All)
Aliases: BookmarkId

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

### -Bookmark
Represents a bookmark in Azure Security Insights.
To construct, see NOTES section for BOOKMARK properties and create a hash table.

```yaml
Type: IBookmark
Parameter Sets: Create
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -DisplayName
The display name of the bookmark

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

### -EventTime
The bookmark event time

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

### -IncidentInfoIncidentId
Incident Id

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

### -IncidentInfoRelationName
Relation Name

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

### -IncidentInfoSeverity
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

### -IncidentInfoTitle
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

### -Label
List of labels relevant to this bookmark

```yaml
Type: String[]
Parameter Sets: CreateExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Note
The notes of the bookmark

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

### -Query
The query of the bookmark.

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

### -QueryEndTime
The end time for the query

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

### -QueryResult
The query result of the bookmark.

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

### -QueryStartTime
The start time for the query

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

### Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Models.Api20210901Preview.IBookmark
## OUTPUTS

### Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Models.Api20210901Preview.IBookmark
## NOTES
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties.
For information on hash tables, run Get-Help about_Hash_Tables.

BOOKMARK \<IBookmark\>: Represents a bookmark in Azure Security Insights.
  \[Etag \<String\>\]: Etag of the azure resource
  \[SystemDataCreatedAt \<DateTime?\>\]: The timestamp of resource creation (UTC).
  \[SystemDataCreatedBy \<String\>\]: The identity that created the resource.
  \[SystemDataCreatedByType \<CreatedByType?\>\]: The type of identity that created the resource.
  \[SystemDataLastModifiedAt \<DateTime?\>\]: The timestamp of resource last modification (UTC)
  \[SystemDataLastModifiedBy \<String\>\]: The identity that last modified the resource.
  \[SystemDataLastModifiedByType \<CreatedByType?\>\]: The type of identity that last modified the resource.
  \[Created \<DateTime?\>\]: The time the bookmark was created
  \[CreatedByObjectId \<String\>\]: The object id of the user.
  \[DisplayName \<String\>\]: The display name of the bookmark
  \[EventTime \<DateTime?\>\]: The bookmark event time
  \[IncidentInfoIncidentId \<String\>\]: Incident Id
  \[IncidentInfoRelationName \<String\>\]: Relation Name
  \[IncidentInfoSeverity \<IncidentSeverity?\>\]: The severity of the incident
  \[IncidentInfoTitle \<String\>\]: The title of the incident
  \[Label \<String\[\]\>\]: List of labels relevant to this bookmark
  \[Note \<String\>\]: The notes of the bookmark
  \[Query \<String\>\]: The query of the bookmark.
  \[QueryEndTime \<DateTime?\>\]: The end time for the query
  \[QueryResult \<String\>\]: The query result of the bookmark.
  \[QueryStartTime \<DateTime?\>\]: The start time for the query
  \[Updated \<DateTime?\>\]: The last time the bookmark was updated
  \[UpdatedByObjectId \<String\>\]: The object id of the user.

## RELATED LINKS

[https://learn.microsoft.com/powershell/module/az.securityinsights/new-azsentinelbookmark](https://learn.microsoft.com/powershell/module/az.securityinsights/new-azsentinelbookmark)

