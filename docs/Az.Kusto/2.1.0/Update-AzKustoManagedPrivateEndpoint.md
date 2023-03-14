---
external help file: Az.Kusto-help.xml
Module Name: Az.Kusto
online version: https://docs.microsoft.com/powershell/module/az.kusto/update-azkustomanagedprivateendpoint
schema: 2.0.0
---

# Update-AzKustoManagedPrivateEndpoint

## SYNOPSIS
Updates a managed private endpoint.

## SYNTAX

### UpdateExpanded (Default)
```
Update-AzKustoManagedPrivateEndpoint -ClusterName <String> -Name <String> -ResourceGroupName <String>
 [-SubscriptionId <String>] [-GroupId <String>] [-PrivateLinkResourceId <String>]
 [-PrivateLinkResourceRegion <String>] [-RequestMessage <String>] [-DefaultProfile <PSObject>] [-AsJob]
 [-Break] [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-NoWait]
 [-Proxy <Uri>] [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

### Update
```
Update-AzKustoManagedPrivateEndpoint -ClusterName <String> -Name <String> -ResourceGroupName <String>
 [-SubscriptionId <String>] -Parameter <IManagedPrivateEndpoint> [-DefaultProfile <PSObject>] [-AsJob] [-Break]
 [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-NoWait] [-Proxy <Uri>]
 [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### UpdateViaIdentityExpanded
```
Update-AzKustoManagedPrivateEndpoint -InputObject <IKustoIdentity> [-GroupId <String>]
 [-PrivateLinkResourceId <String>] [-PrivateLinkResourceRegion <String>] [-RequestMessage <String>]
 [-DefaultProfile <PSObject>] [-AsJob] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-NoWait] [-Proxy <Uri>] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### UpdateViaIdentity
```
Update-AzKustoManagedPrivateEndpoint -InputObject <IKustoIdentity> -Parameter <IManagedPrivateEndpoint>
 [-DefaultProfile <PSObject>] [-AsJob] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-NoWait] [-Proxy <Uri>] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
Updates a managed private endpoint.

## EXAMPLES

### EXAMPLE 1
```
Update-AzKustoManagedPrivateEndpoint -ResourceGroupName "testrg" -ClusterName "mycluster" -Name "ManagedPrivateEndpointName" -RequestMessage "Please Approve Managed Private Endpoint Request." -GroupId "blob" -PrivateLinkResourceId "/subscriptions/12345678-1234-1234-1234-123456789098/resourceGroups/testrg/providers/Microsoft.Storage/storageAccounts/storageAccountTest"
```

## PARAMETERS

### -ClusterName
The name of the Kusto cluster.

```yaml
Type: String
Parameter Sets: UpdateExpanded, Update
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Name
The name of the managed private endpoint.

```yaml
Type: String
Parameter Sets: UpdateExpanded, Update
Aliases: ManagedPrivateEndpointName

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ResourceGroupName
The name of the resource group containing the Kusto cluster.

```yaml
Type: String
Parameter Sets: UpdateExpanded, Update
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SubscriptionId
Gets subscription credentials which uniquely identify Microsoft Azure subscription.
The subscription ID forms part of the URI for every service call.

```yaml
Type: String
Parameter Sets: UpdateExpanded, Update
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -InputObject
Identity Parameter
To construct, see NOTES section for INPUTOBJECT properties and create a hash table.

```yaml
Type: IKustoIdentity
Parameter Sets: UpdateViaIdentityExpanded, UpdateViaIdentity
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Parameter
Class representing a managed private endpoint.
To construct, see NOTES section for PARAMETER properties and create a hash table.

```yaml
Type: IManagedPrivateEndpoint
Parameter Sets: Update, UpdateViaIdentity
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -GroupId
The groupId in which the managed private endpoint is created.

```yaml
Type: String
Parameter Sets: UpdateExpanded, UpdateViaIdentityExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PrivateLinkResourceId
The ARM resource ID of the resource for which the managed private endpoint is created.

```yaml
Type: String
Parameter Sets: UpdateExpanded, UpdateViaIdentityExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PrivateLinkResourceRegion
The region of the resource to which the managed private endpoint is created.

```yaml
Type: String
Parameter Sets: UpdateExpanded, UpdateViaIdentityExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RequestMessage
The user request message.

```yaml
Type: String
Parameter Sets: UpdateExpanded, UpdateViaIdentityExpanded
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

### Microsoft.Azure.PowerShell.Cmdlets.Kusto.Models.Api20220201.IManagedPrivateEndpoint
### Microsoft.Azure.PowerShell.Cmdlets.Kusto.Models.IKustoIdentity
## OUTPUTS

### Microsoft.Azure.PowerShell.Cmdlets.Kusto.Models.Api20220201.IManagedPrivateEndpoint
## NOTES
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties.
For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT \<IKustoIdentity\>: Identity Parameter
  \[AttachedDatabaseConfigurationName \<String\>\]: The name of the attached database configuration.
  \[ClusterName \<String\>\]: The name of the Kusto cluster.
  \[DataConnectionName \<String\>\]: The name of the data connection.
  \[DatabaseName \<String\>\]: The name of the database in the Kusto cluster.
  \[Id \<String\>\]: Resource identity path
  \[Location \<String\>\]: Azure location (region) name.
  \[ManagedPrivateEndpointName \<String\>\]: The name of the managed private endpoint.
  \[OperationId \<String\>\]: The Guid of the operation ID
  \[PrincipalAssignmentName \<String\>\]: The name of the Kusto principalAssignment.
  \[PrivateEndpointConnectionName \<String\>\]: The name of the private endpoint connection.
  \[PrivateLinkResourceName \<String\>\]: The name of the private link resource.
  \[ResourceGroupName \<String\>\]: The name of the resource group containing the Kusto cluster.
  \[ScriptName \<String\>\]: The name of the Kusto database script.
  \[SubscriptionId \<String\>\]: Gets subscription credentials which uniquely identify Microsoft Azure subscription.
The subscription ID forms part of the URI for every service call.

PARAMETER \<IManagedPrivateEndpoint\>: Class representing a managed private endpoint.
  \[AzureAsyncOperation \<String\>\]: 
  \[GroupId \<String\>\]: The groupId in which the managed private endpoint is created.
  \[PrivateLinkResourceId \<String\>\]: The ARM resource ID of the resource for which the managed private endpoint is created.
  \[PrivateLinkResourceRegion \<String\>\]: The region of the resource to which the managed private endpoint is created.
  \[RequestMessage \<String\>\]: The user request message.
  \[SystemDataCreatedAt \<DateTime?\>\]: The timestamp of resource creation (UTC).
  \[SystemDataCreatedBy \<String\>\]: The identity that created the resource.
  \[SystemDataCreatedByType \<CreatedByType?\>\]: The type of identity that created the resource.
  \[SystemDataLastModifiedAt \<DateTime?\>\]: The timestamp of resource last modification (UTC)
  \[SystemDataLastModifiedBy \<String\>\]: The identity that last modified the resource.
  \[SystemDataLastModifiedByType \<CreatedByType?\>\]: The type of identity that last modified the resource.

## RELATED LINKS

[https://docs.microsoft.com/powershell/module/az.kusto/update-azkustomanagedprivateendpoint](https://docs.microsoft.com/powershell/module/az.kusto/update-azkustomanagedprivateendpoint)

