---
external help file: Az.CloudService-help.xml
Module Name: Az.CloudService
online version: https://learn.microsoft.com/powershell/module/az.cloudservice/new-azcloudserviceroleprofilepropertiesobject
schema: 2.0.0
---

# New-AzCloudServiceRoleProfilePropertiesObject

## SYNOPSIS
Create a in-memory object for CloudServiceRoleProfileProperties

## SYNTAX

```
New-AzCloudServiceRoleProfilePropertiesObject [-Name <String>] [-SkuCapacity <Int64>] [-SkuName <String>]
 [-SkuTier <String>] [<CommonParameters>]
```

## DESCRIPTION
Create a in-memory object for CloudServiceRoleProfileProperties

## EXAMPLES

### EXAMPLE 1
```
$role = New-AzCloudServiceRoleProfilePropertiesObject -Name 'WebRole' -SkuName 'Standard_D1_v2' -SkuTier 'Standard' -SkuCapacity 2
```

## PARAMETERS

### -Name
Name of role profile.

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

### -SkuCapacity
Specifies the number of role instances in the cloud service.

```yaml
Type: Int64
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -SkuName
The sku name.

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

### -SkuTier
SkuTier.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20220904.CloudServiceRoleProfileProperties
## NOTES

## RELATED LINKS

[https://learn.microsoft.com/powershell/module/az.cloudservice/new-azcloudserviceroleprofilepropertiesobject](https://learn.microsoft.com/powershell/module/az.cloudservice/new-azcloudserviceroleprofilepropertiesobject)

