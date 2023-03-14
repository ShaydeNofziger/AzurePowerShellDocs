---
external help file: Az.Migrate-help.xml
Module Name: Az.Migrate
online version: https://docs.microsoft.com/powershell/module/az.migrate/new-azmigrateserverreplication
schema: 2.0.0
---

# New-AzMigrateServerReplication

## SYNOPSIS
Starts replication for the specified server.

## SYNTAX

### ByIdDefaultUser (Default)
```
New-AzMigrateServerReplication -LicenseType <String> -TargetResourceGroupId <String> -TargetNetworkId <String>
 -TargetSubnetName <String> -TargetVMName <String> -MachineId <String> -DiskType <String> -OSDiskID <String>
 [-SqlServerLicenseType <String>] [-TestNetworkId <String>] [-TestSubnetName <String>]
 [-ReplicationContainerMapping <String>] [-VMWarerunasaccountID <String>] [-TargetVMSize <String>]
 [-PerformAutoResync <String>] [-TargetAvailabilitySet <String>] [-TargetAvailabilityZone <String>]
 [-VMTag <IVMwareCbtEnableMigrationInputTargetVmtags>] [-NicTag <IVMwareCbtEnableMigrationInputTargetNicTags>]
 [-DiskTag <IVMwareCbtEnableMigrationInputTargetDiskTags>] [-Tag <Hashtable>]
 [-TargetBootDiagnosticsStorageAccount <String>] [-DiskEncryptionSetID <String>] [-SubscriptionId <String>]
 [-DefaultProfile <PSObject>] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] [<CommonParameters>]
```

### ByIdPowerUser
```
New-AzMigrateServerReplication -LicenseType <String> -TargetResourceGroupId <String> -TargetNetworkId <String>
 -TargetSubnetName <String> -TargetVMName <String> -MachineId <String> [-SqlServerLicenseType <String>]
 [-TestNetworkId <String>] [-TestSubnetName <String>] [-ReplicationContainerMapping <String>]
 [-VMWarerunasaccountID <String>] [-TargetVMSize <String>] [-PerformAutoResync <String>]
 [-TargetAvailabilitySet <String>] [-TargetAvailabilityZone <String>]
 [-VMTag <IVMwareCbtEnableMigrationInputTargetVmtags>] [-NicTag <IVMwareCbtEnableMigrationInputTargetNicTags>]
 [-DiskTag <IVMwareCbtEnableMigrationInputTargetDiskTags>] [-Tag <Hashtable>]
 [-TargetBootDiagnosticsStorageAccount <String>] [-SubscriptionId <String>]
 -DiskToInclude <IVMwareCbtDiskInput[]> [-DefaultProfile <PSObject>] [-Break]
 [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>]
 [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [<CommonParameters>]
```

### ByInputObjectDefaultUser
```
New-AzMigrateServerReplication -LicenseType <String> -TargetResourceGroupId <String> -TargetNetworkId <String>
 -TargetSubnetName <String> -TargetVMName <String> -DiskType <String> -OSDiskID <String>
 [-SqlServerLicenseType <String>] [-TestNetworkId <String>] [-TestSubnetName <String>]
 [-ReplicationContainerMapping <String>] [-VMWarerunasaccountID <String>] [-TargetVMSize <String>]
 [-PerformAutoResync <String>] [-TargetAvailabilitySet <String>] [-TargetAvailabilityZone <String>]
 [-VMTag <IVMwareCbtEnableMigrationInputTargetVmtags>] [-NicTag <IVMwareCbtEnableMigrationInputTargetNicTags>]
 [-DiskTag <IVMwareCbtEnableMigrationInputTargetDiskTags>] [-Tag <Hashtable>]
 [-TargetBootDiagnosticsStorageAccount <String>] [-DiskEncryptionSetID <String>] [-SubscriptionId <String>]
 -InputObject <IVMwareMachine> [-DefaultProfile <PSObject>] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] [<CommonParameters>]
```

