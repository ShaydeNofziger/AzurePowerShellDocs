---
external help file: Az.ServiceBus-help.xml
Module Name: Az.ServiceBus
online version: https://learn.microsoft.com/powershell/module/az.servicebus/set-azservicebusnamespacev2
schema: 2.0.0
---

# Set-AzServiceBusNamespaceV2

## SYNOPSIS
Updates a ServiceBus namespace

## SYNTAX

### SetExpanded (Default)
```
Set-AzServiceBusNamespaceV2 -Name <String> -ResourceGroupName <String> [-SubscriptionId <String>]
 [-AlternateName <String>] [-DisableLocalAuth] [-KeyVaultProperty <IKeyVaultProperties[]>]
 [-RequireInfrastructureEncryption] [-IdentityType <ManagedServiceIdentityType>]
 [-UserAssignedIdentityId <String[]>] [-MinimumTlsVersion <String>]
 [-PublicNetworkAccess <PublicNetworkAccess>] [-SkuName <SkuName>] [-SkuCapacity <Int32>] [-Tag <Hashtable>]
 [-DefaultProfile <PSObject>] [-AsJob] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-NoWait] [-Proxy <Uri>] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### SetViaIdentityExpanded
```
Set-AzServiceBusNamespaceV2 [-InputObject <IServiceBusIdentity>] [-AlternateName <String>] [-DisableLocalAuth]
 [-KeyVaultProperty <IKeyVaultProperties[]>] [-RequireInfrastructureEncryption]
 [-IdentityType <ManagedServiceIdentityType>] [-UserAssignedIdentityId <String[]>]
 [-MinimumTlsVersion <String>] [-PublicNetworkAccess <PublicNetworkAccess>] [-SkuName <SkuName>]
 [-SkuCapacity <Int32>] [-Tag <Hashtable>] [-DefaultProfile <PSObject>] [-AsJob] [-Break]
 [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-NoWait] [-Proxy <Uri>]
 [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
Updates a ServiceBus namespace

## EXAMPLES

### EXAMPLE 1
```
$serviceBusNamespace = Get-AzServiceBusNamespaceV2 -ResourceGroupName myResourceGroup -NamespaceName myNamespace
$newKeyVaultProperty = New-AzServiceBusKeyVaultPropertiesObject -KeyName key6 -KeyVaultUri https://testkeyvault.vault.azure.net -UserAssignedIdentity "/subscriptions/000000000000/resourceGroups/myResourceGroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myFirstIdentity"
$serviceBusNamespace.KeyVaultProperty += $newKeyVaultProperty
Set-AzServiceBusNamespaceV2 -InputObject $serviceBusNamespace -KeyVaultProperty $serviceBusNamespace.KeyVaultProperty
```

### EXAMPLE 2
```
$serviceBusNamespace = Get-AzServiceBusNamespaceV2 -ResourceGroupName myResourceGroup -NamespaceName myNamespace
$serviceBusNamespace.KeyVaultProperty = $serviceBusNamespace.KeyVaultProperty[0,2]
Set-AzServiceBusNamespaceV2 -InputObject $serviceBusNamespace -KeyVaultProperty $serviceBusNamespace.KeyVaultProperty
```

### EXAMPLE 3
```
$serviceBusNamespace = Get-AzServiceBusNamespaceV2 -ResourceGroupName myResourceGroup -NamespaceName myNamespace
$id1 = "/subscriptions/000000000000/resourceGroups/myResourceGroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myFirstIdentity"
$id2 = "/subscriptions/000000000000/resourceGroups/myResourceGroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/mySecondIdentity"
Set-AzServiceBusNamespaceV2 -InputObject $serviceBusNamespace -IdentityType "SystemAssigned, UserAssigned" -UserAssignedIdentityId $id1, $id2
```

### EXAMPLE 4
```
$id1 = "/subscriptions/000000000000/resourceGroups/myResourceGroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myFirstIdentity" 
$id2 = "/subscriptions/000000000000/resourceGroups/myResourceGroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/mySecondIdentity"
$serviceBusNamespace = New-AzServiceBusNamespaceV2 -ResourceGroupName myResourceGroup -Name myNamespace -SkuName Premium -Location northeurope -IdentityType UserAssigned -UserAssignedIdentityId $id1,$id2
$serviceBusNamespace = Set-AzServiceBusNamespaceV2 -ResourceGroupName myResourceGroup -Name myNamespace -IdentityType None -UserAssignedIdentityId @()
```

## PARAMETERS

### -Name
The name of ServiceBusNamespace

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
The name of the ResourceGroupName.

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

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AlternateName
Alternate name for namespace

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
This property disables SAS authentication for the Service Bus namespace.

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
Properties of KeyVault
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

### -SkuName
Name of this SKU.

```yaml
Type: SkuName
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SkuCapacity
The specified messaging units for the tier.
For Premium tier, capacity are 1,2 and 4.

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
Resource tags.

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

## OUTPUTS

### Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Models.Api20221001Preview.ISbNamespace
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

KEYVAULTPROPERTY \<IKeyVaultProperties\[\]\>: Properties of KeyVault
  \[KeyName \<String\>\]: Name of the Key from KeyVault
  \[KeyVaultUri \<String\>\]: Uri of KeyVault
  \[KeyVersion \<String\>\]: Version of KeyVault
  \[UserAssignedIdentity \<String\>\]: ARM ID of user Identity selected for encryption

## RELATED LINKS

[https://learn.microsoft.com/powershell/module/az.servicebus/set-azservicebusnamespacev2](https://learn.microsoft.com/powershell/module/az.servicebus/set-azservicebusnamespacev2)

