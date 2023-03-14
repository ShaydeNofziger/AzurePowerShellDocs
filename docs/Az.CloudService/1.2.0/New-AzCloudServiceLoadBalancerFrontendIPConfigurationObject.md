---
external help file: Az.CloudService-help.xml
Module Name: Az.CloudService
online version: https://learn.microsoft.com/powershell/module/az.cloudservice/new-azcloudserviceloadbalancerfrontendipconfigurationobject
schema: 2.0.0
---

# New-AzCloudServiceLoadBalancerFrontendIPConfigurationObject

## SYNOPSIS
Create a in-memory object for LoadBalancerFrontendIPConfiguration

## SYNTAX

### DefaultParameterSet (Default)
```
New-AzCloudServiceLoadBalancerFrontendIPConfigurationObject [-Name <String>] [-PublicIPAddressId <String>]
 [<CommonParameters>]
```

### PrivateIP
```
New-AzCloudServiceLoadBalancerFrontendIPConfigurationObject [-Name <String>] [-PrivateIPAddress <String>]
 [-SubnetId <String>] [<CommonParameters>]
```

## DESCRIPTION
Create a in-memory object for LoadBalancerFrontendIPConfiguration

## EXAMPLES

### EXAMPLE 1
```
$publicIP = Get-AzPublicIpAddress -ResourceGroupName 'ContosoOrg' -Name 'ContosoPublicIP'
$feIpConfig = New-AzCloudServiceLoadBalancerFrontendIPConfigurationObject -Name 'ContosoFe' -PublicIPAddressId $publicIp.Id
$loadBalancerConfig = New-AzCloudServiceLoadBalancerConfigurationObject -Name 'ContosoLB' -FrontendIPConfiguration $feIpConfig
```

### EXAMPLE 2
```
# Create role profile object
$subnet = New-AzVirtualNetworkSubnetConfig -Name "WebTier" -AddressPrefix "10.0.0.0/24" -WarningAction SilentlyContinue 
$feIpConfig = New-AzCloudServiceLoadBalancerFrontendIPConfigurationObject -Name 'ContosoFe' -privateIPAddress '10.0.0.6' -subnetId $Subnet.Id
$loadBalancerConfig = New-AzCloudServiceLoadBalancerConfigurationObject -Name 'ContosoLB' -FrontendIPConfiguration $feIpConfig
```

## PARAMETERS

### -Name
Name of FrontendIpConfigration.

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

### -PublicIPAddressId
Resource Id.

```yaml
Type: String
Parameter Sets: DefaultParameterSet
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PrivateIPAddress
Private IP Address

```yaml
Type: String
Parameter Sets: PrivateIP
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SubnetId
Subnet ID

```yaml
Type: String
Parameter Sets: PrivateIP
Aliases:

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

### Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20220904.LoadBalancerFrontendIPConfiguration
## NOTES

## RELATED LINKS

[https://learn.microsoft.com/powershell/module/az.cloudservice/new-azcloudserviceloadbalancerfrontendipconfigurationobject](https://learn.microsoft.com/powershell/module/az.cloudservice/new-azcloudserviceloadbalancerfrontendipconfigurationobject)

