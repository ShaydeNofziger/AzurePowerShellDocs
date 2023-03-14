---
external help file: Az.ApplicationInsights-help.xml
Module Name: Az.ApplicationInsights
online version: https://learn.microsoft.com/powershell/module/az.ApplicationInsights/new-AzApplicationInsightsWorkbookTemplateGalleryObject
schema: 2.0.0
---

# New-AzApplicationInsightsWorkbookTemplateGalleryObject

## SYNOPSIS
Create an in-memory object for WorkbookTemplateGallery.

## SYNTAX

```
New-AzApplicationInsightsWorkbookTemplateGalleryObject [-Category <String>] [-Name <String>] [-Order <Int32>]
 [-ResourceType <String>] [-Type <String>] [<CommonParameters>]
```

## DESCRIPTION
Create an in-memory object for WorkbookTemplateGallery.

## EXAMPLES

### EXAMPLE 1
```
New-AzApplicationInsightsWorkbookTemplateGalleryObject -Category "Failures" -Name "Simple Template" -Type 'tsg' -ResourceType "microsoft.insights/components" -Order 100
```

## PARAMETERS

### -Category
Category for the gallery.

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

### -Name
Name of the workbook template in the gallery.

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

### -Order
Order of the template within the gallery.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -ResourceType
Azure resource type supported by the gallery.

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

### -Type
Type of workbook supported by the workbook template.

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

### Microsoft.Azure.PowerShell.Cmdlets.ApplicationInsights.Models.Api20201120.WorkbookTemplateGallery
## NOTES

## RELATED LINKS

[https://learn.microsoft.com/powershell/module/az.ApplicationInsights/new-AzApplicationInsightsWorkbookTemplateGalleryObject](https://learn.microsoft.com/powershell/module/az.ApplicationInsights/new-AzApplicationInsightsWorkbookTemplateGalleryObject)

