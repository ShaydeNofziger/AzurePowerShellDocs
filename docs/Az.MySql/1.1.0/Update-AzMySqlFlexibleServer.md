---
external help file: Az.MySql-help.xml
Module Name: Az.MySql
online version: https://docs.microsoft.com/powershell/module/az.mysql/update-azmysqlflexibleserver
schema: 2.0.0
---

# Update-AzMySqlFlexibleServer

## SYNOPSIS
Updates an existing MySQL flexible server.
The request body can contain one to many of the properties present in the normal server definition.
Use Update-AzMySqlFlexibleServerConfiguration instead if you want update server parameters such as wait_timeout or net_retry_count.

## SYNTAX

### UpdateExpanded (Default)
```
Update-AzMySqlFlexibleServer -Name <String> -ResourceGroupName <String> [-SubscriptionId <String>]
 [-AdministratorLoginPassword <SecureString>] [-ReplicationRole <String>] [-Sku <String>] [-SkuTier <SkuTier>]
 [-HighAvailability <String>] [-BackupRetentionDay <Int32>] [-StorageAutogrow <StorageAutogrow>]
 [-StorageInMb <Int32>] [-Tag <Hashtable>] [-MaintenanceWindow <String>] [-DefaultProfile <PSObject>] [-AsJob]
 [-Break] [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-NoWait]
 [-Proxy <Uri>] [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

### UpdateViaIdentityExpanded
```
Update-AzMySqlFlexibleServer -InputObject <IMySqlIdentity> [-AdministratorLoginPassword <SecureString>]
 [-ReplicationRole <String>] [-Sku <String>] [-SkuTier <SkuTier>] [-HighAvailability <String>]
 [-BackupRetentionDay <Int32>] [-StorageAutogrow <StorageAutogrow>] [-StorageInMb <Int32>] [-Tag <Hashtable>]
 [-MaintenanceWindow <String>] [-DefaultProfile <PSObject>] [-AsJob] [-Break]
 [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-NoWait] [-Proxy <Uri>]
 [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
Updates an existing MySQL flexible server.
The request body can contain one to many of the properties present in the normal server definition.
Use Update-AzMySqlFlexibleServerConfiguration instead if you want update server parameters such as wait_timeout or net_retry_count.

## EXAMPLES

### EXAMPLE 1
```
Update-AzMySqlFlexibleServer -ResourceGroupName PowershellMySqlTest -Name mysql-test -Sku Standard_D4ds_v4
```

### EXAMPLE 2
```
Get-AzMySqlFlexibleServer -ResourceGroupName PowershellMySqlTest -ServerName mysql-test | Update-AzMySqlFlexibleServer -BackupRetentionDay 23 -StorageInMb 10240
```

## PARAMETERS

### -Name
The name of the server.

```yaml
Type: String
Parameter Sets: UpdateExpanded
Aliases: ServerName

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ResourceGroupName
The name of the resource group that contains the resource.
You can obtain this value from the Azure Resource Manager API or the portal.

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
The subscription ID that identifies an Azure subscription.

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

### -InputObject
Identity Parameter.
To construct, see NOTES section for INPUTOBJECT properties and create a hash table.

```yaml
Type: IMySqlIdentity
Parameter Sets: UpdateViaIdentityExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -AdministratorLoginPassword
The password of the administrator login.

```yaml
Type: SecureString
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ReplicationRole
The replication role of the server.

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

### -Sku
The name of the sku, typically, tier + family + cores, e.g.
Burstable_B1ms, Standard_D2ds_v4

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

### -SkuTier
The tier of the particular SKU.
Accepted values: Burstable, GeneralPurpose, Memory Optimized.
Default: Burstable.

```yaml
Type: SkuTier
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -HighAvailability
Enable or disable high availability feature.
Default value is Disabled.
Default: Disabled.

```yaml
Type: String
Parameter Sets: (All)
Aliases: HaEnabled

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -BackupRetentionDay
Backup retention days for the server.
Day count is between 7 and 35.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -StorageAutogrow
Enable or disable Storage Auto Grow.
The default value is Disabled

```yaml
Type: StorageAutogrow
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -StorageInMb
Max storage allowed for a server.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -Tag
Application-specific metadata in the form of key-value pairs.

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

### -MaintenanceWindow
Period of time (UTC) designated for maintenance.
Examples: "Sun:23:30" to schedule on Sunday, 11:30pm UTC.
To set back to default pass in "Disabled"

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
Run the command as a job.

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
Wait for .NET debugger to attach.

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
SendAsync Pipeline Steps to be appended to the front of the pipeline.

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
SendAsync Pipeline Steps to be prepended to the front of the pipeline.

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
Run the command asynchronously.

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
The URI for the proxy server to use.

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
Credentials for a proxy server to use for the remote call.

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
Use the default credentials for the proxy.

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

### Microsoft.Azure.PowerShell.Cmdlets.MySql.Models.IMySqlIdentity
## OUTPUTS

### Microsoft.Azure.PowerShell.Cmdlets.MySql.Models.Api20210501.IServerAutoGenerated
## NOTES
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties.
For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT \<IMySqlIdentity\>: Identity Parameter.
  \[BackupName \<String\>\]: The name of the backup.
  \[ConfigurationName \<String\>\]: The name of the server configuration.
  \[DatabaseName \<String\>\]: The name of the database.
  \[FirewallRuleName \<String\>\]: The name of the server firewall rule.
  \[Id \<String\>\]: Resource identity path
  \[LocationName \<String\>\]: The name of the location.
  \[ResourceGroupName \<String\>\]: The name of the resource group.
The name is case insensitive.
  \[SecurityAlertPolicyName \<SecurityAlertPolicyName?\>\]: The name of the security alert policy.
  \[ServerName \<String\>\]: The name of the server.
  \[SubscriptionId \<String\>\]: The ID of the target subscription.
  \[VirtualNetworkRuleName \<String\>\]: The name of the virtual network rule.

## RELATED LINKS

[https://docs.microsoft.com/powershell/module/az.mysql/update-azmysqlflexibleserver](https://docs.microsoft.com/powershell/module/az.mysql/update-azmysqlflexibleserver)

