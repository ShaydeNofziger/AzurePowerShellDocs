---
external help file: Az.RedisEnterpriseCache-help.xml
Module Name: Az.RedisEnterpriseCache
online version: https://docs.microsoft.com/powershell/module/az.redisenterprisecache/new-azredisenterprisecache
schema: 2.0.0
---

# New-AzRedisEnterpriseCache

## SYNOPSIS
Creates a Redis Enterprise cache.

## SYNTAX

### CreateClusterWithDatabase (Default)
```
New-AzRedisEnterpriseCache -ClusterName <String> -ResourceGroupName <String> [-SubscriptionId <String>]
 -Location <String> -Sku <SkuName> [-Capacity <Int32>] [-MinimumTlsVersion <TlsVersion>] [-Zone <String[]>]
 [-Tag <Hashtable>] [-Module <IModule[]>] [-ClientProtocol <Protocol>] [-Port <Int32>]
 [-EvictionPolicy <EvictionPolicy>] [-GroupNickname <String>] [-LinkedDatabase <ILinkedDatabase[]>]
 [-ClusteringPolicy <ClusteringPolicy>] [-AofPersistenceEnabled] [-AofPersistenceFrequency <AofFrequency>]
 [-RdbPersistenceEnabled] [-RdbPersistenceFrequency <RdbFrequency>] [-DefaultProfile <PSObject>] [-AsJob]
 [-Break] [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-NoWait]
 [-Proxy <Uri>] [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

### CreateClusterOnly
```
New-AzRedisEnterpriseCache -ClusterName <String> -ResourceGroupName <String> [-SubscriptionId <String>]
 -Location <String> -Sku <SkuName> [-Capacity <Int32>] [-MinimumTlsVersion <TlsVersion>] [-Zone <String[]>]
 [-Tag <Hashtable>] [-DefaultProfile <PSObject>] [-AsJob] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-NoWait] [-Proxy <Uri>] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] [-NoDatabase] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
Creates or updates an existing (overwrite/recreate, with potential downtime) cache cluster with an associated database.

## EXAMPLES

### EXAMPLE 1
```
New-AzRedisEnterpriseCache -Name "MyCache" -ResourceGroupName "MyGroup" -Location "West US" -Sku "Enterprise_E10"
```

