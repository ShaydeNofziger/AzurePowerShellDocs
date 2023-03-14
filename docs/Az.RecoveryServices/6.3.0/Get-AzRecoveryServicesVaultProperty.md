---
external help file: Microsoft.Azure.PowerShell.Cmdlets.RecoveryServices.Backup.dll-Help.xml
Module Name: Az.RecoveryServices
online version: https://learn.microsoft.com/powershell/module/az.recoveryservices/get-azrecoveryservicesvaultproperty
schema: 2.0.0
---

# Get-AzRecoveryServicesVaultProperty

## SYNOPSIS
Returns the properties of a Recovery Services Vault.

## SYNTAX

```
Get-AzRecoveryServicesVaultProperty [-VaultId <String>] [-DefaultProfile <IAzureContextContainer>]
 [<CommonParameters>]
```

## DESCRIPTION
The Get-AzRecoveryServicesVaultProperty cmdlet returns the properties of a Recovery services vault.

## EXAMPLES

### Example 1: Get Properties of a vault
```
$vault = Get-AzRecoveryServicesVault -ResourceGroupName "resourceGroup" -Name "vaultName"
$vaultProperty = Get-AzRecoveryServicesVaultProperty -VaultId $vault.Id
$vaultProperty.encryptionProperties
```

The first command gets a Vault object and then stores it in the $vault variable.
The second command Gets the Vault Properties.
Next we access the encryptionProperties of the vault.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### System.String
## OUTPUTS

### Microsoft.Azure.Management.RecoveryServices.Backup.Models.BackupResourceVaultConfigResource
## NOTES

## RELATED LINKS

[Get-AzRecoveryServicesVault]()

[Set-AzRecoveryServicesVaultProperty]()

