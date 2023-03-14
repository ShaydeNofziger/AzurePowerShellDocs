---
external help file: Az.ServiceBus-help.xml
Module Name: Az.ServiceBus
online version: https://learn.microsoft.com/powershell/module/az.servicebus/set-azservicebusqueue
schema: 2.0.0
---

# Set-AzServiceBusQueue

## SYNOPSIS
Updates a ServiceBus Queue

## SYNTAX

### SetExpanded (Default)
```
Set-AzServiceBusQueue -Name <String> -NamespaceName <String> -ResourceGroupName <String>
 [-SubscriptionId <String>] [-AutoDeleteOnIdle <TimeSpan>] [-DefaultMessageTimeToLive <TimeSpan>]
 [-DuplicateDetectionHistoryTimeWindow <TimeSpan>] [-LockDuration <TimeSpan>]
 [-DeadLetteringOnMessageExpiration] [-EnableBatchedOperations] [-EnableExpress] [-ForwardTo <String>]
 [-ForwardDeadLetteredMessagesTo <String>] [-MaxDeliveryCount <Int32>] [-MaxSizeInMegabytes <Int32>]
 [-MaxMessageSizeInKilobytes <Int64>] [-Status <EntityStatus>] [-DefaultProfile <PSObject>] [-AsJob] [-Break]
 [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-NoWait] [-Proxy <Uri>]
 [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### SetViaIdentityExpanded
```
Set-AzServiceBusQueue -InputObject <IServiceBusIdentity> [-AutoDeleteOnIdle <TimeSpan>]
 [-DefaultMessageTimeToLive <TimeSpan>] [-DuplicateDetectionHistoryTimeWindow <TimeSpan>]
 [-LockDuration <TimeSpan>] [-DeadLetteringOnMessageExpiration] [-EnableBatchedOperations] [-EnableExpress]
 [-ForwardTo <String>] [-ForwardDeadLetteredMessagesTo <String>] [-MaxDeliveryCount <Int32>]
 [-MaxSizeInMegabytes <Int32>] [-MaxMessageSizeInKilobytes <Int64>] [-Status <EntityStatus>]
 [-DefaultProfile <PSObject>] [-AsJob] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-NoWait] [-Proxy <Uri>] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
Updates a ServiceBus Queue

## EXAMPLES

### EXAMPLE 1
```
Set-AzServiceBusQueue -ResourceGroupName myResourceGroup -NamespaceName myNamespace -Name myQueue -AutoDeleteOnIdle (New-TimeSpan -Days 4 -Minutes 3 -Seconds 4) -DefaultMessageTimeToLive (New-TimeSpan -Days 9)
```

### EXAMPLE 2
```
$queue = Get-AzServiceBusQueue -ResourceGroupName myResourceGroup -NamespaceName myNamespace -Name myQueue
Set-AzServiceBusQueue -InputObject $queue -AutoDeleteOnIdle (New-TimeSpan -Days 4 -Minutes 3 -Seconds 4) -DefaultMessageTimeToLive (New-TimeSpan -Days 9)
```

## PARAMETERS

### -Name
The name of the Queue.

```yaml
Type: String
Parameter Sets: SetExpanded
Aliases: QueueName

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

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

### -AutoDeleteOnIdle
ISO 8061 timeSpan idle interval after which the queue is automatically deleted.
The minimum duration is 5 minutes.

```yaml
Type: TimeSpan
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DefaultMessageTimeToLive
ISO 8601 default message timespan to live value.
This is the duration after which the message expires, starting from when the message is sent to Service Bus.
This is the default value used when TimeToLive is not set on a message itself.

```yaml
Type: TimeSpan
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DuplicateDetectionHistoryTimeWindow
ISO 8601 timeSpan structure that defines the duration of the duplicate detection history.
The default value is 10 minutes.

```yaml
Type: TimeSpan
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -LockDuration
ISO 8601 timespan duration of a peek-lock; that is, the amount of time that the message is locked for other receivers.
The maximum value for LockDuration is 5 minutes; the default value is 1 minute.

```yaml
Type: TimeSpan
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DeadLetteringOnMessageExpiration
A value that indicates whether this queue has dead letter support when a message expires.

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

### -EnableBatchedOperations
Value that indicates whether server-side batched operations are enabled.

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

### -EnableExpress
A value that indicates whether Express Entities are enabled.
An express queue holds a message in memory temporarily before writing it to persistent storage.

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

### -ForwardTo
Queue/Topic name to forward the messages

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

### -ForwardDeadLetteredMessagesTo
A value that indicates whether the queue supports the concept of sessions.

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

### -MaxDeliveryCount
The maximum delivery count.
A message is automatically deadlettered after this number of deliveries.
default value is 10.

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

### -MaxSizeInMegabytes
The maximum delivery count.
A message is automatically deadlettered after this number of deliveries.
default value is 10.

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

### -MaxMessageSizeInKilobytes
Maximum size (in KB) of the message payload that can be accepted by the queue.
This property is only used in Premium today and default is 1024.

```yaml
Type: Int64
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -Status
Maximum size (in KB) of the message payload that can be accepted by the queue.
This property is only used in Premium today and default is 1024.

```yaml
Type: EntityStatus
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

### Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Models.IServiceBusIdentity
## OUTPUTS

### Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Models.Api20221001Preview.ISbQueue
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

[https://learn.microsoft.com/powershell/module/az.servicebus/set-azservicebusqueue](https://learn.microsoft.com/powershell/module/az.servicebus/set-azservicebusqueue)

