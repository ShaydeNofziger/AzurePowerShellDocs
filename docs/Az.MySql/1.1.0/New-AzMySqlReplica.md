---
external help file: Az.MySql-help.xml
Module Name: Az.MySql
online version: https://docs.microsoft.com/powershell/module/az.mysql/new-azmysqlreplica
schema: 2.0.0
---

# New-AzMySqlReplica

## SYNOPSIS
Creates a new replica from an existing database.

## SYNTAX

```
New-AzMySqlReplica -Replica <String> -ResourceGroupName <String> [-SubscriptionId <String>] -Master <IServer>
 [-Location <String>] [-Sku <String>] [-DefaultProfile <PSObject>] [-AsJob] [-Break]
 [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-NoWait] [-Proxy <Uri>]
 [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
Creates a new replica from an existing database.

## EXAMPLES

### EXAMPLE 1
```
Get-AzMySqlServer -ResourceGroupName PowershellMySqlTest -ServerName mysql-test | New-AzMySqlReplica -Replica mysql-test-replica -ResourceGroupName PowershellMySqlTest
```

### EXAMPLE 2
```
$mysql = Get-AzMySqlServer -ResourceGroupName PowershellMySqlTest -ServerName mysql-test
New-AzMySqlReplica -Master $mysql -Replica mysql-test-replica -ResourceGroupName PowershellMySqlTest
```

## PARAMETERS

### -Replica
The name of the server.

```yaml
Type: String
Parameter Sets: (All)
Aliases: ReplicaServerName, Name

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ResourceGroupName
The name of the resource group that contains the resource, You can obtain this value from the Azure Resource Manager API or the portal.

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
The subscription ID that identifies an Azure subscription.

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

### -Master
The source server object to create replica from.
To construct, see NOTES section for MASTER properties and create a hash table.

```yaml
Type: IServer
Parameter Sets: (All)
Aliases: InputObject

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Location
The location the resource resides in.

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

### -Sku
The name of the sku, typically, tier + family + cores, e.g.
B_Gen4_1, GP_Gen5_8.

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
Run the command as a job.

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
Wait for .NET debugger to attach.

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
{{ Fill HttpPipelineAppend Description }}

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
{{ Fill HttpPipelinePrepend Description }}

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
Run the command asynchronously.

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
{{ Fill Proxy Description }}

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
{{ Fill ProxyCredential Description }}

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
{{ Fill ProxyUseDefaultCredentials Description }}

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

### Microsoft.Azure.PowerShell.Cmdlets.MySql.Models.Api20171201.IServer
## OUTPUTS

### Microsoft.Azure.PowerShell.Cmdlets.MySql.Models.Api20171201.IServer
## NOTES
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties.
For information on hash tables, run Get-Help about_Hash_Tables.

MASTER \<IServer\>: The source server object to create replica from.
  Location \<String\>: The geo-location where the resource lives
  \[Tag \<ITrackedResourceTags\>\]: Resource tags.
    \[(Any) \<String\>\]: This indicates any property can be added to this object.
  \[AdministratorLogin \<String\>\]: The administrator's login name of a server.
Can only be specified when the server is being created (and is required for creation).
  \[EarliestRestoreDate \<DateTime?\>\]: Earliest restore point creation time (ISO8601 format)
  \[FullyQualifiedDomainName \<String\>\]: The fully qualified domain name of a server.
  \[IdentityType \<IdentityType?\>\]: The identity type.
Set this to 'SystemAssigned' in order to automatically create and assign an Azure Active Directory principal for the resource.
  \[InfrastructureEncryption \<InfrastructureEncryption?\>\]: Status showing whether the server enabled infrastructure encryption.
  \[MasterServerId \<String\>\]: The master server id of a replica server.
  \[MinimalTlsVersion \<MinimalTlsVersionEnum?\>\]: Enforce a minimal Tls version for the server.
  \[PublicNetworkAccess \<PublicNetworkAccessEnum?\>\]: Whether or not public network access is allowed for this server.
Value is optional but if passed in, must be 'Enabled' or 'Disabled'
  \[ReplicaCapacity \<Int32?\>\]: The maximum number of replicas that a master server can have.
  \[ReplicationRole \<String\>\]: The replication role of the server.
  \[SkuCapacity \<Int32?\>\]: The scale up/out capacity, representing server's compute units.
  \[SkuFamily \<String\>\]: The family of hardware.
  \[SkuName \<String\>\]: The name of the sku, typically, tier + family + cores, e.g.
B_Gen4_1, GP_Gen5_8.
  \[SkuSize \<String\>\]: The size code, to be interpreted by resource as appropriate.
  \[SkuTier \<SkuTier?\>\]: The tier of the particular SKU, e.g.
Basic.
  \[SslEnforcement \<SslEnforcementEnum?\>\]: Enable ssl enforcement or not when connect to server.
  \[StorageProfileBackupRetentionDay \<Int32?\>\]: Backup retention days for the server.
  \[StorageProfileGeoRedundantBackup \<GeoRedundantBackup?\>\]: Enable Geo-redundant or not for server backup.
  \[StorageProfileStorageAutogrow \<StorageAutogrow?\>\]: Enable Storage Auto Grow.
  \[StorageProfileStorageMb \<Int32?\>\]: Max storage allowed for a server.
  \[UserVisibleState \<ServerState?\>\]: A state of a server that is visible to user.
  \[Version \<ServerVersion?\>\]: Server version.

## RELATED LINKS

[https://docs.microsoft.com/powershell/module/az.mysql/new-azmysqlreplica](https://docs.microsoft.com/powershell/module/az.mysql/new-azmysqlreplica)