### ByInputObjectPowerUser
```
New-AzMigrateServerReplication -LicenseType <String> -TargetResourceGroupId <String> -TargetNetworkId <String>
 -TargetSubnetName <String> -TargetVMName <String> [-SqlServerLicenseType <String>] [-TestNetworkId <String>]
 [-TestSubnetName <String>] [-ReplicationContainerMapping <String>] [-VMWarerunasaccountID <String>]
 [-TargetVMSize <String>] [-PerformAutoResync <String>] [-TargetAvailabilitySet <String>]
 [-TargetAvailabilityZone <String>] [-VMTag <IVMwareCbtEnableMigrationInputTargetVmtags>]
 [-NicTag <IVMwareCbtEnableMigrationInputTargetNicTags>]
 [-DiskTag <IVMwareCbtEnableMigrationInputTargetDiskTags>] [-Tag <Hashtable>]
 [-TargetBootDiagnosticsStorageAccount <String>] [-SubscriptionId <String>]
 -DiskToInclude <IVMwareCbtDiskInput[]> -InputObject <IVMwareMachine> [-DefaultProfile <PSObject>] [-Break]
 [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>]
 [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [<CommonParameters>]
```

## DESCRIPTION
The New-AzMigrateServerReplication cmdlet starts the replication for a particular discovered server in the Azure Migrate project.

## EXAMPLES

### EXAMPLE 1
```
New-AzMigrateServerReplication -MachineId "/subscriptions/xxx-xxx-xxx4/resourceGroups/azmigratepwshtestasr13072020/providers/Microsoft.OffAzure/VMwareSites/AzMigratePWSHTc8d1site/machines/bcdr-vcenter-fareast-corp-micro-cfcc5a24-a40e-56b9-a6af-e206c9ca4f93_50063baa-9806-d6d6-7e09-c0ae87309b4f" -LicenseType NoLicenseType -TargetResourceGroupId "/subscriptions/xxx-xxx-xxx/resourceGroups/AzMigratePWSHtargetRG" -TargetNetworkId  "/subscriptions/xxx-xxx-xxx/resourceGroups/AzMigratePWSHtargetRG/providers/Microsoft.Network/virtualNetworks/AzMigrateTargetNetwork" -TargetSubnetName default -TargetVMName "prsadhu-TestVM" -DiskType "Standard_LRS" -OSDiskID "6000C299-343d-7bcd-c05e-a94bd63316dd"
```

### EXAMPLE 2
```
$OSDisk = New-AzMigrateDiskMapping -DiskID '6000C299-343d-7bcd-c05e-a94bd63316dd' -DiskType 'Standard_LRS' -IsOSDisk 'true'
$DataDisk = New-AzMigrateDiskMapping -DiskID '7000C299-343d-7bcd-c05e-a94bd63316dd' -DiskType 'Standard_LRS' -IsOSDisk 'false'
$DisksToInclude += $OSDisk
$DisksToInclude += $DataDisk
New-AzMigrateServerReplication -MachineId "/subscriptions/xxx-xxx-xxx/resourceGroups/azmigratepwshtestasr13072020/providers/Microsoft.OffAzure/VMwareSites/AzMigratePWSHTc8d1site/machines/bcdr-vcenter-fareast-corp-micro-cfcc5a24-a40e-56b9-a6af-e206c9ca4f93_50063baa-9806-d6d6-7e09-c0ae87309b4f" -LicenseType NoLicenseType -TargetResourceGroupId "/subscriptions/xxx-xxx-xxx/resourceGroups/AzMigratePWSHtargetRG" -TargetNetworkId  "/subscriptions/xxx-xxx-xxx/resourceGroups/AzMigratePWSHtargetRG/providers/Microsoft.Network/virtualNetworks/AzMigrateTargetNetwork" -TargetSubnetName default -TargetVMName "prsadhu-TestVM" -DiskToInclude $DisksToInclude -PerformAutoResync true
```

## PARAMETERS

### -LicenseType
Specifies if Azure Hybrid benefit is applicable for the source server to be migrated.

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

### -TargetResourceGroupId
Specifies the Resource Group id within the destination Azure subscription to which the server needs to be migrated.

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

### -TargetNetworkId
Specifies the Virtual Network id within the destination Azure subscription to which the server needs to be migrated.

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

### -TargetSubnetName
Specifies the Subnet name within the destination Virtual Network to which the server needs to be migrated.

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

