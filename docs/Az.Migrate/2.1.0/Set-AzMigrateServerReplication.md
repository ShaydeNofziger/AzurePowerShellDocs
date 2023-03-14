---
external help file: Az.Migrate-help.xml
Module Name: Az.Migrate
online version: https://docs.microsoft.com/powershell/module/az.migrate/set-azmigrateserverreplication
schema: 2.0.0
---

# Set-AzMigrateServerReplication

## SYNOPSIS
Updates the target properties for the replicating server.

## SYNTAX

### ByIDVMwareCbt (Default)
```
Set-AzMigrateServerReplication -TargetObjectID <String> [-TargetVMName <String>] [-TargetDiskName <String>]
 [-TargetVMSize <String>] [-TargetNetworkId <String>] [-TestNetworkId <String>]
 [-TargetResourceGroupID <String>] [-NicToUpdate <IVMwareCbtNicInput[]>]
 [-DiskToUpdate <IVMwareCbtUpdateDiskInput[]>] [-TargetAvailabilitySet <String>]
 [-TargetAvailabilityZone <String>] [-SqlServerLicenseType <String>] [-UpdateTag <Hashtable>]
 [-UpdateTagOperation <String>] [-UpdateVMTag <IVMwareCbtEnableMigrationInputTargetVmtags>]
 [-UpdateVMTagOperation <String>] [-UpdateNicTag <IVMwareCbtEnableMigrationInputTargetNicTags>]
 [-UpdateNicTagOperation <String>] [-UpdateDiskTag <IVMwareCbtEnableMigrationInputTargetDiskTags>]
 [-UpdateDiskTagOperation <String>] [-TargetBootDiagnosticsStorageAccount <String>] [-SubscriptionId <String>]
 [-DefaultProfile <PSObject>] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] [<CommonParameters>]
```

### ByInputObjectVMwareCbt
```
Set-AzMigrateServerReplication [-TargetVMName <String>] [-TargetDiskName <String>] [-TargetVMSize <String>]
 [-TargetNetworkId <String>] [-TestNetworkId <String>] [-TargetResourceGroupID <String>]
 [-NicToUpdate <IVMwareCbtNicInput[]>] [-DiskToUpdate <IVMwareCbtUpdateDiskInput[]>]
 [-TargetAvailabilitySet <String>] [-TargetAvailabilityZone <String>] [-SqlServerLicenseType <String>]
 [-UpdateTag <Hashtable>] [-UpdateTagOperation <String>]
 [-UpdateVMTag <IVMwareCbtEnableMigrationInputTargetVmtags>] [-UpdateVMTagOperation <String>]
 [-UpdateNicTag <IVMwareCbtEnableMigrationInputTargetNicTags>] [-UpdateNicTagOperation <String>]
 [-UpdateDiskTag <IVMwareCbtEnableMigrationInputTargetDiskTags>] [-UpdateDiskTagOperation <String>]
 [-TargetBootDiagnosticsStorageAccount <String>] [-SubscriptionId <String>] -InputObject <IMigrationItem>
 [-DefaultProfile <PSObject>] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] [<CommonParameters>]
```

## DESCRIPTION
The Set-AzMigrateServerReplication cmdlet updates the target properties for the replicating server.

## EXAMPLES

### EXAMPLE 1
```
Set-AzMigrateServerReplication -TargetObjectID '/Subscriptions/xxx-xxx-xxx/resourceGroups/azmigratepwshtestasr13072020/providers/Microsoft.RecoveryServices/vaults/AzMigrateTestProjectPWSH02aarsvault/replicationFabrics/AzMigratePWSHTc8d1replicationfabric/replicationProtectionContainers/AzMigratePWSHTc8d1replicationcontainer/replicationMigrationItems/bcdr-vcenter-fareast-corp-micro-cfcc5a24-a40e-56b9-a6af-e206c9ca4f93_500f44f8-2aa3-587b-8958-ead358639629' -TargetVMName 'rb-w2k12r2-1'
```

