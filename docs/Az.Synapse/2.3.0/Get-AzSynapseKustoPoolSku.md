---
external help file: Az.Synapse-help.xml
Module Name: Az.Synapse
online version: https://learn.microsoft.com/powershell/module/az.synapse/get-azsynapsekustopoolsku
schema: 2.0.0
---

# Get-AzSynapseKustoPoolSku

## SYNOPSIS
Lists eligible SKUs for Kusto Pool resource.

## SYNTAX

### List (Default)
```
Get-AzSynapseKustoPoolSku [-SubscriptionId <String[]>] [-DefaultProfile <PSObject>] [-Break]
 [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>]
 [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [<CommonParameters>]
```

### List1
```
Get-AzSynapseKustoPoolSku [-SubscriptionId <String[]>] -KustoPoolName <String> -ResourceGroupName <String>
 -WorkspaceName <String> [-DefaultProfile <PSObject>] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] [<CommonParameters>]
```

## DESCRIPTION
Lists eligible SKUs for Kusto Pool resource.

## EXAMPLES

### EXAMPLE 1
```
Get-AzSynapseKustoPoolSku
```

Location             Name              ResourceType          Size
--------             ----              ------------          ----
{australiacentral}   Compute optimized workspaces/kustoPools Extra small
{australiacentral2}  Compute optimized workspaces/kustoPools Extra small
{australiaeast}      Compute optimized workspaces/kustoPools Extra small
{australiasoutheast} Compute optimized workspaces/kustoPools Extra small
{brazilsouth}        Compute optimized workspaces/kustoPools Extra small
...

### EXAMPLE 2
```
Get-AzSynapseKustoPoolSku -ResourceGroupName testrg -WorkspaceName testws -KustoPoolName testnewkustopool
```

ResourceType
------------
Microsoft.Synapse/workspaces/kustoPools
Microsoft.Synapse/workspaces/kustoPools
Microsoft.Synapse/workspaces/kustoPools
Microsoft.Synapse/workspaces/kustoPools
Microsoft.Synapse/workspaces/kustoPools
Microsoft.Synapse/workspaces/kustoPools

## PARAMETERS

### -SubscriptionId
The ID of the target subscription.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -KustoPoolName
The name of the Kusto pool.

```yaml
Type: String
Parameter Sets: List1
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
Parameter Sets: List1
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -WorkspaceName
The name of the workspace

```yaml
Type: String
Parameter Sets: List1
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Microsoft.Azure.PowerShell.Cmdlets.Synapse.Models.Api20210601Preview.IAzureResourceSku
### Microsoft.Azure.PowerShell.Cmdlets.Synapse.Models.Api20210601Preview.ISkuDescription
## NOTES

## RELATED LINKS

[https://learn.microsoft.com/powershell/module/az.synapse/get-azsynapsekustopoolsku](https://learn.microsoft.com/powershell/module/az.synapse/get-azsynapsekustopoolsku)

