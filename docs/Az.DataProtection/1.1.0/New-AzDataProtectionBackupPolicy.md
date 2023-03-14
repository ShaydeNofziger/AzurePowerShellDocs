---
external help file: Az.DataProtection-help.xml
Module Name: Az.DataProtection
online version: https://learn.microsoft.com/powershell/module/az.dataprotection/new-azdataprotectionbackuppolicy
schema: 2.0.0
---

# New-AzDataProtectionBackupPolicy

## SYNOPSIS
Creates a new backup policy in a given backup vault

## SYNTAX

```
New-AzDataProtectionBackupPolicy -ResourceGroupName <String> -VaultName <String> -Name <String>
 -Policy <IBackupPolicy> [-SubscriptionId <String>] [-DefaultProfile <PSObject>] [-Break]
 [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>]
 [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
Creates a new backup policy in a given backup vault

## EXAMPLES

### EXAMPLE 1
```
$defaultPol = Get-AzDataProtectionPolicyTemplate -DatasourceType AzureDisk
New-AzDataProtectionBackupPolicy -SubscriptionId "xxxx-xxx-xxx" -ResourceGroupName sarath-rg -VaultName sarath-vault -Name "MyPolicy" -Policy $defaultPol
```

### EXAMPLE 2
```
$defaultPol = Get-AzDataProtectionPolicyTemplate -DatasourceType AzureDatabaseForPostgreSQL
$lifeCycleVault = New-AzDataProtectionRetentionLifeCycleClientObject -SourceDataStore VaultStore -SourceRetentionDurationType Months -SourceRetentionDurationCount 3 -TargetDataStore ArchiveStore -CopyOption CopyOnExpiryOption
$lifeCycleArchive = New-AzDataProtectionRetentionLifeCycleClientObject -SourceDataStore ArchiveStore -SourceRetentionDurationType Months -SourceRetentionDurationCount 6
Edit-AzDataProtectionPolicyRetentionRuleClientObject -Policy $defaultPol -Name Default -LifeCycles $lifeCycleVault, $lifeCycleArchive -IsDefault $true
$schDates = @(
(
    (Get-Date -Year 2021 -Month 08 -Day 18 -Hour 10 -Minute 0 -Second 0)
),
(
    (Get-Date -Year 2021 -Month 08 -Day 22 -Hour 10 -Minute 0 -Second 0) 
))
```

$trigger =  New-AzDataProtectionPolicyTriggerScheduleClientObject -ScheduleDays $schDates -IntervalType Weekly -IntervalCount 1
Edit-AzDataProtectionPolicyTriggerClientObject -Schedule $trigger -Policy $defaultPol   
$lifeCycleVault = New-AzDataProtectionRetentionLifeCycleClientObject -SourceDataStore VaultStore -SourceRetentionDurationType Months -SourceRetentionDurationCount 6 -TargetDataStore ArchiveStore -CopyOption CopyOnExpiryOption
$lifeCycleArchive = New-AzDataProtectionRetentionLifeCycleClientObject -SourceDataStore ArchiveStore -SourceRetentionDurationType Months -SourceRetentionDurationCount 12
Edit-AzDataProtectionPolicyRetentionRuleClientObject -Policy $defaultPol -Name Monthly -LifeCycles $lifeCycleVault, $lifeCycleArchive -IsDefault $false
$tagCriteria = New-AzDataProtectionPolicyTagCriteriaClientObject -AbsoluteCriteria FirstOfMonth
Edit-AzDataProtectionPolicyTagClientObject -Policy $defaultPol -Name Monthly -Criteria $tagCriteria
New-AzDataProtectionBackupPolicy -SubscriptionId "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx" -ResourceGroupName "resourceGroupName" -VaultName "vaultName" -Name "MyPolicy" -Policy $defaultPol

## PARAMETERS

### -ResourceGroupName
Resource Group Name

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
Vault Name

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
Policy Name

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

### -Policy
Policy Request Object
To construct, see NOTES section for POLICY properties and create a hash table.

```yaml
Type: IBackupPolicy
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SubscriptionId
Subscription Id

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

### Microsoft.Azure.PowerShell.Cmdlets.DataProtection.Models.Api20221201.IBaseBackupPolicyResource
## NOTES
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties.
For information on hash tables, run Get-Help about_Hash_Tables.

POLICY \<IBackupPolicy\>: Policy Request Object
  DatasourceType \<String\[\]\>: Type of datasource for the backup management
  ObjectType \<String\>: 
  PolicyRule \<IBasePolicyRule\[\]\>: Policy rule dictionary that contains rules for each backuptype i.e Full/Incremental/Logs etc
    Name \<String\>: 
    ObjectType \<String\>: 
    DataStoreObjectType \<String\>: Type of Datasource object, used to initialize the right inherited type
    DataStoreType \<DataStoreTypes\>: type of datastore; Operational/Vault/Archive
    TriggerObjectType \<String\>: Type of the specific object - used for deserializing
    Lifecycle \<ISourceLifeCycle\[\]\>: 
      DeleteAfterDuration \<String\>: Duration of deletion after given timespan
      DeleteAfterObjectType \<String\>: Type of the specific object - used for deserializing
      SourceDataStoreObjectType \<String\>: Type of Datasource object, used to initialize the right inherited type
      SourceDataStoreType \<DataStoreTypes\>: type of datastore; Operational/Vault/Archive
      \[TargetDataStoreCopySetting \<ITargetCopySetting\[\]\>\]: 
        CopyAfterObjectType \<String\>: Type of the specific object - used for deserializing
        DataStoreObjectType \<String\>: Type of Datasource object, used to initialize the right inherited type
        DataStoreType \<DataStoreTypes\>: type of datastore; Operational/Vault/Archive
    \[BackupParameterObjectType \<String\>\]: Type of the specific object - used for deserializing
    \[IsDefault \<Boolean?\>\]:

## RELATED LINKS

[https://learn.microsoft.com/powershell/module/az.dataprotection/new-azdataprotectionbackuppolicy](https://learn.microsoft.com/powershell/module/az.dataprotection/new-azdataprotectionbackuppolicy)

