---
external help file: Az.EventHub-help.xml
Module Name: Az.EventHub
online version: https://learn.microsoft.com/powershell/module/az.eventhub/new-azeventhubnamespacev2
schema: 2.0.0
---

# New-AzEventHubNamespaceV2

## SYNOPSIS
Creates an EventHub Namespace

## SYNTAX

```
New-AzEventHubNamespaceV2 -Name <String> -ResourceGroupName <String> [-SubscriptionId <String>]
 -Location <String> [-AlternateName <String>] [-ClusterArmId <String>] [-DisableLocalAuth]
 [-RequireInfrastructureEncryption] [-ZoneRedundant] [-KeyVaultProperty <IKeyVaultProperties[]>]
 [-IdentityType <ManagedServiceIdentityType>] [-UserAssignedIdentityId <String[]>] [-EnableAutoInflate]
 [-MaximumThroughputUnit <Int64>] [-MinimumTlsVersion <String>] [-SkuName <SkuName>]
 [-PublicNetworkAccess <PublicNetworkAccess>] [-SkuCapacity <Int64>] [-Tag <Hashtable>]
 [-DefaultProfile <PSObject>] [-AsJob] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-NoWait] [-Proxy <Uri>] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
Creates an EventHub Namespace

## EXAMPLES

### EXAMPLE 1
```
$keyVaultProperty1 = New-AzEventHubKeyVaultPropertiesObject -KeyName key1 -KeyVaultUri https://testkeyvault.vault.azure.net -UserAssignedIdentity "/subscriptions/000000000000000/resourceGroups/myResourceGroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myFirstIdentity"
$keyVaultProperty2 = New-AzEventHubKeyVaultPropertiesObject -KeyName key2 -KeyVaultUri https://testkeyvault.vault.azure.net -UserAssignedIdentity "/subscriptions/000000000000000/resourceGroups/myResourceGroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/mySecondIdentity"
```

New-AzEventHubNamespaceV2 -ResourceGroupName myResourceGroup -Name myNamespace -SkuName Premium -Location northeurope -IdentityType UserAssigned -UserAssignedIdentityId "/subscriptions/000000000000000/resourceGroups/myResourceGroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myFirstIdentity","/subscriptions/000000000000000/resourceGroups/myResourceGroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/mySecondIdentity" -KeyVaultProperty $keyVaultProperty1,$keyVaultProperty2

### EXAMPLE 2
```
New-AzEventHubNamespaceV2 -ResourceGroupName myResourceGroup -Name myNamespace -SkuName Premium -Location northeurope -IdentityType SystemAssigned
```

### EXAMPLE 3
```
New-AzEventHubNamespaceV2 -ResourceGroupName myResourceGroup -Name myNamespace -SkuCapacity 10 -MaximumThroughputUnit 18 -SkuName Standard -Location southcentralus -Tag @{k1='v1'; k2='v2'} -EnableAutoInflate -DisableLocalAuth
```

## PARAMETERS

### -Name
The name of EventHub namespace.

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

### -Location
Cluster ARM ID of the Namespace.

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

### -ClusterArmId
Cluster ARM ID of the Namespace.

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

### -ZoneRedundant
Enabling this property creates a Standard Event Hubs Namespace in regions supported availability zones.

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
Type: Int64
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

### -SkuName
The minimum TLS version for the cluster to support, e.g.
'1.2'

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
Type: Int64
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

## OUTPUTS

### Microsoft.Azure.PowerShell.Cmdlets.EventHub.Models.Api202201Preview.IEhNamespace
## NOTES
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties.
For information on hash tables, run Get-Help about_Hash_Tables.

KEYVAULTPROPERTY \<IKeyVaultProperties\[\]\>: Properties to configure Encryption
  \[KeyName \<String\>\]: Name of the Key from KeyVault
  \[KeyVaultUri \<String\>\]: Uri of KeyVault
  \[KeyVersion \<String\>\]: Key Version
  \[UserAssignedIdentity \<String\>\]: ARM ID of user Identity selected for encryption

## RELATED LINKS

[https://learn.microsoft.com/powershell/module/az.eventhub/new-azeventhubnamespacev2](https://learn.microsoft.com/powershell/module/az.eventhub/new-azeventhubnamespacev2)

