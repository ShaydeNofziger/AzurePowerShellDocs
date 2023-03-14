---
external help file: Az.StreamAnalytics-help.xml
Module Name: Az.StreamAnalytics
online version: https://docs.microsoft.com/powershell/module/az.streamanalytics/get-azstreamanalyticscluster
schema: 2.0.0
---

# Get-AzStreamAnalyticsCluster

## SYNOPSIS
Gets information about the specified cluster.

## SYNTAX

### List (Default)
```
Get-AzStreamAnalyticsCluster [-SubscriptionId <String[]>] [-DefaultProfile <PSObject>] [-Break]
 [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>]
 [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [<CommonParameters>]
```

### Get
```
Get-AzStreamAnalyticsCluster -Name <String> -ResourceGroupName <String> [-SubscriptionId <String[]>]
 [-DefaultProfile <PSObject>] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] [<CommonParameters>]
```

### List1
```
Get-AzStreamAnalyticsCluster -ResourceGroupName <String> [-SubscriptionId <String[]>]
 [-DefaultProfile <PSObject>] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] [<CommonParameters>]
```

### GetViaIdentity
```
Get-AzStreamAnalyticsCluster -InputObject <IStreamAnalyticsIdentity> [-DefaultProfile <PSObject>] [-Break]
 [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>]
 [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [<CommonParameters>]
```

## DESCRIPTION
Gets information about the specified cluster.

## EXAMPLES

### EXAMPLE 1
```
Get-AzStreamAnalyticsCluster
```

Location        Name         Type                               Etag
--------        ----         ----                               ----
West Central US sac-m-test01 Microsoft.StreamAnalytics/clusters 77ba5ccb-3005-40b6-b9ac-3ae9d7fb21c9

### EXAMPLE 2
```
Get-AzStreamAnalyticsCluster -ResourceGroupName pwshaz-rg-test
```

Location        Name         Type                               Etag
--------        ----         ----                               ----
West Central US sac-m-test01 Microsoft.StreamAnalytics/clusters c2bcffd8-b35d-430b-9759-13af9c18ed72

### EXAMPLE 3
```
Get-AzStreamAnalyticsCluster -ResourceGroupName pwshaz-rg-test -Name sac-m-test01
```

Location        Name         Type                               Etag
--------        ----         ----                               ----
West Central US sac-m-test01 Microsoft.StreamAnalytics/clusters c2bcffd8-b35d-430b-9759-13af9c18ed72

### EXAMPLE 4
```
Get-AzStreamAnalyticsCluster -ResourceGroupName pwshaz-rg-test -Name sac-m-test01 | Get-AzStreamAnalyticsCluster
```

Location        Name         Type                               Etag
--------        ----         ----                               ----
West Central US sac-m-test01 Microsoft.StreamAnalytics/clusters c2bcffd8-b35d-430b-9759-13af9c18ed72

## PARAMETERS

### -Name
The name of the cluster.

```yaml
Type: String
Parameter Sets: Get
Aliases: ClusterName

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
Parameter Sets: Get, List1
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
Parameter Sets: List, Get, List1
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
Parameter Sets: GetViaIdentity
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
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

### Microsoft.Azure.PowerShell.Cmdlets.StreamAnalytics.Models.IStreamAnalyticsIdentity
## OUTPUTS

### Microsoft.Azure.PowerShell.Cmdlets.StreamAnalytics.Models.Api20200301Preview.ICluster
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

[https://docs.microsoft.com/powershell/module/az.streamanalytics/get-azstreamanalyticscluster](https://docs.microsoft.com/powershell/module/az.streamanalytics/get-azstreamanalyticscluster)

