---
external help file: Microsoft.Azure.PowerShell.Cmdlets.Websites.dll-Help.xml
Module Name: Az.Websites
online version: https://learn.microsoft.com/powershell/module/az.websites/get-azappserviceplan
schema: 2.0.0
---

# Get-AzAppServicePlan

## SYNOPSIS
Gets an Azure App Service plan in the specified resource group.

## SYNTAX

### S1
```
Get-AzAppServicePlan [[-ResourceGroupName] <String>] [[-Name] <String>]
 [-DefaultProfile <IAzureContextContainer>] [<CommonParameters>]
```

### S2
```
Get-AzAppServicePlan [-Location] <String> [-DefaultProfile <IAzureContextContainer>] [<CommonParameters>]
```

## DESCRIPTION
The Get-AzAppServicePlan cmdlet gets an Azure App Service plan in the specified resource group.

## EXAMPLES

### Example 1: Get an App Service plan from a resource group
```
Get-AzAppServicePlan -ResourceGroupName "Default-Web-WestUS" -Name "ContosoASP"
```

This command gets the App Service plan named ContosoASP that belongs to the resource group named Default-Web-WestUS.

### Example 2: Get all App Service plans in a location
```
Get-AzAppServicePlan -Location "West US"
```

This command gets all App Service plans located in the "West US" region.

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

### -Location
Location

```yaml
Type: String
Parameter Sets: S2
Aliases:

Required: True
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Name
App Service Plan Name

```yaml
Type: String
Parameter Sets: S1
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ResourceGroupName
Resource Group Name

```yaml
Type: String
Parameter Sets: S1
Aliases:

Required: False
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None
## OUTPUTS

### Microsoft.Azure.Commands.WebApps.Models.WebApp.PSAppServicePlan
## NOTES

## RELATED LINKS

[New-AzAppServicePlan]()

[Remove-AzAppServicePlan]()

[Set-AzAppServicePlan]()

