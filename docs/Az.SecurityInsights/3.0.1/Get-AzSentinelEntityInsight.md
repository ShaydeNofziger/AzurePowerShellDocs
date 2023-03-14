---
external help file: Az.SecurityInsights-help.xml
Module Name: Az.SecurityInsights
online version: https://learn.microsoft.com/powershell/module/az.securityinsights/get-azsentinelentityinsight
schema: 2.0.0
---

# Get-AzSentinelEntityInsight

## SYNOPSIS
Execute Insights for an entity.

## SYNTAX

```
Get-AzSentinelEntityInsight -EntityId <String> -ResourceGroupName <String> -WorkspaceName <String>
 [-SubscriptionId <String[]>] -EndTime <DateTime> -StartTime <DateTime> [-AddDefaultExtendedTimeRange]
 [-InsightQueryId <String[]>] [-DefaultProfile <PSObject>] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
Execute Insights for an entity.

## EXAMPLES

### EXAMPLE 1
```
$startTime = (Get-Date).AddDays(-7).ToUniversalTime() | Get-Date -Format "yyyy-MM-ddThh:00:00.000Z"
$endTime = (Get-Date).ToUniversalTime() | Get-Date -Format "yyyy-MM-ddThh:00:00.000Z"
Get-AzSentinelEntityInsight -ResourceGroupName "myResourceGroupName" -workspaceName "myWorkspaceName" -EntityId "myEntityId" -EndTime $endTime -StartTime $startTime
```

### EXAMPLE 2
```
$startTime = (Get-Date).AddDays(-7).ToUniversalTime() | Get-Date -Format "yyyy-MM-ddThh:00:00.000Z"
$endTime = (Get-Date).ToUniversalTime() | Get-Date -Format "yyyy-MM-ddThh:00:00.000Z"
$Entity = Get-AzSentinelEntity -ResourceGroupName "myResourceGroupName" -workspaceName "myWorkspaceName" -EntityId "8d036a2d-f37d-e936-6cca-4e172687cb79"
$Entity | Get-AzSentinelEntityInsight -EndTime $endTime -StartTime $startTime
```

## PARAMETERS

### -EntityId
entity ID

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

### -SubscriptionId
The ID of the target subscription.

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

### -EndTime
The end timeline date, so the results returned are before this date.

```yaml
Type: DateTime
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -StartTime
The start timeline date, so the results returned are after this date.

```yaml
Type: DateTime
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AddDefaultExtendedTimeRange
Indicates if query time range should be extended with default time range of the query.
Default value is false

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

### -InsightQueryId
List of Insights Query Id.
If empty, default value is all insights of this entity

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

### Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Models.Api20210901Preview.IEntityGetInsightsResponse
## NOTES

## RELATED LINKS

[https://learn.microsoft.com/powershell/module/az.securityinsights/get-azsentinelentityinsight](https://learn.microsoft.com/powershell/module/az.securityinsights/get-azsentinelentityinsight)

