---
external help file: Az.DataProtection-help.xml
Module Name: Az.DataProtection
online version: https://learn.microsoft.com/powershell/module/az.dataprotection/test-azdataprotectionbackupinstancerestore
schema: 2.0.0
---

# Test-AzDataProtectionBackupInstanceRestore

## SYNOPSIS
Validates if Restore can be triggered for a DataSource

## SYNTAX

```
Test-AzDataProtectionBackupInstanceRestore -ResourceGroupName <String> -Name <String> -VaultName <String>
 -RestoreRequest <IAzureBackupRestoreRequest> [-SubscriptionId <String>] [-DefaultProfile <PSObject>] [-Break]
 [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>] [-AsJob]
 [-NoWait] [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

## DESCRIPTION
Validates if Restore can be triggered for a DataSource

## EXAMPLES

### EXAMPLE 1
```
$instances  = Get-AzDataProtectionBackupInstance -SubscriptionId "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx" -ResourceGroupName "testResourceGroup" -VaultName "testVault" 
$pointInTimeRange = Find-AzDataProtectionRestorableTimeRange -BackupInstanceName $instances[0].BackupInstanceName -ResourceGroupName "testResourceGroup" -SubscriptionId "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx" -VaultName "testVault" -SourceDataStoreType OperationalStore -StartTime (Get-Date).AddDays(-30).ToString("yyyy-MM-ddTHH:mm:ss.0000000Z") -EndTime (Get-Date).AddDays(0).ToString("yyyy-MM-ddTHH:mm:ss.0000000Z")
$vault = Get-AzDataProtectionBackupVault -ResourceGroupName "testResourceGroup" -SubscriptionId "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx" -VaultName "testVault"
$RestoreRequestObject = Initialize-AzDataProtectionRestoreRequest -DatasourceType AzureBlob -SourceDataStore OperationalStore -RestoreLocation $vault.Location -RestoreType OriginalLocation -BackupInstance $instances[0] -PointInTime (Get-Date -Date $pointInTimeRange.RestorableTimeRange.EndTime)
$validateRestore = Test-AzDataProtectionBackupInstanceRestore -Name $instances[0].Name -ResourceGroupName "testResourceGroup" -SubscriptionId "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx" -VaultName "testVault" -RestoreRequest $RestoreRequestObject
```

## PARAMETERS

### -ResourceGroupName
The name of the resource group where the backup vault is present

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

### -Name
The name of the backup instance

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
The name of the backup vault

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

### -RestoreRequest
Restore request object for which to validate
To construct, see NOTES section for RESTOREREQUEST properties and create a hash table.

```yaml
Type: IAzureBackupRestoreRequest
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SubscriptionId
Subscription Id of the backup vault

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

### Microsoft.Azure.PowerShell.Cmdlets.DataProtection.Models.Api20221201.IOperationJobExtendedInfo
## NOTES
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties.
For information on hash tables, run Get-Help about_Hash_Tables.

RESTOREREQUEST \<IAzureBackupRestoreRequest\>: Restore request object for which to validate
  ObjectType \<String\>: 
  RestoreTargetInfo \<IRestoreTargetInfoBase\>: Gets or sets the restore target information.
    ObjectType \<String\>: Type of Datasource object, used to initialize the right inherited type
    \[RestoreLocation \<String\>\]: Target Restore region
  SourceDataStoreType \<SourceDataStoreType\>: Gets or sets the type of the source data store.
  \[SourceResourceId \<String\>\]: Fully qualified Azure Resource Manager ID of the datasource which is being recovered.

## RELATED LINKS

[https://learn.microsoft.com/powershell/module/az.dataprotection/test-azdataprotectionbackupinstancerestore](https://learn.microsoft.com/powershell/module/az.dataprotection/test-azdataprotectionbackupinstancerestore)