### EXAMPLE 2
```
New-AzRedisEnterpriseCache -Name "MyCache" -ResourceGroupName "MyGroup" -Location "East US" -Sku "Enterprise_E20" -Capacity 4 -MinimumTlsVersion "1.2" -Zone "1","2","3" -Tag @{"tag1" = "value1"} -Module "{name:RedisBloom, args:`"ERROR_RATE 0.00 INITIAL_SIZE 400`"}","{name:RedisTimeSeries, args:`"RETENTION_POLICY 20`"}","{name:RediSearch}" -ClientProtocol "Plaintext" -EvictionPolicy "NoEviction" -ClusteringPolicy "EnterpriseCluster" -AofPersistenceEnabled -AofPersistenceFrequency "1s"
```

### EXAMPLE 3
```
New-AzRedisEnterpriseCache -Name "MyCache" -ResourceGroupName "MyGroup" -Location "East US" -Sku "EnterpriseFlash_F300" -NoDatabase
```

### EXAMPLE 4
```
New-AzRedisEnterpriseCache -Name "MyCache" -ResourceGroupName "MyGroup" -Location "West US" -Sku "Enterprise_E10" -ClientProtocol "Encrypted" -EvictionPolicy "NoEviction" -ClusteringPolicy "EnterpriseCluster" -GroupNickname "GroupNickname" -LinkedDatabase '{id:"/subscriptions/6b9ac7d2-7f6d-4de4-962c-43fda44bc3f2/resourceGroups/MyGroup/providers/Microsoft.Cache/redisEnterprise/MyCache/databases/default"}'
```

## PARAMETERS

### -ClusterName
The name of the Redis Enterprise cluster.

```yaml
Type: String
Parameter Sets: (All)
Aliases: Name

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
The geo-location where the resource lives.

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

### -Sku
The type of Redis Enterprise cluster to deploy.
Allowed values: Enterprise_E10, Enterprise_E20, Enterprise_E50, Enterprise_E100, EnterpriseFlash_F300, EnterpriseFlash_F700, EnterpriseFlash_F1500

```yaml
Type: SkuName
Parameter Sets: (All)
Aliases: SkuName

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Capacity
The size of the Redis Enterprise cluster - defaults to 2 or 3 depending on SKU.
Allowed values are (2, 4, 6, ...) for Enterprise SKUs and (3, 9, 15, ...) for Flash SKUs.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases: SkuCapacity

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -MinimumTlsVersion
The minimum TLS version for the cluster to support - default is 1.2
Allowed values: 1.0, 1.1, 1.2

```yaml
Type: TlsVersion
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Zone
The Availability Zones where this cluster will be deployed.

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

### -Tag
Cluster resource tags.

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

### -Module
Optional set of redis modules to enable in this database - modules can only be added at create time.
To construct, see NOTES section for MODULE properties and create a hash table.

```yaml
Type: IModule[]
Parameter Sets: CreateClusterWithDatabase
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ClientProtocol
Specifies whether redis clients can connect using TLS-encrypted or plaintext redis protocols - default is Encrypted
Allowed values: Encrypted, Plaintext

```yaml
Type: Protocol
Parameter Sets: CreateClusterWithDatabase
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Port
TCP port of the database endpoint - defaults to an available port
Specified at create time.

```yaml
Type: Int32
Parameter Sets: CreateClusterWithDatabase
Aliases:

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -EvictionPolicy
Redis eviction policy - default is VolatileLRU
Allowed values: AllKeysLFU, AllKeysLRU, AllKeysRandom, VolatileLRU, VolatileLFU, VolatileTTL, VolatileRandom, NoEviction

```yaml
Type: EvictionPolicy
Parameter Sets: CreateClusterWithDatabase
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -GroupNickname
Name for the group of linked database resources

```yaml
Type: String
Parameter Sets: CreateClusterWithDatabase
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -LinkedDatabase
List of database resources to link with this database
To construct, see NOTES section for GEOREPLICATIONLINKEDDATABASE properties and create a hash table.
To construct, see NOTES section for LINKEDDATABASE properties and create a hash table.

```yaml
Type: ILinkedDatabase[]
Parameter Sets: CreateClusterWithDatabase
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ClusteringPolicy
Clustering policy - default is OSSCluster
Specified at create time.
Allowed values: EnterpriseCluster, OSSCluster

```yaml
Type: ClusteringPolicy
Parameter Sets: CreateClusterWithDatabase
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AofPersistenceEnabled
\[Preview\] Sets whether AOF persistence is enabled.
After enabling AOF persistence, you will be unable to disable it.
Support for disabling AOF persistence after enabling will be added at a later date.

```yaml
Type: SwitchParameter
Parameter Sets: CreateClusterWithDatabase
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -AofPersistenceFrequency
\[Preview\] Sets the frequency at which data is written to disk if AOF persistence is enabled.
Allowed values: 1s, always

```yaml
Type: AofFrequency
Parameter Sets: CreateClusterWithDatabase
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RdbPersistenceEnabled
\[Preview\] Sets whether RDB persistence is enabled.
After enabling RDB persistence, you will be unable to disable it.
Support for disabling RDB persistence after enabling will be added at a later date.

```yaml
Type: SwitchParameter
Parameter Sets: CreateClusterWithDatabase
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -RdbPersistenceFrequency
\[Preview\] Sets the frequency at which a snapshot of the database is created if RDB persistence is enabled.
Allowed values: 1h, 6h, 12h

```yaml
Type: RdbFrequency
Parameter Sets: CreateClusterWithDatabase
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

### -NoDatabase
Advanced - Do not automatically create a default database.
Warning: The cache will not be usable until you create a database.

```yaml
Type: SwitchParameter
Parameter Sets: CreateClusterOnly
Aliases:

Required: True
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

### Microsoft.Azure.PowerShell.Cmdlets.RedisEnterpriseCache.Models.Api202201.ICluster
## NOTES
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties.
For information on hash tables, run Get-Help about_Hash_Tables.

LINKEDDATABASE \<ILinkedDatabase\[\]\>: List of database resources to link with this database To construct, see NOTES section for GEOREPLICATIONLINKEDDATABASE properties and create a hash table.
  \[Id \<String\>\]: Resource ID of a database resource to link with this database.

MODULE \<IModule\[\]\>: Optional set of redis modules to enable in this database - modules can only be added at create time.
  Name \<String\>: The name of the module, e.g.
'RedisBloom', 'RediSearch', 'RedisTimeSeries'
  \[Arg \<String\>\]: Configuration options for the module, e.g.
'ERROR_RATE 0.01 INITIAL_SIZE 400'.

## RELATED LINKS

[https://docs.microsoft.com/powershell/module/az.redisenterprisecache/new-azredisenterprisecache](https://docs.microsoft.com/powershell/module/az.redisenterprisecache/new-azredisenterprisecache)

