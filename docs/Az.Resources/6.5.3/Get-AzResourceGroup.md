﻿---
external help file: Microsoft.Azure.PowerShell.Cmdlets.ResourceManager.dll-Help.xml
Module Name: Az.Resources
online version: https://learn.microsoft.com/powershell/module/az.resources/get-azresourcegroup
schema: 2.0.0
---

# Get-AzResourceGroup

## SYNOPSIS
Gets resource groups.

## SYNTAX

### GetByResourceGroupName (Default)
```
Get-AzResourceGroup [[-Name] <String>] [[-Location] <String>] [-Tag <Hashtable>] [-ApiVersion <String>] [-Pre]
 [-DefaultProfile <IAzureContextContainer>] [<CommonParameters>]
```

### GetByResourceGroupId
```
Get-AzResourceGroup [[-Location] <String>] [-Id <String>] [-ApiVersion <String>] [-Pre]
 [-DefaultProfile <IAzureContextContainer>] [<CommonParameters>]
```

## DESCRIPTION
The Get-AzResourceGroup cmdlet gets Azure resource groups in the current subscription.
You can get all resource groups, or specify a resource group by name or by other properties.
By default, this cmdlet gets all resource groups in the current subscription.
For more information about Azure resources and Azure resource groups, see the New-AzResourceGroup cmdlet.

## EXAMPLES

### Example 1: Get a resource group by name
```
Get-AzResourceGroup -Name "EngineerBlog"
```

This command gets the Azure resource group in your subscription named EngineerBlog.

### Example 2: Get all tags of a resource group
```
(Get-AzResourceGroup -Name "ContosoRG").Tags
```

This command gets the resource group named ContosoRG, and displays the tags associated with that group.

### Example 3: Get resource groups based on tag
```
Get-AzResourceGroup -Tag @{'environment'='prod'}
```

### Example 4: Show the Resource groups by location
```
Get-AzResourceGroup |
  Sort-Object Location,ResourceGroupName |
    Format-Table -GroupBy Location ResourceGroupName,ProvisioningState,Tags
```

### Example 5: Show the names of all the Resource groups in a particular location
```
Get-AzResourceGroup -Location westus2 |
  Sort-Object ResourceGroupName |
    Format-Wide ResourceGroupName -Column 4
```

### Example 6: Show the Resource groups whose names begin with WebServer
```
Get-AzResourceGroup -Name WebServer*
```

## PARAMETERS

### -ApiVersion
Specifies the API version that is supported by the resource Provider.
You can specify a different version than the default version.

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

### -DefaultProfile
The credentials, account, tenant, and subscription used for communication with azure

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

### -Id
Specifies the ID of the resource group to get.
Wildcard characters are not permitted.

```yaml
Type: String
Parameter Sets: GetByResourceGroupId
Aliases: ResourceGroupId, ResourceId

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Location
Specifies the location of the resource group to get.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Name
Specifies the name of the resource group to get.
This parameter supports wildcards at the beginning and/or the end of the string.

```yaml
Type: String
Parameter Sets: GetByResourceGroupName
Aliases: ResourceGroupName

Required: False
Position: 0
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: True
```

### -Pre
Indicates that this cmdlet considers pre-release API versions when it automatically determines which version to use.

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

### -Tag
The tag hashtable to filter resource groups by.

```yaml
Type: Hashtable
Parameter Sets: GetByResourceGroupName
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### System.String
### System.Collections.Hashtable
## OUTPUTS

### Microsoft.Azure.Commands.ResourceManager.Cmdlets.SdkModels.PSResourceGroup
## NOTES

## RELATED LINKS

[New-AzResourceGroup]()

[Remove-AzResourceGroup]()

[Set-AzResourceGroup]()
