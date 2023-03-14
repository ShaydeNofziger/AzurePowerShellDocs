---
external help file: Az.DataProtection-help.xml
Module Name: Az.DataProtection
online version: https://learn.microsoft.com/powershell/module/az.dataprotection/test-azdataprotectionbackupinstancereadiness
schema: 2.0.0
---

# Test-AzDataProtectionBackupInstanceReadiness

## SYNOPSIS
Validate whether adhoc backup will be successful or not

## SYNTAX

```
Test-AzDataProtectionBackupInstanceReadiness -ResourceGroupName <String> -VaultName <String>
 [-SubscriptionId <String>] -BackupInstance <IBackupInstance> [-DefaultProfile <PSObject>] [-AsJob] [-Break]
 [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-NoWait] [-Proxy <Uri>]
 [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
Validate whether adhoc backup will be successful or not

## EXAMPLES

### EXAMPLE 1
```
$vault = Get-AzDataProtectionBackupVault -ResourceGroupName "resourceGroupName" -VaultName "vaultName"
$diskBackupPolicy = Get-AzDataProtectionBackupPolicy -ResourceGroupName "resourceGroupName" -VaultName $vault.Name -Name "diskBackupPolicy"
$diskId = "/subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/resourcegroups/rgName/providers/Microsoft.Compute/disks/test-disk" 
$snapshotRG = "/subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/resourceGroups/rgName"
$instance = Initialize-AzDataProtectionBackupInstance -SnapshotResourceGroupId $Snapshotrg -DatasourceType AzureDisk -DatasourceLocation $vault.Location -PolicyId $diskBackupPolicy[0].Id -DatasourceId $diskId 
Test-AzDataProtectionBackupInstanceReadiness -ResourceGroupName "resourceGroupName" -VaultName $vault.Name -BackupInstance  $instance[0].Property
```

## PARAMETERS

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

### -VaultName
The name of the backup vault.

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
The value must be an UUID.

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

### -BackupInstance
Backup Instance
To construct, see NOTES section for BACKUPINSTANCE properties and create a hash table.

```yaml
Type: IBackupInstance
Parameter Sets: (All)
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

### Microsoft.Azure.PowerShell.Cmdlets.DataProtection.Models.Api20221201.IOperationJobExtendedInfo
## NOTES
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties.
For information on hash tables, run Get-Help about_Hash_Tables.

BACKUPINSTANCE \<IBackupInstance\>: Backup Instance
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

## RELATED LINKS

[https://learn.microsoft.com/powershell/module/az.dataprotection/test-azdataprotectionbackupinstancereadiness](https://learn.microsoft.com/powershell/module/az.dataprotection/test-azdataprotectionbackupinstancereadiness)

