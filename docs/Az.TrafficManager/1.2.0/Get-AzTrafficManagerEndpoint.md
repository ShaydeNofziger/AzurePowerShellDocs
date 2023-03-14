﻿---
external help file: Microsoft.Azure.PowerShell.Cmdlets.TrafficManager.dll-Help.xml
Module Name: Az.TrafficManager
online version: https://learn.microsoft.com/powershell/module/az.trafficmanager/get-aztrafficmanagerendpoint
schema: 2.0.0
---

# Get-AzTrafficManagerEndpoint

## SYNOPSIS
Gets an endpoint for a Traffic Manager profile.

## SYNTAX

### Fields
```
Get-AzTrafficManagerEndpoint -Name <String> -Type <String> -ProfileName <String> -ResourceGroupName <String>
 [-DefaultProfile <IAzureContextContainer>] [<CommonParameters>]
```

### Object
```
Get-AzTrafficManagerEndpoint -TrafficManagerEndpoint <TrafficManagerEndpoint>
 [-DefaultProfile <IAzureContextContainer>] [<CommonParameters>]
```

## DESCRIPTION
The Get-AzTrafficManagerEndpoint cmdlet gets an endpoint for an Azure Traffic Manager profile.

You can modify this object locally, and then apply changes to the profile by using the Set-AzTrafficManagerEndpoint cmdlet.
Specify the endpoint by using the Name and Type parameters.
You can specify the Traffic Manager profile either by using the ProfileName and ResourceGroupName parameter, or by specifying a TrafficManagerProfile object.
Alternatively, you can pass that value by using the pipeline.

## EXAMPLES

### Example 1: Get an endpoint
```
$TrafficManagerEndpoint = Get-AzTrafficManagerEndpoint -Name "contoso" -ProfileName "ContosoProfile" -ResourceGroupName "ResourceGroup11" -Type AzureEndpoints
```

This command gets the Azure endpoint named contoso from the profile named ContosoProfile in the resource group named ResourceGroup11, and then stores that object in the $TrafficManagerEndpoint variable.

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
Specifies the name of the Traffic Manager endpoint that this cmdlet gets.

```yaml
Type: String
Parameter Sets: Fields
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ProfileName
Specifies the name of the Traffic Manager endpoint that this cmdlet gets.

```yaml
Type: String
Parameter Sets: Fields
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ResourceGroupName
Specifies the name of a resource group.
This cmdlet gets a Traffic Manager endpoint in the group that this parameter specifies.

```yaml
Type: String
Parameter Sets: Fields
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TrafficManagerEndpoint
Specifies the Traffic Manager endpoint that this cmdlet gets.

```yaml
Type: TrafficManagerEndpoint
Parameter Sets: Object
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Type
Specifies the type of endpoint that this cmdlet adds to the Traffic Manager profile.
Valid values are:

- AzureEndpoints
- ExternalEndpoints
- NestedEndpoints

```yaml
Type: String
Parameter Sets: Fields
Aliases:
Accepted values: AzureEndpoints, ExternalEndpoints, NestedEndpoints

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### Microsoft.Azure.Commands.TrafficManager.Models.TrafficManagerEndpoint
## OUTPUTS

### Microsoft.Azure.Commands.TrafficManager.Models.TrafficManagerEndpoint
## NOTES

## RELATED LINKS

[Disable-AzTrafficManagerEndpoint]()

[Enable-AzTrafficManagerEndpoint]()

[New-AzTrafficManagerEndpoint]()

[Remove-AzTrafficManagerEndpoint]()

[Set-AzTrafficManagerEndpoint]()
