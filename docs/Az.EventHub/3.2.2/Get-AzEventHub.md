---
external help file: Az.EventHub-help.xml
Module Name: Az.EventHub
online version: https://learn.microsoft.com/powershell/module/az.eventhub/get-azeventhub
schema: 2.0.0
---

# Get-AzEventHub

## SYNOPSIS
Gets an Event Hubs description for the specified Event Hub.

## SYNTAX

### List (Default)
```
Get-AzEventHub -NamespaceName <String> -ResourceGroupName <String> [-SubscriptionId <String[]>] [-Skip <Int32>]
 [-Top <Int32>] [-DefaultProfile <PSObject>] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] [<CommonParameters>]
```

### Get
```
Get-AzEventHub -Name <String> -NamespaceName <String> -ResourceGroupName <String> [-SubscriptionId <String[]>]
 [-DefaultProfile <PSObject>] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] [<CommonParameters>]
```

### GetViaIdentity
```
Get-AzEventHub -InputObject <IEventHubIdentity> [-DefaultProfile <PSObject>] [-Break]
 [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>]
 [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [<CommonParameters>]
```

## DESCRIPTION
Gets an Event Hubs description for the specified Event Hub.

## EXAMPLES

### EXAMPLE 1
```
Get-AzEventHub -ResourceGroupName myResourceGroup -NamespaceName myNamespace -Name myEventHub
```

### EXAMPLE 2
```
Get-AzEventHub -ResourceGroupName myResourceGroup -NamespaceName myNamespace
```

## PARAMETERS

### -Name
The Event Hub name

```yaml
Type: String
Parameter Sets: Get
Aliases: EventHubName

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -NamespaceName
The Namespace name

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

### -ResourceGroupName
Name of the resource group within the azure subscription.

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
Subscription credentials that uniquely identify a Microsoft Azure subscription.
The subscription ID forms part of the URI for every service call.

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

### -InputObject
Identity Parameter
To construct, see NOTES section for INPUTOBJECT properties and create a hash table.

```yaml
Type: IEventHubIdentity
Parameter Sets: GetViaIdentity
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Skip
Skip is only used if a previous operation returned a partial result.
If a previous response contains a nextLink element, the value of the nextLink element will include a skip parameter that specifies a starting point to use for subsequent calls.

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
May be used to limit the number of results to the most recent N usageDetails.

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

### Microsoft.Azure.PowerShell.Cmdlets.EventHub.Models.IEventHubIdentity
## OUTPUTS

### Microsoft.Azure.PowerShell.Cmdlets.EventHub.Models.Api202201Preview.IEventhub
## NOTES
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties.
For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT \<IEventHubIdentity\>: Identity Parameter
  \[Alias \<String\>\]: The Disaster Recovery configuration name
  \[ApplicationGroupName \<String\>\]: The Application Group name 
  \[AuthorizationRuleName \<String\>\]: The authorization rule name.
  \[ClusterName \<String\>\]: The name of the Event Hubs Cluster.
  \[ConsumerGroupName \<String\>\]: The consumer group name
  \[EventHubName \<String\>\]: The Event Hub name
  \[Id \<String\>\]: Resource identity path
  \[NamespaceName \<String\>\]: The Namespace name
  \[PrivateEndpointConnectionName \<String\>\]: The PrivateEndpointConnection name
  \[ResourceAssociationName \<String\>\]: The ResourceAssociation Name
  \[ResourceGroupName \<String\>\]: Name of the resource group within the azure subscription.
  \[SchemaGroupName \<String\>\]: The Schema Group name 
  \[SubscriptionId \<String\>\]: Subscription credentials that uniquely identify a Microsoft Azure subscription.
The subscription ID forms part of the URI for every service call.

## RELATED LINKS

[https://learn.microsoft.com/powershell/module/az.eventhub/get-azeventhub](https://learn.microsoft.com/powershell/module/az.eventhub/get-azeventhub)

