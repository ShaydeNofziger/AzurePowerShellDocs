---
external help file: Az.DataProtection-help.xml
Module Name: Az.DataProtection
online version: https://learn.microsoft.com/powershell/module/az.dataprotection/update-azdataprotectionbackupvault
schema: 2.0.0
---

# Update-AzDataProtectionBackupVault

## SYNOPSIS
Updates a BackupVault resource belonging to a resource group.
For example, updating tags for a resource.

## SYNTAX

### UpdateExpanded (Default)
```
Update-AzDataProtectionBackupVault -ResourceGroupName <String> [-SubscriptionId <String>] -VaultName <String>
 [-AzureMonitorAlertsForAllJobFailure <AlertsState>]
 [-CrossSubscriptionRestoreState <CrossSubscriptionRestoreState>] [-IdentityType <String>]
 [-ImmutabilityState <ImmutabilityState>] [-SoftDeleteRetentionDurationInDay <Double>]
 [-SoftDeleteState <SoftDeleteState>] [-Tag <Hashtable>] [-DefaultProfile <PSObject>] [-AsJob] [-Break]
 [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-NoWait] [-Proxy <Uri>]
 [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### UpdateViaIdentityExpanded
```
Update-AzDataProtectionBackupVault -InputObject <IDataProtectionIdentity>
 [-AzureMonitorAlertsForAllJobFailure <AlertsState>]
 [-CrossSubscriptionRestoreState <CrossSubscriptionRestoreState>] [-IdentityType <String>]
 [-ImmutabilityState <ImmutabilityState>] [-SoftDeleteRetentionDurationInDay <Double>]
 [-SoftDeleteState <SoftDeleteState>] [-Tag <Hashtable>] [-DefaultProfile <PSObject>] [-AsJob] [-Break]
 [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-NoWait] [-Proxy <Uri>]
 [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
Updates a BackupVault resource belonging to a resource group.
For example, updating tags for a resource.

## EXAMPLES

### EXAMPLE 1
```
$tag = @{"Owner"="sarath";"Purpose"="AzureBackupTesting"}
Update-AzDataProtectionBackupVault -SubscriptionId "xxx-xxx-xxx" -ResourceGroupName sarath-rg -VaultName sarath-vault -Tag $tag
```

### EXAMPLE 2
```
Update-AzDataProtectionBackupVault -ResourceGroupName "rgName" -VaultName "vaultName" -SubscriptionId "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx" -AzureMonitorAlertsForAllJobFailure 'Disabled'
```

### EXAMPLE 3
```
Update-AzDataProtectionBackupVault -SubscriptionId "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx" -ResourceGroupName "resourceGroupName" -VaultName "vaultName" -CrossSubscriptionRestoreState Disabled -ImmutabilityState Disabled -SoftDeleteRetentionDurationInDay 99 -SoftDeleteState Off
```

## PARAMETERS

### -ResourceGroupName
The name of the resource group.
The name is case insensitive.

```yaml
Type: String
Parameter Sets: UpdateExpanded
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
Parameter Sets: UpdateExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -VaultName
The name of the backup vault.

```yaml
Type: String
Parameter Sets: UpdateExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -InputObject
Identity Parameter
To construct, see NOTES section for INPUTOBJECT properties and create a hash table.

```yaml
Type: IDataProtectionIdentity
Parameter Sets: UpdateViaIdentityExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -AzureMonitorAlertsForAllJobFailure
Parameter to Enable or Disable built-in azure monitor alerts for job failures.
Security alerts cannot be disabled.

```yaml
Type: AlertsState
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -CrossSubscriptionRestoreState
Cross subscription restore state of the vault.
Allowed values are Disabled, Enabled, PermanentlyDisabled.

```yaml
Type: CrossSubscriptionRestoreState
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -IdentityType
The identityType which can be either SystemAssigned or None

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

### -ImmutabilityState
Immutability state of the vault.
Allowed values are Disabled, Unlocked, Locked.

```yaml
Type: ImmutabilityState
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SoftDeleteRetentionDurationInDay
Soft delete retention duration in days.

```yaml
Type: Double
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -SoftDeleteState
Soft delete state of the vault.
Allowed values are Off, On, AlwaysOn.

```yaml
Type: SoftDeleteState
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Tag
Resource tags.

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

### Microsoft.Azure.PowerShell.Cmdlets.DataProtection.Models.IDataProtectionIdentity
## OUTPUTS

### Microsoft.Azure.PowerShell.Cmdlets.DataProtection.Models.Api20221201.IBackupVaultResource
## NOTES
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties.
For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT \<IDataProtectionIdentity\>: Identity Parameter
  \[BackupInstanceName \<String\>\]: The name of the backup instance.
  \[BackupPolicyName \<String\>\]: 
  \[Id \<String\>\]: Resource identity path
  \[JobId \<String\>\]: The Job ID.
This is a GUID-formatted string (e.g.
00000000-0000-0000-0000-000000000000).
  \[Location \<String\>\]: The location in which uniqueness will be verified.
  \[OperationId \<String\>\]: 
  \[RecoveryPointId \<String\>\]: 
  \[RequestName \<String\>\]: 
  \[ResourceGroupName \<String\>\]: The name of the resource group.
The name is case insensitive.
  \[ResourceGuardsName \<String\>\]: The name of ResourceGuard
  \[SubscriptionId \<String\>\]: The ID of the target subscription.
The value must be an UUID.
  \[VaultName \<String\>\]: The name of the backup vault.

## RELATED LINKS

[https://learn.microsoft.com/powershell/module/az.dataprotection/update-azdataprotectionbackupvault](https://learn.microsoft.com/powershell/module/az.dataprotection/update-azdataprotectionbackupvault)

