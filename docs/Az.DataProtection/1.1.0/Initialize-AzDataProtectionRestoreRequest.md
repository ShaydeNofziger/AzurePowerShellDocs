---
external help file: Az.DataProtection-help.xml
Module Name: Az.DataProtection
online version: https://learn.microsoft.com/powershell/module/az.dataprotection/initialize-azdataprotectionrestorerequest
schema: 2.0.0
---

# Initialize-AzDataProtectionRestoreRequest

## SYNOPSIS
Initializes Restore Request object for triggering restore on a protected backup instance.

## SYNTAX

### AlternateLocationFullRecovery (Default)
```
Initialize-AzDataProtectionRestoreRequest -DatasourceType <DatasourceTypes> -SourceDataStore <DataStoreType>
 -RestoreLocation <String> -RestoreType <RestoreTargetType> [-RecoveryPoint <String>]
 [-RehydrationDuration <String>] [-RehydrationPriority <String>] [-SecretStoreURI <String>]
 [-SecretStoreType <SecretStoreTypes>] [-PointInTime <DateTime>] -TargetResourceId <String>
 [<CommonParameters>]
```

### RestoreAsFiles
```
Initialize-AzDataProtectionRestoreRequest -DatasourceType <DatasourceTypes> -SourceDataStore <DataStoreType>
 -RestoreLocation <String> -RestoreType <RestoreTargetType> -TargetContainerURI <String>
 -FileNamePrefix <String> [-RecoveryPoint <String>] [-RehydrationDuration <String>]
 [-RehydrationPriority <String>] [-SecretStoreURI <String>] [-SecretStoreType <SecretStoreTypes>]
 [<CommonParameters>]
```

### OriginalLocationFullRecovery
```
Initialize-AzDataProtectionRestoreRequest -DatasourceType <DatasourceTypes> -SourceDataStore <DataStoreType>
 -RestoreLocation <String> -RestoreType <RestoreTargetType> [-RecoveryPoint <String>]
 [-RehydrationDuration <String>] [-RehydrationPriority <String>] [-SecretStoreURI <String>]
 [-SecretStoreType <SecretStoreTypes>] -BackupInstance <BackupInstanceResource> [-PointInTime <DateTime>]
 [<CommonParameters>]
```

### OriginalLocationILR
```
Initialize-AzDataProtectionRestoreRequest -DatasourceType <DatasourceTypes> -SourceDataStore <DataStoreType>
 -RestoreLocation <String> -RestoreType <RestoreTargetType> [-RecoveryPoint <String>]
 [-RehydrationDuration <String>] [-RehydrationPriority <String>] [-SecretStoreURI <String>]
 [-SecretStoreType <SecretStoreTypes>] -BackupInstance <BackupInstanceResource> [-ItemLevelRecovery]
 [-PointInTime <DateTime>] [-ContainersList <String[]>] [-FromPrefixPattern <String[]>]
 [-ToPrefixPattern <String[]>] [<CommonParameters>]
```

## DESCRIPTION
Initializes Restore Request object for triggering restore on a protected backup instance.

## EXAMPLES

### EXAMPLE 1
```
$instance = Get-AzDataProtectionBackupInstance -SubscriptionId "xxxx-xxx-xxx" -ResourceGroupName "sarath-rg" -VaultName "sarath-vault"
$rp = Get-AzDataProtectionRecoveryPoint -SubscriptionId "xxx-xxx-xxx" -ResourceGroupName "sarath-rg" -VaultName "sarath-vault" -BackupInstanceName $instance.Name
Initialize-AzDataProtectionRestoreRequest -DatasourceType AzureDisk -SourceDataStore OperationalStore -RestoreLocation "westus"  -RestoreType AlternateLocation -TargetResourceId "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroup}/providers/Microsoft.Compute/disks/{DiskName}" -RecoveryPoint "892e5c5014dc4a96807d22924f5745c9"
```

### EXAMPLE 2
```
$startTime = (Get-Date).AddDays(-30).ToString("yyyy-MM-ddTHH:mm:ss.0000000Z")
$endTime = (Get-Date).AddDays(0).ToString("yyyy-MM-ddTHH:mm:ss.0000000Z")
$instance = Get-AzDataProtectionBackupInstance -SubscriptionId "xxxx-xxx-xxx" -ResourceGroupName "rgName" -VaultName "vaultName"
$pointInTimeRange = Find-AzDataProtectionRestorableTimeRange -BackupInstanceName $instance[0].BackupInstanceName -ResourceGroupName "rgName" -SubscriptionId "subscriptionId"  -VaultName "vaultName" -SourceDataStoreType OperationalStore -StartTime $startTime -EndTime $endTime
Initialize-AzDataProtectionRestoreRequest -DatasourceType AzureBlob -SourceDataStore OperationalStore -RestoreLocation $vault.Location -RestoreType OriginalLocation -BackupInstance $instance[0] -PointInTime (Get-Date -Date $pointInTimeRange.RestorableTimeRange.EndTime)
```

