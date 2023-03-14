---
external help file: Az.ContainerInstance-help.xml
Module Name: Az.ContainerInstance
online version: https://learn.microsoft.com/powershell/module/az.containerinstance/get-azcontainergroup
schema: 2.0.0
---

# Get-AzContainerGroup

## SYNOPSIS
Gets the properties of the specified container group in the specified subscription and resource group.
The operation returns the properties of each container group including containers, image registry credentials, restart policy, IP address type, OS type, state, and volumes.

## SYNTAX

### List (Default)
```
Get-AzContainerGroup [-SubscriptionId <String[]>] [-DefaultProfile <PSObject>] [-Break]
 [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>]
 [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [<CommonParameters>]
```

### Get
```
Get-AzContainerGroup -Name <String> -ResourceGroupName <String> [-SubscriptionId <String[]>]
 [-DefaultProfile <PSObject>] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] [<CommonParameters>]
```

### List1
```
Get-AzContainerGroup -ResourceGroupName <String> [-SubscriptionId <String[]>] [-DefaultProfile <PSObject>]
 [-Break] [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>]
 [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [<CommonParameters>]
```

### GetViaIdentity
```
Get-AzContainerGroup -InputObject <IContainerInstanceIdentity> [-DefaultProfile <PSObject>] [-Break]
 [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>]
 [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [<CommonParameters>]
```

## DESCRIPTION
Gets the properties of the specified container group in the specified subscription and resource group.
The operation returns the properties of each container group including containers, image registry credentials, restart policy, IP address type, OS type, state, and volumes.

## EXAMPLES

### EXAMPLE 1
```
Get-AzContainerGroup
```

### EXAMPLE 2
```
Get-AzContainerGroup -Name test-cg1 -ResourceGroupName test-rg | Format-List
```

### EXAMPLE 3
```
Get-AzContainerGroup -ResourceGroupName test-rg
```

### EXAMPLE 4
```
Update-AzContainerGroup -Name test-cg1 -ResourceGroupName test-rg -Tag @{"test"="value"} | Get-AzContainerGroup
```

## PARAMETERS

### -Name
The name of the container group.

```yaml
Type: String
Parameter Sets: Get
Aliases: ContainerGroupName

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ResourceGroupName
The name of the resource group.

```yaml
Type: String
Parameter Sets: Get, List1
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SubscriptionId
Subscription credentials which uniquely identify Microsoft Azure subscription.
The subscription ID forms part of the URI for every service call.

```yaml
Type: String[]
Parameter Sets: List, Get, List1
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
Type: IContainerInstanceIdentity
Parameter Sets: GetViaIdentity
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### Microsoft.Azure.PowerShell.Cmdlets.ContainerInstance.Models.IContainerInstanceIdentity
## OUTPUTS

### Microsoft.Azure.PowerShell.Cmdlets.ContainerInstance.Models.Api20221001Preview.IContainerGroup
## NOTES
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties.
For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT \<IContainerInstanceIdentity\>: Identity Parameter
  \[ContainerGroupName \<String\>\]: The name of the container group.
  \[ContainerName \<String\>\]: The name of the container instance.
  \[Id \<String\>\]: Resource identity path
  \[Location \<String\>\]: The identifier for the physical azure location.
  \[ResourceGroupName \<String\>\]: The name of the resource group.
  \[SubnetName \<String\>\]: The name of the subnet.
  \[SubscriptionId \<String\>\]: Subscription credentials which uniquely identify Microsoft Azure subscription.
The subscription ID forms part of the URI for every service call.
  \[VirtualNetworkName \<String\>\]: The name of the virtual network.

## RELATED LINKS

[https://learn.microsoft.com/powershell/module/az.containerinstance/get-azcontainergroup](https://learn.microsoft.com/powershell/module/az.containerinstance/get-azcontainergroup)

