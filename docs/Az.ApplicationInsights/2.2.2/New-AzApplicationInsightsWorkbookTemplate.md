---
external help file: Az.ApplicationInsights-help.xml
Module Name: Az.ApplicationInsights
online version: https://learn.microsoft.com/powershell/module/az.applicationinsights/new-azapplicationinsightsworkbooktemplate
schema: 2.0.0
---

# New-AzApplicationInsightsWorkbookTemplate

## SYNOPSIS
Create a new workbook template.

## SYNTAX

```
New-AzApplicationInsightsWorkbookTemplate -Name <String> -ResourceGroupName <String> [-SubscriptionId <String>]
 -Location <String> [-Author <String>] [-Gallery <IWorkbookTemplateGallery[]>] [-Localized <Hashtable>]
 [-Priority <Int32>] [-Tag <Hashtable>] [-TemplateData <Hashtable>] [-DefaultProfile <PSObject>] [-Break]
 [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>]
 [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
Create a new workbook template.

## EXAMPLES

### EXAMPLE 1
```
$gallery = New-AzApplicationInsightsWorkbookTemplateGalleryObject -Category "Failures" -Name "Simple Template" -Type 'tsg' -ResourceType "microsoft.insights/components" -Order 100
$data = @{
  "version"= "Notebook/1.0";
  "items"= @(
    @{
      "type"= 1;
      "content"= @{
        "json"= "## New workbook\n---\n\nWelcome to your new workbook.  This area will display text formatted as markdown.\n\n\nWe've included a basic analytics query to get you started. Use the `Edit` button below each section to configure it or add more sections."
      };
      "name"= "text - 2"
    },
    @{
      "type"= 3;
      "content"= @{
        "version"= "KqlItem/1.0";
        "query"= "union withsource=TableName *\n| summarize Count=count() by TableName\n| render barchart";
        "size"= 1;
        "exportToExcelOptions"= "visible";
        "queryType"= 0;
        "resourceType"= "microsoft.operationalinsights/workspaces"
      };
      "name"= "query - 2"
    }
  );
  "styleSettings"= @{};
  "$schema"= "https://github.com/Microsoft/Application-Insights-Workbooks/blob/master/schema/workbook.json"
}
```

New-AzApplicationInsightsWorkbookTemplate -ResourceGroupName resourceGroup -Name 'workbooktemplate-pwsh01' -Location 'westus2' -Gallery $gallery -TemplateData $data -Priority 1

## PARAMETERS

### -Name
The name of the Application Insights component resource.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ResourceGroupName
The name of the resource group.
The name is case insensitive.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SubscriptionId
The ID of the target subscription.

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

### -Location
Resource location

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Author
Information about the author of the workbook template.

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

### -Gallery
Workbook galleries supported by the template.
To construct, see NOTES section for GALLERY properties and create a hash table.

```yaml
Type: IWorkbookTemplateGallery[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Localized
Key value pair of localized gallery.
Each key is the locale code of languages supported by the Azure portal.

```yaml
Type: Hashtable
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Priority
Priority of the template.
Determines which template to open when a workbook gallery is opened in viewer mode.

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

### -Tag
Resource tags

```yaml
Type: Hashtable
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TemplateData
Valid JSON object containing workbook template payload.

```yaml
Type: Hashtable
Parameter Sets: (All)
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

### -WhatIf
Shows what would happen if the cmdlet runs.
The cmdlet is not run.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: wi

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Confirm
Prompts you for confirmation before running the cmdlet.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: cf

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

### Microsoft.Azure.PowerShell.Cmdlets.ApplicationInsights.Models.Api20201120.IWorkbookTemplate
## NOTES
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties.
For information on hash tables, run Get-Help about_Hash_Tables.

GALLERY \<IWorkbookTemplateGallery\[\]\>: Workbook galleries supported by the template.
  \[Category \<String\>\]: Category for the gallery.
  \[Name \<String\>\]: Name of the workbook template in the gallery.
  \[Order \<Int32?\>\]: Order of the template within the gallery.
  \[ResourceType \<String\>\]: Azure resource type supported by the gallery.
  \[Type \<String\>\]: Type of workbook supported by the workbook template.

## RELATED LINKS

[https://learn.microsoft.com/powershell/module/az.applicationinsights/new-azapplicationinsightsworkbooktemplate](https://learn.microsoft.com/powershell/module/az.applicationinsights/new-azapplicationinsightsworkbooktemplate)

