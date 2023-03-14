---
external help file: Az.Migrate-help.xml
Module Name: Az.Migrate
online version: https://docs.microsoft.com/powershell/module/az.migrate/start-azmigratetestmigration
schema: 2.0.0
---

# Start-AzMigrateTestMigration

## SYNOPSIS
Starts the test migration for the replicating server.

## SYNTAX

### ByIDVMwareCbt (Default)
```
Start-AzMigrateTestMigration -TestNetworkID <String> -TargetObjectID <String>
 [-NicToUpdate <IVMwareCbtNicInput[]>] [-SubscriptionId <String>] [-DefaultProfile <PSObject>] [-Break]
 [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>]
 [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [<CommonParameters>]
```

### ByInputObjectVMwareCbt
```
Start-AzMigrateTestMigration -TestNetworkID <String> [-NicToUpdate <IVMwareCbtNicInput[]>]
 [-SubscriptionId <String>] -InputObject <IMigrationItem> [-DefaultProfile <PSObject>] [-Break]
 [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>]
 [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [<CommonParameters>]
```

## DESCRIPTION
The Start-AzMigrateTestMigration cmdlet initiates the test migration for the replicating server.

## EXAMPLES

### EXAMPLE 1
```
Start-AzMigrateTestMigration -TargetObjectID '/Subscriptions/xxx-xxx-xxx/resourceGroups/azmigratepwshtestasr13072020/providers/Microsoft.RecoveryServices/vaults/AzMigrateTestProjectPWSH02aarsvault/replicationFabrics/AzMigratePWSHTc8d1replicationfabric/replicationProtectionContainers/AzMigratePWSHTc8d1replicationcontainer/replicationMigrationItems/bcdr-vcenter-fareast-corp-micro-cfcc5a24-a40e-56b9-a6af-e206c9ca4f93_50063baa-9806-d6d6-7e09-c0ae87309b4f' -TestNetworkId '/subscriptions/xxx-xxx-xxx/resourceGroups/AzMigratePWSHtargetRG/providers/Microsoft.Network/virtualNetworks/AzMigrateTargetNetwork'
```

### EXAMPLE 2
```
$obj = Get-AzMigrateServerReplication -TargetObjectID $env.srsMachineId -SubscriptionId $env.srsSubscriptionId
Start-AzMigrateTestMigration -InputObject $obj -TestNetworkId '/subscriptions/xxx-xxx-xxx/resourceGroups/AzMigratePWSHtargetRG/providers/Microsoft.Network/virtualNetworks/AzMigrateTargetNetwork'
```

## PARAMETERS

### -TestNetworkID
Updates the Virtual Network id within the destination Azure subscription to be used for test migration.

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

### -TargetObjectID
Specifies the replicating server for which the test migration needs to be initiated.
The ID should be retrieved using the Get-AzMigrateServerReplication cmdlet.

```yaml
Type: String
Parameter Sets: ByIDVMwareCbt
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -NicToUpdate
Updates the NIC for the Azure VM to be created.
To construct, see NOTES section for NICTOUPDATE properties and create a hash table.

```yaml
Type: IVMwareCbtNicInput[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SubscriptionId
Azure Subscription ID.

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

### -InputObject
Specifies the replicating server for which the test migration needs to be initiated.
The server object can be retrieved using the Get-AzMigrateServerReplication cmdlet.
To construct, see NOTES section for INPUTOBJECT properties and create a hash table.

```yaml
Type: IMigrationItem
Parameter Sets: ByInputObjectVMwareCbt
Aliases:

Required: True
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

## OUTPUTS

### Microsoft.Azure.PowerShell.Cmdlets.Migrate.Models.Api20220501.IJob
## NOTES
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties.
For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT \<IMigrationItem\>: Specifies the replicating server for which the test migration needs to be initiated.
The server object can be retrieved using the Get-AzMigrateServerReplication cmdlet.
  \[Location \<String\>\]: Resource Location
  \[ProviderSpecificDetail \<IMigrationProviderSpecificSettings\>\]: The migration provider custom settings.
    InstanceType \<String\>: Gets the instance type.

NICTOUPDATE \<IVMwareCbtNicInput\[\]\>: Updates the NIC for the Azure VM to be created.
  IsPrimaryNic \<String\>: A value indicating whether this is the primary NIC.
  NicId \<String\>: The NIC Id.
  \[IsSelectedForMigration \<String\>\]: A value indicating whether this NIC is selected for migration.
  \[TargetNicName \<String\>\]: Target NIC name.
  \[TargetStaticIPAddress \<String\>\]: The static IP address.
  \[TargetSubnetName \<String\>\]: Target subnet name.
  \[TestStaticIPAddress \<String\>\]: The test static IP address.
  \[TestSubnetName \<String\>\]: The test subnet name.

## RELATED LINKS

[https://docs.microsoft.com/powershell/module/az.migrate/start-azmigratetestmigration](https://docs.microsoft.com/powershell/module/az.migrate/start-azmigratetestmigration)

