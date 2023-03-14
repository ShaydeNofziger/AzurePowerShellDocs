---
external help file: Az.StorageMover-help.xml
Module Name: Az.StorageMover
online version: https://learn.microsoft.com/powershell/module/az.storagemover/start-azstoragemoverjobdefinition
schema: 2.0.0
---

# Start-AzStorageMoverJobDefinition

## SYNOPSIS
Requests an Agent to start a new instance of this Job Definition, generating a new Job Run resource.

## SYNTAX

### Start (Default)
```
Start-AzStorageMoverJobDefinition -JobDefinitionName <String> -ProjectName <String> -ResourceGroupName <String>
 -StorageMoverName <String> [-SubscriptionId <String>] [-DefaultProfile <PSObject>] [-Break]
 [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>]
 [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### StartViaIdentity
```
Start-AzStorageMoverJobDefinition -InputObject <IStorageMoverIdentity> [-DefaultProfile <PSObject>] [-Break]
 [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>]
 [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
Requests an Agent to start a new instance of this Job Definition, generating a new Job Run resource.

## EXAMPLES

### EXAMPLE 1
```
New-AzStorageMoverProject -ResourceGroupName myResourceGroup -StorageMoverName myStorageMover -Name myProject -Description "description"
```

New-AzStorageMoverAzStorageContainerEndpoint -Name myContainerEndpoint -ResourceGroupName myResourceGroup -BlobContainerName myContainer -StorageMoverName myStorageMover -StorageAccountResourceId myAccountResourceId
New-AzStorageMoverNfsEndpoint -Name myNfsEndpoint -ResourceGroupName myResourceGroup -StorageMoverName myStorageMover -Host "x.x.x.x" -Export "/" -NfsVersion NFSv3 -Description "Description"

New-AzStorageMoverJobDefinition -Name myJob -ProjectName myProject -ResourceGroupName myResourceGroup -StorageMoverName myStorageMover -AgentName myAgent -SourceName myNfsEndpoint -TargetName myContainerEndpoint -CopyMode Additive
Start-AzStorageMoverJobDefinition -JobDefinitionName myJobDefinition -ProjectName myProject -ResourceGroupName myResourceGroup -StorageMoverName myStorageMover

## PARAMETERS

### -JobDefinitionName
The name of the Job Definition resource.

```yaml
Type: String
Parameter Sets: Start
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ProjectName
The name of the Project resource.

```yaml
Type: String
Parameter Sets: Start
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ResourceGroupName
The name of the resource group.
The name is case insensitive.

```yaml
Type: String
Parameter Sets: Start
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -StorageMoverName
The name of the Storage Mover resource.

```yaml
Type: String
Parameter Sets: Start
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SubscriptionId
The ID of the target subscription.

```yaml
Type: String
Parameter Sets: Start
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
Type: IStorageMoverIdentity
Parameter Sets: StartViaIdentity
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
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

### Microsoft.Azure.PowerShell.Cmdlets.StorageMover.Models.IStorageMoverIdentity
## OUTPUTS

### System.String
## NOTES
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties.
For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT \<IStorageMoverIdentity\>: Identity Parameter
  \[AgentName \<String\>\]: The name of the Agent resource.
  \[EndpointName \<String\>\]: The name of the Endpoint resource.
  \[Id \<String\>\]: Resource identity path
  \[JobDefinitionName \<String\>\]: The name of the Job Definition resource.
  \[JobRunName \<String\>\]: The name of the Job Run resource.
  \[ProjectName \<String\>\]: The name of the Project resource.
  \[ResourceGroupName \<String\>\]: The name of the resource group.
The name is case insensitive.
  \[StorageMoverName \<String\>\]: The name of the Storage Mover resource.
  \[SubscriptionId \<String\>\]: The ID of the target subscription.

## RELATED LINKS

[https://learn.microsoft.com/powershell/module/az.storagemover/start-azstoragemoverjobdefinition](https://learn.microsoft.com/powershell/module/az.storagemover/start-azstoragemoverjobdefinition)

