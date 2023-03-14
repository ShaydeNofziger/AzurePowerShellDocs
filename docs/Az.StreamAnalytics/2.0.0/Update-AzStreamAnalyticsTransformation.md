---
external help file: Az.StreamAnalytics-help.xml
Module Name: Az.StreamAnalytics
online version: https://docs.microsoft.com/powershell/module/az.streamanalytics/update-azstreamanalyticstransformation
schema: 2.0.0
---

# Update-AzStreamAnalyticsTransformation

## SYNOPSIS
Updates an existing transformation under an existing streaming job.
This can be used to partially update (ie.
update one or two properties) a transformation without affecting the rest the job or transformation definition.

## SYNTAX

### UpdateExpanded (Default)
```
Update-AzStreamAnalyticsTransformation -JobName <String> -Name <String> -ResourceGroupName <String>
 [-SubscriptionId <String>] [-IfMatch <String>] [-Query <String>] [-StreamingUnit <Int32>]
 [-DefaultProfile <PSObject>] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### UpdateViaIdentityExpanded
```
Update-AzStreamAnalyticsTransformation -InputObject <IStreamAnalyticsIdentity> [-IfMatch <String>]
 [-Query <String>] [-StreamingUnit <Int32>] [-DefaultProfile <PSObject>] [-Break]
 [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>]
 [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
Updates an existing transformation under an existing streaming job.
This can be used to partially update (ie.
update one or two properties) a transformation without affecting the rest the job or transformation definition.

## EXAMPLES

### EXAMPLE 1
```
Update-AzStreamAnalyticsTransformation -ResourceGroupName azure-rg-test -JobName sajob-01-pwsh -Name tranf-01 -StreamingUnit 1
```

Name     Type                                                    ETag
----     ----                                                    ----
tranf-01 Microsoft.StreamAnalytics/streamingjobs/transformations 6d100b9a-91c1-4b27-ae62-68c55635154f

### EXAMPLE 2
```
Get-AzStreamAnalyticsTransformation -ResourceGroupName azure-rg-test -JobName sajob-01-pwsh -Name tranf-01 | Update-AzStreamAnalyticsTransformation -StreamingUnit 1
```

Name     Type                                                    ETag
----     ----                                                    ----
tranf-01 Microsoft.StreamAnalytics/streamingjobs/transformations 3d6570c5-6e0f-4ec6-b242-ba9e161c3e01

## PARAMETERS

### -JobName
The name of the streaming job.

```yaml
Type: String
Parameter Sets: UpdateExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Name
The name of the transformation.

```yaml
Type: String
Parameter Sets: UpdateExpanded
Aliases: TransformationName

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
Parameter Sets: UpdateExpanded
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
Type: String
Parameter Sets: UpdateExpanded
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
Type: IStreamAnalyticsIdentity
Parameter Sets: UpdateViaIdentityExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -IfMatch
The ETag of the transformation.
Omit this value to always overwrite the current transformation.
Specify the last-seen ETag value to prevent accidentally overwriting concurrent changes.

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

### -Query
Specifies the query that will be run in the streaming job.
You can learn more about the Stream Analytics Query Language (SAQL) here: https://msdn.microsoft.com/library/azure/dn834998 .
Required on PUT (CreateOrReplace) requests.

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

### -StreamingUnit
Specifies the number of streaming units that the streaming job uses.

```yaml
Type: Int32
Parameter Sets: (All)
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

### Microsoft.Azure.PowerShell.Cmdlets.StreamAnalytics.Models.IStreamAnalyticsIdentity
## OUTPUTS

### Microsoft.Azure.PowerShell.Cmdlets.StreamAnalytics.Models.Api20170401Preview.ITransformation
## NOTES
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties.
For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT \<IStreamAnalyticsIdentity\>: Identity Parameter
  \[ClusterName \<String\>\]: The name of the cluster.
  \[FunctionName \<String\>\]: The name of the function.
  \[Id \<String\>\]: Resource identity path
  \[InputName \<String\>\]: The name of the input.
  \[JobName \<String\>\]: The name of the streaming job.
  \[Location \<String\>\]: The region in which to retrieve the subscription's quota information.
You can find out which regions Azure Stream Analytics is supported in here: https://azure.microsoft.com/en-us/regions/
  \[OutputName \<String\>\]: The name of the output.
  \[ResourceGroupName \<String\>\]: The name of the resource group.
The name is case insensitive.
  \[SubscriptionId \<String\>\]: The ID of the target subscription.
  \[TransformationName \<String\>\]: The name of the transformation.

## RELATED LINKS

[https://docs.microsoft.com/powershell/module/az.streamanalytics/update-azstreamanalyticstransformation](https://docs.microsoft.com/powershell/module/az.streamanalytics/update-azstreamanalyticstransformation)

