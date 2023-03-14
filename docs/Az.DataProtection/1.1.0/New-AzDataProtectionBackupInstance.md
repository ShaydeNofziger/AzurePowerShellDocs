---
external help file: Az.DataProtection-help.xml
Module Name: Az.DataProtection
online version: https://learn.microsoft.com/powershell/module/az.dataprotection/new-azdataprotectionbackupinstance
schema: 2.0.0
---

# New-AzDataProtectionBackupInstance

## SYNOPSIS
Configures Backup for supported azure resources

## SYNTAX

```
New-AzDataProtectionBackupInstance -ResourceGroupName <String> -VaultName <String>
 -BackupInstance <IBackupInstanceResource> [-SubscriptionId <String>] [-Tag <Hashtable>]
 [-DefaultProfile <PSObject>] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>] [-AsJob] [-NoWait] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
Configures Backup for supported azure resources

## EXAMPLES

### EXAMPLE 1
```
$sub = "xxxx-xxx-xx"
$DiskId = "/subscriptions/{subscription}/resourceGroups/{resourcegroup}/providers/Microsoft.Compute/disks/{diskname}"
$policy = Get-AzDataProtectionBackupPolicy -SubscriptionId $sub -ResourceGroupName sarath-rg -VaultName sarath-vault -Name "MyPolicy"
$instance = Initialize-AzDataProtectionBackupInstance -DatasourceType AzureDisk -DatasourceLocation $vault.Location -PolicyId $policy.Id -DatasourceId $DiskId 
$instance.Property.PolicyInfo.PolicyParameter.DataStoreParametersList[0].ResourceGroupId = "/subscriptions/{subscription}/resourceGroups/{resourceGroup}"
New-AzDataProtectionBackupInstance -SubscriptionId $sub -ResourceGroupName sarath-rg -VaultName sarath-vault -BackupInstance $instance
```

### EXAMPLE 2
```
$sub = "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"
$dataSourceId = "/subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/resourceGroups/ResourceGroupName/providers/Microsoft.DBforPostgreSQL/servers/OssServerName/databases/DBName"
$secretURI = "https://oss-keyvault.vault.azure.net/secrets/oss-secret"
$vault = Get-AzDataProtectionBackupVault -SubscriptionId $sub -ResourceGroupName "ResourceGroupName"  -VaultName  $vaultName
$policy = Get-AzDataProtectionBackupPolicy -SubscriptionId $sub -ResourceGroupName "ResourceGroupName" -VaultName "vaultName" -Name "MyPolicy"
$instance = Initialize-AzDataProtectionBackupInstance -DatasourceType AzureDatabaseForPostgreSQL -DatasourceLocation $vault.Location -PolicyId $policy.Id -DatasourceId $dataSourceId -SecretStoreURI $secretURI -SecretStoreType AzureKeyVault
New-AzDataProtectionBackupInstance -SubscriptionId $sub -ResourceGroupName "ResourceGroupName" -VaultName "vaultName" -BackupInstance $instance
```

## PARAMETERS

### -ResourceGroupName
Resource Group of the backup vault

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
Name of the backup vault

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

### -BackupInstance
Backup instance request object which will be used to configure backup
To construct, see NOTES section for BACKUPINSTANCE properties and create a hash table.

```yaml
Type: IBackupInstanceResource
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SubscriptionId
Subscription Id of the vault

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

### -Tag
Resource tags

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
{{ Fill DefaultProfile Description }}

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
{{ Fill Break Description }}

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

### -AsJob
{{ Fill AsJob Description }}

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

### -NoWait
{{ Fill NoWait Description }}

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

## OUTPUTS

## NOTES
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties.
For information on hash tables, run Get-Help about_Hash_Tables.

BACKUPINSTANCE \<IBackupInstanceResource\>: Backup instance request object which will be used to configure backup
  \[Tag \<IDppProxyResourceTags\>\]: Proxy Resource tags.
    \[(Any) \<String\>\]: This indicates any property can be added to this object.
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

## RELATED LINKS

[https://learn.microsoft.com/powershell/module/az.dataprotection/new-azdataprotectionbackupinstance](https://learn.microsoft.com/powershell/module/az.dataprotection/new-azdataprotectionbackupinstance)

