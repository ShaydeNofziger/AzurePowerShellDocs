---
external help file: Microsoft.Azure.PowerShell.Cmdlets.Network.dll-Help.xml
Module Name: Az.Network
online version: https://learn.microsoft.com/powershell/module/az.network/get-azvirtualnetworkgateway
schema: 2.0.0
---

# Get-AzVirtualNetworkGateway

## SYNOPSIS
Gets a Virtual Network Gateway

## SYNTAX

```
Get-AzVirtualNetworkGateway [-Name <String>] -ResourceGroupName <String>
 [-DefaultProfile <IAzureContextContainer>] [<CommonParameters>]
```

## DESCRIPTION
The Virtual Network Gateway is the object representing your gateway in Azure.
The Get-AzVirtualNetworkGateway cmdlet returns the object of your gateway in Azure based on Name and Resource Group Name.

## EXAMPLES

### Example 1: Get a Virtual Network Gateway
```
Get-AzVirtualNetworkGateway -Name myGateway1 -ResourceGroupName myRG
```

Returns the object of the Virtual Network Gateway with the name "myGateway1" within the resource group "myRG"

### Example 2: Get a Virtual Network Gateway
```
Get-AzVirtualNetworkGateway -Name myGateway* -ResourceGroupName myRG
```

Returns all Virtual Network Gateways that start with "myGateway" within the resource group "myRG"

## PARAMETERS

### -DefaultProfile
The credentials, account, tenant, and subscription used for communication with azure.

```yaml
Type: IAzureContextContainer
Parameter Sets: (All)
Aliases: AzContext, AzureRmContext, AzureCredential

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Name
@{Text=}

```yaml
Type: String
Parameter Sets: (All)
Aliases: ResourceName

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: True
```

### -ResourceGroupName
@{Text=}

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: True
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### System.String
## OUTPUTS

### Microsoft.Azure.Commands.Network.Models.PSVirtualNetworkGateway
## NOTES

## RELATED LINKS

[New-AzVirtualNetworkGateway]()

[Remove-AzVirtualNetworkGateway]()

[Reset-AzVirtualNetworkGateway]()

[Resize-AzVirtualNetworkGateway]()

[Set-AzVirtualNetworkGateway]()

