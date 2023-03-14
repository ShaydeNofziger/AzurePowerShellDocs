---
external help file: Az.EventHub-help.xml
Module Name: Az.EventHub
online version: https://learn.microsoft.com/powershell/module/az.eventhub/set-azeventhubnamespacev2
schema: 2.0.0
---

# Set-AzEventHubNamespaceV2

## SYNOPSIS
Updates an EventHub Namespace

## SYNTAX

### SetExpanded (Default)
```
Set-AzEventHubNamespaceV2 -Name <String> -ResourceGroupName <String> [-SubscriptionId <String>]
 [-AlternateName <String>] [-DisableLocalAuth] [-KeyVaultProperty <IKeyVaultProperties[]>]
 [-RequireInfrastructureEncryption] [-IdentityType <ManagedServiceIdentityType>]
 [-UserAssignedIdentityId <String[]>] [-EnableAutoInflate] [-MaximumThroughputUnit <Int32>]
 [-MinimumTlsVersion <String>] [-PublicNetworkAccess <PublicNetworkAccess>] [-SkuCapacity <Int32>]
 [-Tag <Hashtable>] [-DefaultProfile <PSObject>] [-AsJob] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-NoWait] [-Proxy <Uri>] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### SetViaIdentityExpanded
```
Set-AzEventHubNamespaceV2 -InputObject <IEventHubIdentity> [-AlternateName <String>] [-DisableLocalAuth]
 [-KeyVaultProperty <IKeyVaultProperties[]>] [-RequireInfrastructureEncryption]
 [-IdentityType <ManagedServiceIdentityType>] [-UserAssignedIdentityId <String[]>] [-EnableAutoInflate]
 [-MaximumThroughputUnit <Int32>] [-MinimumTlsVersion <String>] [-PublicNetworkAccess <PublicNetworkAccess>]
 [-SkuCapacity <Int32>] [-Tag <Hashtable>] [-DefaultProfile <PSObject>] [-AsJob] [-Break]
 [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-NoWait] [-Proxy <Uri>]
 [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
Updates an EventHub Namespace

## EXAMPLES

### EXAMPLE 1
```
$eventHubNamespace = Get-AzEventHubNamespaceV2 -ResourceGroupName myResourceGroup -Name myNamespace
```

$identityId = $eventHubNamespace.UserAssignedIdentity.Keys

$identityId += "/subscriptions/000000000000000/resourceGroups/myResourceGroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/mySecondIdentity"

Set-AzEventHubNamespaceV2 -InputObject $eventHubNamespace -UserAssignedIdentityId $identityId

### EXAMPLE 2
```
$eventHubNamespace = Get-AzEventHubNamespaceV2 -ResourceGroupName myResourceGroup -Name myNamespace
```

$newKeyVaultProperty = New-AzEventHubKeyVaultPropertiesObject -KeyName key3 -KeyVaultUri https://testkeyvault.vault.azure.net -UserAssignedIdentity "/subscriptions/000000000000000/resourceGroups/myResourceGroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myFirstIdentity"

$eventHubNamespace.KeyVaultProperty += $newKeyVaultProperty

Set-AzEventHubNamespaceV2 -InputObject $eventHubNamespace -KeyVaultProperty $eventHubNamespace.KeyVaultProperty

### EXAMPLE 3
```
$eventHubNamespace = Get-AzEventHubNamespaceV2 -ResourceGroupName myResourceGroup -Name myNamespace
```

# Remove the last KeyVaultProperty from the list of KeyVaultProperties
$eventHubNamespace.KeyVaultProperty = $eventHubNamespace.KeyVaultProperty | Where-Object { $_ -ne $eventHubNamespace.KeyVaultProperty\[2\] }

Set-AzEventHubNamespaceV2 -InputObject $eventHubNamespace -KeyVaultProperty $eventHubNamespace.KeyVaultProperty

### EXAMPLE 4
```
Set-AzEventHubNamespaceV2 -ResourceGroupName myResourceGroup -Name myNamespace -DisableLocalAuth
```

### EXAMPLE 5
```
$eventHubNamespace = New-AzEventHubNamespaceV2 -ResourceGroupName myResourceGroup -Name myNamespace -SkuName Premium -Location northeurope -IdentityType UserAssigned -UserAssignedIdentityId "/subscriptions/000000000000000/resourceGroups/myResourceGroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myFirstIdentity"
$eventHubNamespace = Set-AzEventHubNamespaceV2 -ResourceGroupName myResourceGroup -Name myNamespace -IdentityType None -UserAssignedIdentityId @()
```

## PARAMETERS

### -Name
The name of EventHub namespace.

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
Type: IEventHubIdentity
Parameter Sets: SetViaIdentityExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -AlternateName
Alternate name specified when alias and namespace names are same

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

### -DisableLocalAuth
This property disables SAS authentication for the Event Hubs namespace.

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

### -KeyVaultProperty
Properties to configure Encryption
To construct, see NOTES section for KEYVAULTPROPERTY properties and create a hash table.

```yaml
Type: IKeyVaultProperties[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RequireInfrastructureEncryption
Enable Infrastructure Encryption (Double Encryption)

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

### -IdentityType
Type of managed service identity.

```yaml
Type: ManagedServiceIdentityType
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UserAssignedIdentityId
Properties for User Assigned Identities

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

### -EnableAutoInflate
Value that indicates whether AutoInflate is enabled for eventhub namespace.

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

### -MaximumThroughputUnit
Upper limit of throughput units when AutoInflate is enabled, value should be within 0 to 20 throughput units.
( '0' if AutoInflateEnabled = true)

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

### -MinimumTlsVersion
The minimum TLS version for the cluster to support, e.g.
'1.2'

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

### -PublicNetworkAccess
This determines if traffic is allowed over public network.
By default it is enabled.

```yaml
Type: PublicNetworkAccess
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SkuCapacity
The Event Hubs throughput units for Basic or Standard tiers, where value should be 0 to 20 throughput units.
The Event Hubs premium units for Premium tier, where value should be 0 to 10 premium units.

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

### -Tag
Tag of EventHub Namespace.

```yaml
Type: Hashtable
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

### Microsoft.Azure.PowerShell.Cmdlets.EventHub.Models.IEventHubIdentity
## OUTPUTS

### Microsoft.Azure.PowerShell.Cmdlets.EventHub.Models.Api202201Preview.IEhNamespace
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

KEYVAULTPROPERTY \<IKeyVaultProperties\[\]\>: Properties to configure Encryption
  \[KeyName \<String\>\]: Name of the Key from KeyVault
  \[KeyVaultUri \<String\>\]: Uri of KeyVault
  \[KeyVersion \<String\>\]: Key Version
  \[UserAssignedIdentity \<String\>\]: ARM ID of user Identity selected for encryption

## RELATED LINKS

[https://learn.microsoft.com/powershell/module/az.eventhub/set-azeventhubnamespacev2](https://learn.microsoft.com/powershell/module/az.eventhub/set-azeventhubnamespacev2)

