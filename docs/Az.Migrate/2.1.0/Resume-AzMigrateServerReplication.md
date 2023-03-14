---
external help file: Az.Migrate-help.xml
Module Name: Az.Migrate
online version: https://docs.microsoft.com/powershell/module/az.migrate/resume-azmigrateserverreplication
schema: 2.0.0
---

# Resume-AzMigrateServerReplication

## SYNOPSIS
Starts the replication that has been suspended.

## SYNTAX

### ByIDVMwareCbt (Default)
```
Resume-AzMigrateServerReplication -TargetObjectID <String> [-DeleteMigratedResource] [-SubscriptionId <String>]
 [-DefaultProfile <PSObject>] [-Force] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### ByInputObjectVMwareCbt
```
Resume-AzMigrateServerReplication [-DeleteMigratedResource] [-SubscriptionId <String>]
 -InputObject <IMigrationItem> [-DefaultProfile <PSObject>] [-Force] [-Break]
 [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>]
 [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
The Resume-AzMigrateServerReplication starts the replication that has been suspended.

## EXAMPLES

### EXAMPLE 1
```
Resume-AzMigrateServerReplication -TargetObjectID "/Subscriptions/xxx-xxx-xxxxxx-xxx-xxx/resourceGroups/cbtsignoff2201rg/providers/Microsoft.RecoveryServices/vaults/signoffccyapp3352vault/replicationFabrics/signoffccyappae52replicationfabric/replicationProtectionContainers/signoffccyappae52replicationcontainer/replicationMigrationItems/idclab-vcen67-fareast-corp-micr-0f144e99-ba36-4649-b92b-8b06854aa539_5015f6d8-fc84-afdf-de47-1eab79330f00"
```

### EXAMPLE 2
```
$obj = Get-AzMigrateServerReplication -ProjectName "signoffccyproj" -ResourceGroupName "cbtsignoff2201rg" -MachineName "Win2k16"
Resume-AzMigrateServerReplication -InputObject $obj
```

## PARAMETERS

### -TargetObjectID
Specifies the replicating server for which the resume replication needs to be initiated.
The ID should be retrieved using the Get-AzMigrateServerReplication cmdlet.

```yaml
Type: String
Parameter Sets: ByIDVMwareCbt
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DeleteMigratedResource
Specifies whether the migrated resources needs to be deleted.

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

### -SubscriptionId
Azure Subscription ID.

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

### -InputObject
Specifies the replicating server for which the resume replication needs to be initiated.
The server object can be retrieved using the Get-AzMigrateServerReplication cmdlet
To construct, see NOTES section for INPUTOBJECT properties and create a hash table.

```yaml
Type: IMigrationItem
Parameter Sets: ByInputObjectVMwareCbt
Aliases:

Required: True
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

### -Force
Specifies whether the migrated resources needs to be deleted by Force.

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

## OUTPUTS

### Microsoft.Azure.PowerShell.Cmdlets.Migrate.Models.Api20220501.IJob
## NOTES
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties.
For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT \<IMigrationItem\>: Specifies the replicating server for which the resume replication needs to be initiated.
The server object can be retrieved using the Get-AzMigrateServerReplication cmdlet
  \[Location \<String\>\]: Resource Location
  \[ProviderSpecificDetail \<IMigrationProviderSpecificSettings\>\]: The migration provider custom settings.
    InstanceType \<String\>: Gets the instance type.

## RELATED LINKS

[https://docs.microsoft.com/powershell/module/az.migrate/resume-azmigrateserverreplication](https://docs.microsoft.com/powershell/module/az.migrate/resume-azmigrateserverreplication)

