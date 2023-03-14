﻿---
external help file: Microsoft.Azure.PowerShell.Cmdlets.RecoveryServices.Backup.dll-Help.xml
Module Name: Az.RecoveryServices
online version: https://learn.microsoft.com/powershell/module/az.recoveryservices/disable-azrecoveryservicesbackupprotection
schema: 2.0.0
---

# Disable-AzRecoveryServicesBackupProtection

## SYNOPSIS
Disables protection for a Backup-protected item.

## SYNTAX

```
Disable-AzRecoveryServicesBackupProtection [-Item] <ItemBase> [-RemoveRecoveryPoints]
 [-RetainRecoveryPointsAsPerPolicy] [-Force] [-VaultId <String>] [-DefaultProfile <IAzureContextContainer>]
 [-Token <String>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
The Disable-AzRecoveryServicesBackupProtection cmdlet disables protection for an Azure Backup-protected item.
This cmdlet stops regular scheduled backup of an item.
This cmdlet can also delete existing recovery points for the backup item if executed with RemoveRecoveryPoints parameter.
Set the vault context by using the Set-AzRecoveryServicesVaultContext cmdlet before you use the current cmdlet.

## EXAMPLES

### Example 1: Disable Backup protection
```
$Cont = Get-AzRecoveryServicesBackupContainer -ContainerType AzureVM
$PI = Get-AzRecoveryServicesBackupItem -Container $Cont[0] -WorkloadType AzureVM
Disable-AzRecoveryServicesBackupProtection -Item $PI[0]
```

The first command gets an array of backup containers, and then stores it in the $Cont array.
The second command gets the Backup item corresponding to the first container item, and then stores it in the $PI variable.
The last command disables Backup protection for the item in $PI\[0\], but retains the data.

### Example 2
```
Disable-AzRecoveryServicesBackupProtection -Item $PI[0] -RemoveRecoveryPoints -VaultId $vault.ID
```

### Example 3: Disable protection with retain recovery points as per policy
```
$item = Get-AzRecoveryServicesBackupItem -VaultId $suspendVault.ID -BackupManagementType AzureVM -WorkloadType AzureVM
Disable-AzRecoveryServicesBackupProtection -Item $item[0] -RetainRecoveryPointsAsPerPolicy -VaultId $vault.ID -Force
$item = Get-AzRecoveryServicesBackupItem -VaultId $suspendVault.ID -BackupManagementType AzureVM -WorkloadType AzureVM
 $item[0].ProtectionState

BackupsSuspended
```

The first cmdlet fetches the AzureVM backup items for the recovery services vault.
The second cmdlet is used to suspend backup for $item\[0\] of the recovery services vault.
The third and fourth command are used to fetch the updated backup item and its protection state.
To resume protection back, please use Enable-AzRecoveryServicesBackupProtection with parameter -Item.

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

### -Force
Forces the command to run without asking for user confirmation.

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

### -Item
Specifies the Backup item for which this cmdlet disables protection.
To obtain an AzureRmRecoveryServicesBackupItem , use the Get-AzRecoveryServicesBackupItem cmdlet.

```yaml
Type: ItemBase
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -RemoveRecoveryPoints
Indicates that this cmdlet deletes existing recovery points.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -RetainRecoveryPointsAsPerPolicy
If this option is used, all the recovery points for this item will expire as per the retention policy.

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

### -Token
Auxiliary access token for authenticating critical operation to resource guard subscription

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
The cmdlet is not run.

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

### Microsoft.Azure.Commands.RecoveryServices.Backup.Cmdlets.Models.ItemBase
### System.String
## OUTPUTS

### Microsoft.Azure.Commands.RecoveryServices.Backup.Cmdlets.Models.JobBase
## NOTES

## RELATED LINKS

[Enable-AzRecoveryServicesBackupProtection]()

[Get-AzRecoveryServicesBackupContainer]()

[Get-AzRecoveryServicesBackupItem]()
