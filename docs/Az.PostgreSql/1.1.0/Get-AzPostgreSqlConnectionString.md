---
external help file: Az.PostgreSql-help.xml
Module Name: Az.PostgreSql
online version: https://docs.microsoft.com/powershell/module/az.postgresql/get-azpostgresqlconnectionstring
schema: 2.0.0
---

# Get-AzPostgreSqlConnectionString

## SYNOPSIS
Get the connection string according to client connection provider.

## SYNTAX

### Get (Default)
```
Get-AzPostgreSqlConnectionString -Client <String> -Name <String> -ResourceGroupName <String>
 [-SubscriptionId <String>] [-DefaultProfile <PSObject>] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] [<CommonParameters>]
```

### GetViaIdentity
```
Get-AzPostgreSqlConnectionString -Client <String> -InputObject <IServer> [-DefaultProfile <PSObject>] [-Break]
 [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>]
 [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [<CommonParameters>]
```

## DESCRIPTION
Get the connection string according to client connection provider.

## EXAMPLES

### EXAMPLE 1
```
Get-AzPostgreSqlConnectionString -Client ADO.NET -Name PostgreSqlTestServer -ResourceGroupName PostgreSqlTestRG
```

### EXAMPLE 2
```
Get-AzPostgreSqlServer -ResourceGroupName PostgreSqlTestRG -ServerName PostgreSqlTestServer | Get-AzPostgreSqlConnectionString -Client PHP
```

## PARAMETERS

### -Client
Client connection provider.

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

### -Name
The name of the server.

```yaml
Type: String
Parameter Sets: Get
Aliases: ServerName

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
Parameter Sets: Get
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
Parameter Sets: Get
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -InputObject
The server for the connection string
To construct, see NOTES section for INPUTOBJECT properties and create a hash table.

```yaml
Type: IServer
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### Microsoft.Azure.PowerShell.Cmdlets.PostgreSql.Models.Api20171201.IServer
## OUTPUTS

### System.String
## NOTES
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties.
For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT \<IServer\>: The server for the connection string
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

[https://docs.microsoft.com/powershell/module/az.postgresql/get-azpostgresqlconnectionstring](https://docs.microsoft.com/powershell/module/az.postgresql/get-azpostgresqlconnectionstring)

