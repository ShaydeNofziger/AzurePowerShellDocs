---
external help file: Az.StorageMover-help.xml
Module Name: Az.StorageMover
online version: https://learn.microsoft.com/powershell/module/az.storagemover/new-azstoragemoverjobdefinition
schema: 2.0.0
---

# New-AzStorageMoverJobDefinition

## SYNOPSIS
Creates or updates a Job Definition resource, which contains configuration for a single unit of managed data transfer.

## SYNTAX

### CreateExpanded (Default)
```
New-AzStorageMoverJobDefinition -Name <String> -ProjectName <String> -ResourceGroupName <String>
 -StorageMoverName <String> [-SubscriptionId <String>] -CopyMode <CopyMode> -SourceName <String>
 -TargetName <String> [-AgentName <String>] [-Description <String>] [-SourceSubpath <String>]
 [-TargetSubpath <String>] [-DefaultProfile <PSObject>] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### Create
```
New-AzStorageMoverJobDefinition -Name <String> -ProjectName <String> -ResourceGroupName <String>
 -StorageMoverName <String> [-SubscriptionId <String>] -JobDefinition <IJobDefinition>
 [-DefaultProfile <PSObject>] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
Creates or updates a Job Definition resource, which contains configuration for a single unit of managed data transfer.

## EXAMPLES

### EXAMPLE 1
```
New-AzStorageMoverJobDefinition -Name myJob -ProjectName myProject -ResourceGroupName myResourceGroup -StorageMoverName myStorageMover -AgentName myAgent -SourceName myNfsEndpoint -TargetName myContainerEndpoint -CopyMode "Additive" -Description "job definition"
```

## PARAMETERS

### -Name
The name of the Job Definition resource.

```yaml
Type: String
Parameter Sets: (All)
Aliases: JobDefinitionName

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
Parameter Sets: (All)
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
Parameter Sets: (All)
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
Parameter Sets: (All)
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
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -JobDefinition
The Job Definition resource.
To construct, see NOTES section for JOBDEFINITION properties and create a hash table.

```yaml
Type: IJobDefinition
Parameter Sets: Create
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -CopyMode
Strategy to use for copy.

```yaml
Type: CopyMode
Parameter Sets: CreateExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SourceName
The name of the source Endpoint.

```yaml
Type: String
Parameter Sets: CreateExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TargetName
The name of the target Endpoint.

```yaml
Type: String
Parameter Sets: CreateExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AgentName
Name of the Agent to assign for new Job Runs of this Job Definition.

```yaml
Type: String
Parameter Sets: CreateExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Description
A description for the Job Definition.

```yaml
Type: String
Parameter Sets: CreateExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SourceSubpath
The subpath to use when reading from the source Endpoint.

```yaml
Type: String
Parameter Sets: CreateExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TargetSubpath
The subpath to use when writing to the target Endpoint.

```yaml
Type: String
Parameter Sets: CreateExpanded
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

### Microsoft.Azure.PowerShell.Cmdlets.StorageMover.Models.Api20230301.IJobDefinition
## OUTPUTS

### Microsoft.Azure.PowerShell.Cmdlets.StorageMover.Models.Api20230301.IJobDefinition
## NOTES
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties.
For information on hash tables, run Get-Help about_Hash_Tables.

JOBDEFINITION \<IJobDefinition\>: The Job Definition resource.
  CopyMode \<CopyMode\>: Strategy to use for copy.
  SourceName \<String\>: The name of the source Endpoint.
  TargetName \<String\>: The name of the target Endpoint.
  \[AgentName \<String\>\]: Name of the Agent to assign for new Job Runs of this Job Definition.
  \[Description \<String\>\]: A description for the Job Definition.
  \[SourceSubpath \<String\>\]: The subpath to use when reading from the source Endpoint.
  \[SystemDataCreatedAt \<DateTime?\>\]: The timestamp of resource creation (UTC).
  \[SystemDataCreatedBy \<String\>\]: The identity that created the resource.
  \[SystemDataCreatedByType \<CreatedByType?\>\]: The type of identity that created the resource.
  \[SystemDataLastModifiedAt \<DateTime?\>\]: The timestamp of resource last modification (UTC)
  \[SystemDataLastModifiedBy \<String\>\]: The identity that last modified the resource.
  \[SystemDataLastModifiedByType \<CreatedByType?\>\]: The type of identity that last modified the resource.
  \[TargetSubpath \<String\>\]: The subpath to use when writing to the target Endpoint.

## RELATED LINKS

[https://learn.microsoft.com/powershell/module/az.storagemover/new-azstoragemoverjobdefinition](https://learn.microsoft.com/powershell/module/az.storagemover/new-azstoragemoverjobdefinition)

