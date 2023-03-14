---
external help file: Az.CloudService-help.xml
Module Name: Az.CloudService
online version: https://learn.microsoft.com/powershell/module/az.cloudservice/get-azcloudservicepublicipaddress
schema: 2.0.0
---

# Get-AzCloudServicePublicIPAddress

## SYNOPSIS
Get the specified public IP address in a cloud service.

## SYNTAX

### List (Default)
```
Get-AzCloudServicePublicIPAddress -CloudServiceName <String> -ResourceGroupName <String>
 [-SubscriptionId <String[]>] [-DefaultProfile <PSObject>] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] [<CommonParameters>]
```

### List1
```
Get-AzCloudServicePublicIPAddress -CloudServiceName <String> -IPConfigurationName <String>
 -NetworkInterfaceName <String> -ResourceGroupName <String> -RoleInstanceName <String>
 [-SubscriptionId <String[]>] [-DefaultProfile <PSObject>] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] [<CommonParameters>]
```

### Get
```
Get-AzCloudServicePublicIPAddress -CloudServiceName <String> -IPConfigurationName <String> -Name <String>
 -NetworkInterfaceName <String> -ResourceGroupName <String> -RoleInstanceName <String>
 [-SubscriptionId <String[]>] [-Expand <String>] [-DefaultProfile <PSObject>] [-Break]
 [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>]
 [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [<CommonParameters>]
```

### GetViaIdentity
```
Get-AzCloudServicePublicIPAddress -InputObject <ICloudServiceIdentity> [-Expand <String>]
 [-DefaultProfile <PSObject>] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] [<CommonParameters>]
```

## DESCRIPTION
Get the specified public IP address in a cloud service.

## EXAMPLES

### EXAMPLE 1
```
Get-AzCloudServicePublicIPAddress -ResourceGroupName "BRGThree" -CloudServiceName BService -SubscriptionId 1133e0eb-b53c-1234-b478-2eac8f04afca
```

### EXAMPLE 2
```
$cs = Get-AzCloudService -ResourceGroupName "BRGThree" -CloudServiceName BService -SubscriptionId 1133e0eb-b53c-1234-b478-2eac8f04afca
Get-AzCloudServicePublicIPAddress -InputObject $cs
```

## PARAMETERS

### -CloudServiceName
The name of the cloud service.

```yaml
Type: String
Parameter Sets: List, List1, Get
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -IPConfigurationName
The name of the IP configuration.

```yaml
Type: String
Parameter Sets: List1, Get
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Name
The name of the public IP Address.

```yaml
Type: String
Parameter Sets: Get
Aliases: PublicIPAddressName

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -NetworkInterfaceName
The name of the network interface.

```yaml
Type: String
Parameter Sets: List1, Get
Aliases:

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
Parameter Sets: List, List1, Get
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RoleInstanceName
The role instance name.

```yaml
Type: String
Parameter Sets: List1, Get
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
Parameter Sets: List, List1, Get
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
Type: ICloudServiceIdentity
Parameter Sets: GetViaIdentity
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Expand
Expands referenced resources.

```yaml
Type: String
Parameter Sets: Get, GetViaIdentity
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.ICloudServiceIdentity
## OUTPUTS

### Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20220701.IPublicIPAddress
## NOTES
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties.
For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT \<ICloudServiceIdentity\>: Identity Parameter
  \[CloudServiceName \<String\>\]: Name of the cloud service.
  \[IPConfigurationName \<String\>\]: The IP configuration name.
  \[Id \<String\>\]: Resource identity path
  \[Location \<String\>\]: Name of the location that the OS version pertains to.
  \[NetworkInterfaceName \<String\>\]: The name of the network interface.
  \[OSFamilyName \<String\>\]: Name of the OS family.
  \[OSVersionName \<String\>\]: Name of the OS version.
  \[PublicIPAddressName \<String\>\]: The name of the public IP Address.
  \[ResourceGroupName \<String\>\]: Name of the resource group.
  \[RoleInstanceName \<String\>\]: Name of the role instance.
  \[RoleName \<String\>\]: Name of the role.
  \[SubscriptionId \<String\>\]: Subscription credentials which uniquely identify Microsoft Azure subscription.
The subscription ID forms part of the URI for every service call.
  \[UpdateDomain \<Int32?\>\]: Specifies an integer value that identifies the update domain.
Update domains are identified with a zero-based index: the first update domain has an ID of 0, the second has an ID of 1, and so on.

## RELATED LINKS

[https://learn.microsoft.com/powershell/module/az.cloudservice/get-azcloudservicepublicipaddress](https://learn.microsoft.com/powershell/module/az.cloudservice/get-azcloudservicepublicipaddress)

