﻿---
external help file: Microsoft.Azure.PowerShell.Cmdlets.RecoveryServices.Backup.dll-Help.xml
Module Name: Az.RecoveryServices
online version: https://learn.microsoft.com/powershell/module/az.recoveryservices/set-azrecoveryservicesvaultproperty
schema: 2.0.0
---

# Set-AzRecoveryServicesVaultProperty

## SYNOPSIS
Updates properties of a Vault.

## SYNTAX

### AzureRSVaultSoftDelteParameterSet (Default)
```
Set-AzRecoveryServicesVaultProperty [-SoftDeleteFeatureState <String>]
 [-DisableHybridBackupSecurityFeature <Boolean>] [-VaultId <String>] [-DefaultProfile <IAzureContextContainer>]
 [-Token <String>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### AzureRSVaultCMKParameterSet
```
Set-AzRecoveryServicesVaultProperty [-VaultId <String>] [-DefaultProfile <IAzureContextContainer>]
 -EncryptionKeyId <String> [-KeyVaultSubscriptionId <String>] [-InfrastructureEncryption]
 [-UseSystemAssignedIdentity <Boolean>] [-UserAssignedIdentity <String>] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

## DESCRIPTION
The Set-AzRecoveryServicesVaultProperty cmdlet updates properties of a Recovery services vault.
This cmdlet can be used to enable/disable soft delete or set CMK encryption for a vault with two different parameter sets.
SoftDeleteFeatureState property of a vault can be disabled only if there are no registered containers in the vault.
InfrastructurEncryption can only be set the first time a user updates the CMK vault.

## EXAMPLES

### Example 1: Update SoftDeleteFeatureState of a vault
```
$vault = Get-AzRecoveryServicesVault -ResourceGroupName "rgName" -Name "vaultName"
$props = Set-AzRecoveryServicesVaultProperty -VaultId $vault.Id -SoftDeleteFeatureState Enable
```

The first command gets a Vault object and then stores it in the $vault variable.
The second command Updates the SoftDeleteFeatureState property of the vault to "Enabled" state.

### Example 2: Update CMK encryption of a vault to use SystemAssigned MSIdentity
```
$vault = Get-AzRecoveryServicesVault -ResourceGroupName "rgName" -Name "vaultName"
$keyVault = Get-AzKeyVault -VaultName "keyVaultName" -ResourceGroupName "RGName" 
$key = Get-AzKeyVaultKey -VaultName "keyVaultName" -Name "keyName" 
Set-AzRecoveryServicesVaultProperty -EncryptionKeyId $key.ID -InfrastructureEncryption -VaultId $vault.ID -UseSystemAssignedIdentity $true
```

First cmdlet gets the RSVault to update encryption properties.
Second cmdlet gets the azure key vault.
Third cmdlet gets the key from the key vault.
Fourth cmdlet updates the customer managed encryption key within the RSVault to be accessed via SystemAssigned identity.
Use -InfrastructureEncryption param to enable infrastructure encryption for the first time update.

### Example 3: Update CMK encryption of a vault to use userAssigned MSIdentity
```
$vault = Get-AzRecoveryServicesVault -ResourceGroupName "rgName" -Name "vaultName"
$keyVault = Get-AzKeyVault -VaultName "keyVaultName" -ResourceGroupName "RGName" 
$key = Get-AzKeyVaultKey -VaultName "keyVaultName" -Name "keyName" 
Set-AzRecoveryServicesVaultProperty -EncryptionKeyId $key.ID -VaultId $vault.ID -UseSystemAssignedIdentity $false -UserAssignedIdentity $vault.Identity.UserAssignedIdentities.Keys[0]
```

First cmdlet gets the RSVault to update encryption properties.
Second cmdlet gets the azure key vault.
Third cmdlet gets the key from the key vault.
Fourth cmdlet updates the customer managed encryption key within the RSVault to be accessed via UserAssigned identity.

### Example 4: Update HybridBackupSecurityFeature of a vault
```
$vault = Get-AzRecoveryServicesVault -ResourceGroupName "rgName" -Name "vaultName"
$prop = Set-AzRecoveryServicesVaultProperty -VaultId $vault.Id -DisableHybridBackupSecurityFeature $false
```

The first command gets a Vault object and then stores it in the $vault variable.
The second command disables the HybridBackupSecurityFeature of the vault, set $true to enable it again.

## PARAMETERS

### -DefaultProfile
The credentials, account, tenant, and subscription used for communication with azure.

```yaml
Type: IAzureContextContainer
Parameter Sets: (All)
Aliases: AzContext, AzureRmContext, AzureCredential

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DisableHybridBackupSecurityFeature
Optional flag ($true/$false) to disable/enable security setting for hybrid backups against accidental deletes and add additional layer of authentication for critical operations.
Provide $false to enable the security.

```yaml
Type: Boolean
Parameter Sets: AzureRSVaultSoftDelteParameterSet
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -EncryptionKeyId
KeyId of the encryption key to be used for CMK.

```yaml
Type: String
Parameter Sets: AzureRSVaultCMKParameterSet
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -InfrastructureEncryption
Enables infrastructure encryption on this vault.
Infrastructure encryption must be enabled when configuring encryption.

```yaml
Type: SwitchParameter
Parameter Sets: AzureRSVaultCMKParameterSet
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -KeyVaultSubscriptionId
Subscription Id of the Key Vault.

```yaml
Type: String
Parameter Sets: AzureRSVaultCMKParameterSet
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SoftDeleteFeatureState
SoftDeleteFeatureState of the Recovery Services Vault.

```yaml
Type: String
Parameter Sets: AzureRSVaultSoftDelteParameterSet
Aliases:
Accepted values: Enable, Disable

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Token
Auxiliary access token for authenticating critical operation to resource guard subscription

```yaml
Type: String
Parameter Sets: AzureRSVaultSoftDelteParameterSet
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UserAssignedIdentity
ARM Id of UserAssigned Identity to be used for CMK encryption.
Provide this parameter if UseSystemAssignedIdentity is $false.

```yaml
Type: String
Parameter Sets: AzureRSVaultCMKParameterSet
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UseSystemAssignedIdentity
Boolean flag to indicate if SystemAssigned Identity will be used for CMK encryption.
Accepted Vaules: $true, $false

```yaml
Type: Boolean
Parameter Sets: AzureRSVaultCMKParameterSet
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -VaultId
ARM ID of the Recovery Services Vault.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
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
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -WhatIf
Shows what would happen if the cmdlet runs.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: wi

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### System.String
### Microsoft.Azure.Commands.RecoveryServices.Backup.Cmdlets.Models.VaultSoftDeleteFeatureState
## OUTPUTS

### Microsoft.Azure.Management.RecoveryServices.Backup.Models.BackupResourceVaultConfigResource
## NOTES

## RELATED LINKS

[Get-AzRecoveryServicesVault]()

[Get-AzRecoveryServicesVaultProperty]()