### EXAMPLE 3
```
$startTime = (Get-Date).AddDays(-30).ToString("yyyy-MM-ddTHH:mm:ss.0000000Z")
$endTime = (Get-Date).AddDays(0).ToString("yyyy-MM-ddTHH:mm:ss.0000000Z")
$instance = Get-AzDataProtectionBackupInstance -SubscriptionId "xxxx-xxx-xxx" -ResourceGroupName "rgName" -VaultName "vaultName"
$pointInTimeRange = Find-AzDataProtectionRestorableTimeRange -BackupInstanceName $instance[0].BackupInstanceName -ResourceGroupName "rgName" -SubscriptionId "subscriptionId"  -VaultName "vaultName" -SourceDataStoreType OperationalStore -StartTime $startTime -EndTime $endTime
Initialize-AzDataProtectionRestoreRequest -DatasourceType AzureBlob -SourceDataStore OperationalStore -RestoreLocation $vault.Location -RestoreType OriginalLocation -BackupInstance $instances[0] -PointInTime (Get-Date).AddDays(-1) -ItemLevelRecovery -ContainersList "containerName1","containerName2"
```

### EXAMPLE 4
```
$startTime = (Get-Date).AddDays(-30).ToString("yyyy-MM-ddTHH:mm:ss.0000000Z")
$endTime = (Get-Date).AddDays(0).ToString("yyyy-MM-ddTHH:mm:ss.0000000Z")
$instance = Get-AzDataProtectionBackupInstance -SubscriptionId "xxxx-xxx-xxx" -ResourceGroupName "rgName" -VaultName "vaultName"
$pointInTimeRange = Find-AzDataProtectionRestorableTimeRange -BackupInstanceName $instance[0].BackupInstanceName -ResourceGroupName "rgName" -SubscriptionId "subscriptionId"  -VaultName "vaultName" -SourceDataStoreType OperationalStore -StartTime $startTime -EndTime $endTime
Initialize-AzDataProtectionRestoreRequest -DatasourceType AzureBlob -SourceDataStore OperationalStore -RestoreLocation $vault.Location -RestoreType OriginalLocation -BackupInstance $instances[0] -PointInTime (Get-Date).AddDays(-1) -ItemLevelRecovery -FromPrefixPattern "container1/aaa","container1/ccc", "container2/aab", "container3" -ToPrefixPattern "container1/bbb","container1/ddd", "container2/abc", "container3-0"
```

## PARAMETERS

### -DatasourceType
Datasource Type

```yaml
Type: DatasourceTypes
Parameter Sets: (All)
Aliases:
Accepted values: AzureDisk, AzureBlob, AzureDatabaseForPostgreSQL

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SourceDataStore
DataStore Type of the Recovery point

```yaml
Type: DataStoreType
Parameter Sets: (All)
Aliases:
Accepted values: ArchiveStore, OperationalStore, VaultStore

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RestoreLocation
Target Restore Location

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

### -RestoreType
Restore Target Type

```yaml
Type: RestoreTargetType
Parameter Sets: (All)
Aliases:
Accepted values: AlternateLocation, OriginalLocation, RestoreAsFiles

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TargetContainerURI
Target storage account container Id to which backup data will be restored as files.

```yaml
Type: String
Parameter Sets: RestoreAsFiles
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -FileNamePrefix
File name to be prefixed to the restored backup data.

```yaml
Type: String
Parameter Sets: RestoreAsFiles
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RecoveryPoint
Id of the recovery point to be restored.

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

### -RehydrationDuration
Rehydration duration for the archived recovery point to stay rehydrated, default value for rehydration duration is 15.

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

### -RehydrationPriority
Rehydration priority for archived recovery point.
This parameter is mandatory for rehydrate restore of archived points.

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

### -SecretStoreURI
Secret uri for secret store authentication of data source.
This parameter is only supported for AzureDatabaseForPostgreSQL currently.

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

### -SecretStoreType
Secret store type for secret store authentication of data source.
This parameter is only supported for AzureDatabaseForPostgreSQL currently.

```yaml
Type: SecretStoreTypes
Parameter Sets: (All)
Aliases:
Accepted values: AzureKeyVault

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -BackupInstance
Backup Instance object to trigger original localtion restore.
To construct, see NOTES section for BACKUPINSTANCE properties and create a hash table.