### EXAMPLE 2
```
$OSDisk = Set-AzMigrateDiskMapping -DiskID "6000C294-1217-dec3-bc18-81f117220424" -DiskName "ContosoDisk_1"
$DataDisk = Set-AzMigrateDiskMapping -DiskID "6000C292-79b9-bbdc-fb8a-f1fa8dbeff84" -DiskName "ContosoDisk_2"
$DiskMapping = $OSDisk, $DataDisk
Set-AzMigrateServerReplication -TargetObjectId "/Subscriptions/7c943c1b-5122-4097-90c8-861411bdd574/resourceGroups/cbtsignoff2105srcrg/providers/Microsoft.RecoveryServices/vaults/signoff2105app1452vault/replicationFabrics/signoff2105app1c36replicationfabric/replicationProtectionContainers/signoff2105app1c36replicationcontainer/replicationMigrationItems/idclab-vcen67-fareast-corp-micr-6f5e3b29-29ad-4e62-abbd-6cd33c4183ef_5015f6d8-fc84-afdf-de47-1eab79330f00" -DiskToUpdate $DiskMapping
```

## PARAMETERS

### -TargetObjectID
Specifies the replcating server for which the properties need to be updated.
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

### -TargetVMName
Specifies the replcating server for which the properties need to be updated.
The ID should be retrieved using the Get-AzMigrateServerReplication cmdlet.

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

### -TargetDiskName
Specifies the name of the Azure VM to be created.

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

### -TargetVMSize
Updates the SKU of the Azure VM to be created.

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

### -TargetNetworkId
Updates the Virtual Network id within the destination Azure subscription to which the server needs to be migrated.

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

### -TestNetworkId
Updates the Virtual Network id within the destination Azure subscription to which the server needs to be test migrated.

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

### -TargetResourceGroupID
Updates the Resource Group id within the destination Azure subscription to which the server needs to be migrated.

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

### -DiskToUpdate
Updates the disk for the Azure VM to be created.
To construct, see NOTES section for DISKTOUPDATE properties and create a hash table.

```yaml
Type: IVMwareCbtUpdateDiskInput[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TargetAvailabilitySet
Specifies the Availability Set to be used for VM creation.

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

### -TargetAvailabilityZone
Specifies the Availability Zone to be used for VM creation.

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

### -SqlServerLicenseType
Specifies if Azure Hybrid benefit for SQL Server is applicable for the server to be migrated.

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

### -UpdateTag
Specifies the tag to be used for Resource creation.

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

### -UpdateTagOperation
Specifies update tag operation.

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

### -UpdateVMTag
Specifies the tag to be used for VM creation.
To construct, see NOTES section for UPDATEVMTAG properties and create a hash table.

```yaml
Type: IVMwareCbtEnableMigrationInputTargetVmtags
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UpdateVMTagOperation
Specifies update VM tag operation.

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

### -UpdateNicTag
Specifies the tag to be used for NIC creation.
To construct, see NOTES section for UPDATENICTAG properties and create a hash table.

```yaml
Type: IVMwareCbtEnableMigrationInputTargetNicTags
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UpdateNicTagOperation
Specifies update NIC tag operation.

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

### -UpdateDiskTag
Specifies the tag to be used for disk creation.
To construct, see NOTES section for UPDATEDISKTAG properties and create a hash table.

```yaml
Type: IVMwareCbtEnableMigrationInputTargetDiskTags
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UpdateDiskTagOperation
Specifies update disk tag operation.

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

### -TargetBootDiagnosticsStorageAccount
Specifies the storage account to be used for boot diagnostics.

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

### -SubscriptionId
The subscription Id.

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
Specifies the replicating server for which the properties need to be updated.
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

DISKTOUPDATE \<IVMwareCbtUpdateDiskInput\[\]\>: Updates the disk for the Azure VM to be created.
  DiskId \<String\>: The disk Id.
  \[IsOSDisk \<String\>\]: A value indicating whether the disk is the OS disk.
  \[TargetDiskName \<String\>\]: The target disk name.

INPUTOBJECT \<IMigrationItem\>: Specifies the replicating server for which the properties need to be updated.
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

UPDATEDISKTAG \<IVMwareCbtEnableMigrationInputTargetDiskTags\>: Specifies the tag to be used for disk creation.
  \[(Any) \<String\>\]: This indicates any property can be added to this object.

UPDATENICTAG \<IVMwareCbtEnableMigrationInputTargetNicTags\>: Specifies the tag to be used for NIC creation.
  \[(Any) \<String\>\]: This indicates any property can be added to this object.

UPDATEVMTAG \<IVMwareCbtEnableMigrationInputTargetVmtags\>: Specifies the tag to be used for VM creation.
  \[(Any) \<String\>\]: This indicates any property can be added to this object.

## RELATED LINKS

[https://docs.microsoft.com/powershell/module/az.migrate/set-azmigrateserverreplication](https://docs.microsoft.com/powershell/module/az.migrate/set-azmigrateserverreplication)

