---
external help file: Az.EventHub-help.xml
Module Name: Az.EventHub
online version: https://learn.microsoft.com/powershell/module/az.eventhub/get-azeventhubauthorizationrule
schema: 2.0.0
---

# Get-AzEventHubAuthorizationRule

## SYNOPSIS
Gets an EventHub Authorization Rule

## SYNTAX

### GetExpandedNamespace (Default)
```
Get-AzEventHubAuthorizationRule -NamespaceName <String> -ResourceGroupName <String> [-Name <String>]
 [-SubscriptionId <String[]>] [-DefaultProfile <PSObject>] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] [<CommonParameters>]
```

### GetExpandedEntity
```
Get-AzEventHubAuthorizationRule -NamespaceName <String> -ResourceGroupName <String> [-Name <String>]
 [-SubscriptionId <String[]>] -EventHubName <String> [-DefaultProfile <PSObject>] [-Break]
 [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>]
 [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [<CommonParameters>]
```

### GetExpandedAlias
```
Get-AzEventHubAuthorizationRule -NamespaceName <String> -ResourceGroupName <String> [-Name <String>]
 [-SubscriptionId <String[]>] -AliasName <String> [-DefaultProfile <PSObject>] [-Break]
 [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>]
 [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [<CommonParameters>]
```

### GetViaIdentityExpanded
```
Get-AzEventHubAuthorizationRule -InputObject <IEventHubIdentity> [-DefaultProfile <PSObject>] [-Break]
 [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>]
 [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [<CommonParameters>]
```

## DESCRIPTION
Gets an EventHub Authorization Rule

## EXAMPLES

### EXAMPLE 1
```
Get-AzEventHubAuthorizationRule -ResourceGroupName myResourceGroup -NamespaceName myNamespace -Name myAuthRule
```

### EXAMPLE 2
```
Get-AzEventHubAuthorizationRule -ResourceGroupName myResourceGroup -NamespaceName myNamespace -EventHubName myEventHub -Name myAuthRule
```

## PARAMETERS

### -NamespaceName
The name of EventHub namespace

```yaml
Type: String
Parameter Sets: GetExpandedNamespace, GetExpandedEntity, GetExpandedAlias
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
Parameter Sets: GetExpandedNamespace, GetExpandedEntity, GetExpandedAlias
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Name
The name of the Authorization Rule

```yaml
Type: String
Parameter Sets: GetExpandedNamespace, GetExpandedEntity, GetExpandedAlias
Aliases: AuthorizationRuleName

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SubscriptionId
The ID of the target subscription.

```yaml
Type: String[]
Parameter Sets: GetExpandedNamespace, GetExpandedEntity, GetExpandedAlias
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AliasName
The name of the Disaster Recovery alias

```yaml
Type: String
Parameter Sets: GetExpandedAlias
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -EventHubName
The name of the EventHub entity.

```yaml
Type: String
Parameter Sets: GetExpandedEntity
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -InputObject
Identity parameter.
To construct, see NOTES section for INPUTOBJECT properties and create a hash table.

```yaml
Type: IEventHubIdentity
Parameter Sets: GetViaIdentityExpanded
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

### Microsoft.Azure.PowerShell.Cmdlets.EventHub.Models.IEventHubIdentity
## OUTPUTS

### Microsoft.Azure.PowerShell.Cmdlets.EventHub.Models.Api202201Preview.IAuthorizationRule
## NOTES
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties.
For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT \<IEventHubIdentity\>: Identity parameter.
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

[https://learn.microsoft.com/powershell/module/az.eventhub/get-azeventhubauthorizationrule](https://learn.microsoft.com/powershell/module/az.eventhub/get-azeventhubauthorizationrule)

