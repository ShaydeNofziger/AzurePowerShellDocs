---
external help file: Az.DataProtection-help.xml
Module Name: Az.DataProtection
online version: https://learn.microsoft.com/powershell/module/az.dataprotection/set-azdataprotectionmsipermission
schema: 2.0.0
---

# Set-AzDataProtectionMSIPermission

## SYNOPSIS
Grants required permissions to the backup vault to configure backup

## SYNTAX

```
Set-AzDataProtectionMSIPermission -BackupInstance <IBackupInstanceResource> -VaultResourceGroup <String>
 -VaultName <String> -PermissionsScope <String> [-KeyVaultId <String>] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

## DESCRIPTION
Grants required permissions to the backup vault to configure backup

## EXAMPLES

### EXAMPLE 1
```
Set-AzDataProtectionMSIPermission -BackupInstance $instance -VaultResourceGroup "VaultRG" -VaultName "Vaultname" -PermissionsScope "ResourceGroup"
```

### EXAMPLE 2
```
Set-AzDataProtectionMSIPermission -BackupInstance $instance -VaultResourceGroup "VaultRG" -VaultName "Vaultname" -PermissionsScope "Subscription"
```

### EXAMPLE 3
```
Set-AzDataProtectionMSIPermission -KeyVaultId "/subscriptions/xxxxxxxx-xxxx-xxxx-xxxxxxxxxxxx/resourcegroups/Sqlrg/providers/Microsoft.KeyVault/vaults/testkeyvault"  -BackupInstance $instance -VaultResourceGroup "VaultRG" -VaultName "Vaultname" -PermissionsScope "Resource"
```

## PARAMETERS

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

### -VaultResourceGroup
Resource group of the backup vault

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

### -PermissionsScope
Scope at which the permissions need to be granted

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

### -KeyVaultId
ID of the keyvault

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

### System.Object
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

[https://learn.microsoft.com/powershell/module/az.dataprotection/set-azdataprotectionmsipermission](https://learn.microsoft.com/powershell/module/az.dataprotection/set-azdataprotectionmsipermission)