### -TargetVMName
Specifies the name of the Azure VM to be created.

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

### -MachineId
Specifies the machine ID of the discovered server to be migrated.

```yaml
Type: String
Parameter Sets: ByIdDefaultUser, ByIdPowerUser
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DiskType
Specifies the type of disks to be used for the Azure VM.

```yaml
Type: String
Parameter Sets: ByIdDefaultUser, ByInputObjectDefaultUser
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -OSDiskID
Specifies the Operating System disk for the source server to be migrated.

```yaml
Type: String
Parameter Sets: ByIdDefaultUser, ByInputObjectDefaultUser
Aliases:

Required: True
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

### -TestNetworkId
Specifies the Virtual Network id within the destination Azure subscription to which the server needs to be test migrated.

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

### -TestSubnetName
Specifies the Subnet name within the destination Virtual Network to which the server needs to be test migrated.

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

### -ReplicationContainerMapping
Mapping.

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

### -VMWarerunasaccountID
Account id.

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
Specifies the SKU of the Azure VM to be created.

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

### -PerformAutoResync
Specifies if replication be auto-repaired in case change tracking is lost for the source server under replication.

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

### -TargetAvailabilitySet
Specifies the Availability Set to be used for VM creationSpecifies the Availability Set to be used for VM creation.

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

### -VMTag
Specifies the tag to be used for VM creation.
To construct, see NOTES section for VMTAG properties and create a hash table.

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

### -NicTag
Specifies the tag to be used for NIC creation.
To construct, see NOTES section for NICTAG properties and create a hash table.

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

### -DiskTag
Specifies the tag to be used for disk creation.
To construct, see NOTES section for DISKTAG properties and create a hash table.

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

### -Tag
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

### -DiskEncryptionSetID
Specifies the disk encyption set to be used.

```yaml
Type: String
Parameter Sets: ByIdDefaultUser, ByInputObjectDefaultUser
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

### -DiskToInclude
Specifies the disks on the source server to be included for replication.
To construct, see NOTES section for DISKTOINCLUDE properties and create a hash table.

```yaml
Type: IVMwareCbtDiskInput[]
Parameter Sets: ByIdPowerUser, ByInputObjectPowerUser
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -InputObject
Specifies the discovered server to be migrated.
The server object can be retrieved using the Get-AzMigrateServer cmdlet.
To construct, see NOTES section for INPUTOBJECT properties and create a hash table.

```yaml
Type: IVMwareMachine
Parameter Sets: ByInputObjectDefaultUser, ByInputObjectPowerUser
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

DISKTAG \<IVMwareCbtEnableMigrationInputTargetDiskTags\>: Specifies the tag to be used for disk creation.
  \[(Any) \<String\>\]: This indicates any property can be added to this object.

DISKTOINCLUDE \<IVMwareCbtDiskInput\[\]\>: Specifies the disks on the source server to be included for replication.
  DiskId \<String\>: The disk Id.
  IsOSDisk \<String\>: A value indicating whether the disk is the OS disk.
  LogStorageAccountId \<String\>: The log storage account ARM Id.
  LogStorageAccountSasSecretName \<String\>: The key vault secret name of the log storage account.
  \[DiskEncryptionSetId \<String\>\]: The DiskEncryptionSet ARM Id.
  \[DiskType \<DiskAccountType?\>\]: The disk type.

INPUTOBJECT \<IVMwareMachine\>: Specifies the discovered server to be migrated.
The server object can be retrieved using the Get-AzMigrateServer cmdlet.
  \[GuestOSDetailOstype \<String\>\]: Type of the operating system.

NICTAG \<IVMwareCbtEnableMigrationInputTargetNicTags\>: Specifies the tag to be used for NIC creation.
  \[(Any) \<String\>\]: This indicates any property can be added to this object.

VMTAG \<IVMwareCbtEnableMigrationInputTargetVmtags\>: Specifies the tag to be used for VM creation.
  \[(Any) \<String\>\]: This indicates any property can be added to this object.

## RELATED LINKS

[https://docs.microsoft.com/powershell/module/az.migrate/new-azmigrateserverreplication](https://docs.microsoft.com/powershell/module/az.migrate/new-azmigrateserverreplication)

