---
external help file: Microsoft.Azure.PowerShell.Cmdlets.ApiManagement.dll-Help.xml
Module Name: Az.ApiManagement
online version: https://docs.microsoft.com/powershell/module/az.apimanagement/remove-azapimanagementregion
schema: 2.0.0
---

# Remove-AzApiManagementRegion

## SYNOPSIS
Removes an existing deployment region from PsApiManagement instance.

## SYNTAX

```
Remove-AzApiManagementRegion -ApiManagement <PsApiManagement> -Location <String>
 [-DefaultProfile <IAzureContextContainer>] [<CommonParameters>]
```

## DESCRIPTION
The Remove-AzApiManagementRegion cmdlet removes instance of type Microsoft.Azure.Commands.ApiManagement.Models.PsApiManagementRegion from a collection of AdditionalRegions of provided the instance of type Microsoft.Azure.Commands.ApiManagement.Models.PsApiManagement .
This cmdlet does not modify deployment by itself but updates the instance of PsApiManagement in-memory.
To update a deployment of an API Management, pass the modified PsApiManagementInstance to Set-AzApiManagement .

## EXAMPLES

### Example 1: Remove a region from a PsApiManagement instance
```
Remove-AzApiManagementRegion -ApiManagement $ApiManagement -Location "East US"
```

This command removes the region named East US from the PsApiManagement instance.

### Example 2: Remove a region from a PsApiManagement instance using a series of commands
```
Get-AzApiManagement -ResourceGroupName "Contoso" -Name ContosoApi | Remove-AzApiManagementRegion -Location "East US" | Set-AzApiManagement
```

This first command gets an instance of PsApiManagement from the resource group named Contoso named ContosoApi.
The final command then removes the region named East US from that instance then updates the deployment.

## PARAMETERS

### -ApiManagement
Specifies the PsApiManagement instance that this cmdlet removes the additional deployment region from.

```yaml
Type: PsApiManagement
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -DefaultProfile
@{Text=}

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

### -Location
Specifies the location of the region that this cmdlet removes.
Specifies the location of the new deployment region amongst the supported region for Api Management service.
To obtain valid locations, use the cmdlet Get-AzResourceProvider -ProviderNamespace "Microsoft.ApiManagement" | where {$_.ResourceTypes\[0\].ResourceTypeName -eq "service"} | Select-Object Locations

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### Microsoft.Azure.Commands.ApiManagement.Models.PsApiManagement
### System.String
## OUTPUTS

### Microsoft.Azure.Commands.ApiManagement.Models.PsApiManagement
## NOTES

## RELATED LINKS

[Add-AzApiManagementRegion]()

[Update-AzApiManagementRegion]()