```yaml
Type: BackupInstanceResource
Parameter Sets: OriginalLocationFullRecovery, OriginalLocationILR
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ItemLevelRecovery
Switch Parameter to enable item level recovery.

```yaml
Type: SwitchParameter
Parameter Sets: OriginalLocationILR
Aliases:

Required: True
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -PointInTime
Point In Time for restore.

```yaml
Type: DateTime
Parameter Sets: AlternateLocationFullRecovery, OriginalLocationFullRecovery, OriginalLocationILR
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ContainersList
Container names for Item Level Recovery.

```yaml
Type: String[]
Parameter Sets: OriginalLocationILR
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -FromPrefixPattern
Minimum matching value for Item Level Recovery.

```yaml
Type: String[]
Parameter Sets: OriginalLocationILR
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ToPrefixPattern
Maximum matching value for Item Level Recovery.

```yaml
Type: String[]
Parameter Sets: OriginalLocationILR
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TargetResourceId
Target resource Id to which backup data will be restored.

```yaml
Type: String
Parameter Sets: AlternateLocationFullRecovery
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Microsoft.Azure.PowerShell.Cmdlets.DataProtection.Models.Api20221201.IAzureBackupRestoreRequest
## NOTES
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties.
For information on hash tables, run Get-Help about_Hash_Tables.

BACKUPINSTANCE \<BackupInstanceResource\>: Backup Instance object to trigger original localtion restore.
  \[Property \<IBackupInstance\>\]: BackupInstanceResource properties
    DataSourceInfo \<IDatasource\>: Gets or sets the data source information.
      ResourceId \<String\>: Full ARM ID of the resource.
For azure resources, this is ARM ID.
For non azure resources, this will be the ID created by backup service via Fabric/Vault.
      \[ObjectType \<String\>\]: Type of Datasource object, used to initialize the right inherited type
      \[ResourceLocation \<String\>\]: Location of datasource.
      \[ResourceName \<String\>\]: Unique identifier of the resource in the context of parent.
      \[ResourceType \<String\>\]: Resource Type of Datasource.
      \[ResourceUri \<String\>\]: Uri of the resource.
      \[Type \<String\>\]: DatasourceType of the resource.
    ObjectType \<String\>: 
    PolicyInfo \<IPolicyInfo\>: Gets or sets the policy information.
      PolicyId \<String\>: 
      \[PolicyParameter \<IPolicyParameters\>\]: Policy parameters for the backup instance
        \[DataStoreParametersList \<IDataStoreParameters\[\]\>\]: Gets or sets the DataStore Parameters
          DataStoreType \<DataStoreTypes\>: type of datastore; Operational/Vault/Archive
          ObjectType \<String\>: Type of the specific object - used for deserializing
    \[DataSourceSetInfo \<IDatasourceSet\>\]: Gets or sets the data source set information.
      ResourceId \<String\>: Full ARM ID of the resource.
For azure resources, this is ARM ID.
For non azure resources, this will be the ID created by backup service via Fabric/Vault.
      \[DatasourceType \<String\>\]: DatasourceType of the resource.
      \[ObjectType \<String\>\]: Type of Datasource object, used to initialize the right inherited type
      \[ResourceLocation \<String\>\]: Location of datasource.
      \[ResourceName \<String\>\]: Unique identifier of the resource in the context of parent.
      \[ResourceType \<String\>\]: Resource Type of Datasource.
      \[ResourceUri \<String\>\]: Uri of the resource.
    \[DatasourceAuthCredentials \<IAuthCredentials\>\]: Credentials to use to authenticate with data source provider.
      ObjectType \<String\>: Type of the specific object - used for deserializing
    \[FriendlyName \<String\>\]: Gets or sets the Backup Instance friendly name.
    \[ValidationType \<ValidationType?\>\]: Specifies the type of validation.
In case of DeepValidation, all validations from /validateForBackup API will run again.
  \[Tag \<IDppProxyResourceTags\>\]: Proxy Resource tags.
    \[(Any) \<String\>\]: This indicates any property can be added to this object.

## RELATED LINKS

[https://learn.microsoft.com/powershell/module/az.dataprotection/initialize-azdataprotectionrestorerequest](https://learn.microsoft.com/powershell/module/az.dataprotection/initialize-azdataprotectionrestorerequest)

