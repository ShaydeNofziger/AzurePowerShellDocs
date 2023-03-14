---
external help file: Microsoft.Azure.PowerShell.Cmdlets.RecoveryServices.Backup.dll-Help.xml
Module Name: Az.RecoveryServices
online version: https://learn.microsoft.com/powershell/module/az.recoveryservices/unregister-azrecoveryservicesbackupmanagementserver
schema: 2.0.0
---

# Unregister-AzRecoveryServicesBackupManagementServer

## SYNOPSIS
Unregisters a SCDPM server or Backup server from the vault.

## SYNTAX

```
Unregister-AzRecoveryServicesBackupManagementServer [-AzureRmBackupManagementServer] <BackupEngineBase>
 [-PassThru] [-VaultId <String>] [-DefaultProfile <IAzureContextContainer>] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

## DESCRIPTION
The Unregister-AzRecoveryServicesBackupManagementServer cmdlet unregisters a System Center Data Protection Manager (SCDPM) server or an Azure Backup server from the vault.
This cmdlet removes references to the servers that are unregistered from the vault.
Before you can unregister a container, you must delete any protected data associated with that container.
Set the vault context by using the Set-AzRecoveryServicesVaultContext cmdlet before you use the current cmdlet.

## EXAMPLES

### Example 1: Unregister an SCDPM server from the vault
```
$BMS = Get-AzRecoveryServicesBackupManagementServer -Name "dpmserver01.contoso.com"
Unregister-AzRecoveryServicesBackupManagementServer -AzureRmBackupManagementServer $BMS
```

The first command gets the Backup management server named dpmserver01.contoso.com, and then stores it in the $BMS variable.
The second command unregisters the SCDPM server from the vault.

### Example 2
```
Unregister-AzRecoveryServicesBackupManagementServer -AzureRmBackupManagementServer <BackupEngineBase> -VaultId $vault.ID
```

## PARAMETERS

### -AzureRmBackupManagementServer
The recovery services backup container.

```yaml
Type: BackupEngineBase
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

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

### -PassThru
Return the Backup Management Server to be deleted.

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
## OUTPUTS

### Microsoft.Azure.Commands.RecoveryServices.Backup.Cmdlets.Models.BackupEngineBase
## NOTES

## RELATED LINKS

[Get-AzRecoveryServicesBackupManagementServer]()

