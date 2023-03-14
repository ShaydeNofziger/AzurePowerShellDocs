---
external help file: Az.ServiceBus-help.xml
Module Name: Az.ServiceBus
online version: https://learn.microsoft.com/powershell/module/az.servicebus/approve-azservicebusprivateendpointconnection
schema: 2.0.0
---

# Approve-AzServiceBusPrivateEndpointConnection

## SYNOPSIS
Approves a ServiceBus PrivateEndpointConnection

## SYNTAX

### SetExpanded (Default)
```
Approve-AzServiceBusPrivateEndpointConnection -NamespaceName <String> -ResourceGroupName <String>
 [-Name <String>] [-SubscriptionId <String>] [-Description <String>] [-DefaultProfile <PSObject>] [-AsJob]
 [-Break] [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-NoWait]
 [-Proxy <Uri>] [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [<CommonParameters>]
```

### SetViaIdentityExpanded
```
Approve-AzServiceBusPrivateEndpointConnection -InputObject <IServiceBusIdentity> [-Description <String>]
 [-DefaultProfile <PSObject>] [-AsJob] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-NoWait] [-Proxy <Uri>] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] [<CommonParameters>]
```

## DESCRIPTION
Approves a ServiceBus PrivateEndpointConnection

## EXAMPLES

### EXAMPLE 1
```
Approve-AzServiceBusPrivateEndpointConnection -ResourceGroupName myResourceGroup -NamespaceName myNamespace -Name 00000000000
```

### EXAMPLE 2
```
$privateEndpoint = Get-AzServiceBusPrivateEndpointConnection -ResourceGroupName myResourceGroup -NamespaceName myNamespace -Name 00000000000
Approve-AzServiceBusPrivateEndpointConnection -InputObject $privateEndpoint
```

## PARAMETERS

### -NamespaceName
The name of ServiceBus namespace

```yaml
Type: String
Parameter Sets: SetExpanded
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
Parameter Sets: SetExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Name
The name of the Private Endpoint Connection

```yaml
Type: String
Parameter Sets: SetExpanded
Aliases: PrivateEndpointConnectionName

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
Parameter Sets: SetExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -InputObject
Identity parameter.
To construct, see NOTES section for INPUTOBJECT properties and create a hash table.

```yaml
Type: IServiceBusIdentity
Parameter Sets: SetViaIdentityExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Description
PrivateEndpoint information.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Models.IServiceBusIdentity
## OUTPUTS

### Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Models.Api20221001Preview.IPrivateEndpointConnection
## NOTES
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties.
For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT \<IServiceBusIdentity\>: Identity parameter.
  \[Alias \<String\>\]: The Disaster Recovery configuration name
  \[AuthorizationRuleName \<String\>\]: The authorization rule name.
  \[ConfigName \<MigrationConfigurationName?\>\]: The configuration name.
Should always be "$default".
  \[Id \<String\>\]: Resource identity path
  \[NamespaceName \<String\>\]: The namespace name
  \[PrivateEndpointConnectionName \<String\>\]: The PrivateEndpointConnection name
  \[QueueName \<String\>\]: The queue name.
  \[ResourceGroupName \<String\>\]: Name of the Resource group within the Azure subscription.
  \[RuleName \<String\>\]: The rule name.
  \[SubscriptionId \<String\>\]: Subscription credentials that uniquely identify a Microsoft Azure subscription.
The subscription ID forms part of the URI for every service call.
  \[SubscriptionName \<String\>\]: The subscription name.
  \[TopicName \<String\>\]: The topic name.

## RELATED LINKS

[https://learn.microsoft.com/powershell/module/az.servicebus/approve-azservicebusprivateendpointconnection](https://learn.microsoft.com/powershell/module/az.servicebus/approve-azservicebusprivateendpointconnection)

