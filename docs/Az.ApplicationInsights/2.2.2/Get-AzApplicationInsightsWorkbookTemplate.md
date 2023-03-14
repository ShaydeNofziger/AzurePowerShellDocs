﻿---
external help file: Az.ApplicationInsights-help.xml
Module Name: Az.ApplicationInsights
online version: https://learn.microsoft.com/powershell/module/az.applicationinsights/get-azapplicationinsightsworkbooktemplate
schema: 2.0.0
---

# Get-AzApplicationInsightsWorkbookTemplate

## SYNOPSIS
Get a single workbook template by its resourceName.

## SYNTAX

### Get (Default)
```
Get-AzApplicationInsightsWorkbookTemplate -Name <String> -ResourceGroupName <String>
 [-SubscriptionId <String[]>] [-DefaultProfile <PSObject>] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] [<CommonParameters>]
```

### GetViaIdentity
```
Get-AzApplicationInsightsWorkbookTemplate -InputObject <IApplicationInsightsIdentity>
 [-DefaultProfile <PSObject>] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] [<CommonParameters>]
```

## DESCRIPTION
Get a single workbook template by its resourceName.

## EXAMPLES

### EXAMPLE 1
```
Get-AzApplicationInsightsWorkbookTemplate -ResourceGroupName resourceGroup -Name workbooktemplate-pwsh01
```

### EXAMPLE 2
```
$gallery = New-AzApplicationInsightsWorkbookTemplateGalleryObject -Category "Failures" -Name "Simple Template" -Type 'tsg' -ResourceType "microsoft.insights/components" -Order 100
```

$data = @{
  "version"= "Notebook/1.0";
  "items"= @(
    @{
      "type"= 1;
      "content"= @{
        "json"= "## New workbook\n---\n\nWelcome to your new workbook. 
This area will display text formatted as markdown.\n\n\nWe've included a basic analytics query to get you started.
Use the \`Edit\` button below each section to configure it or add more sections."
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

New-AzApplicationInsightsWorkbookTemplate -ResourceGroupName resourceGroup -Name 'workbooktemplate-pwsh01' -Location 'westus2' -Gallery $gallery -TemplateData $data -Priority 1 | Get-AzApplicationInsightsWorkbookTemplate

## PARAMETERS

### -Name
The name of the Application Insights component resource.

```yaml
Type: String
Parameter Sets: Get
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
Parameter Sets: Get
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
Type: String[]
Parameter Sets: Get
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
Type: IApplicationInsightsIdentity
Parameter Sets: GetViaIdentity
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
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

### Microsoft.Azure.PowerShell.Cmdlets.ApplicationInsights.Models.IApplicationInsightsIdentity
## OUTPUTS

### Microsoft.Azure.PowerShell.Cmdlets.ApplicationInsights.Models.Api20201120.IWorkbookTemplate
## NOTES
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties.
For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT \<IApplicationInsightsIdentity\>: Identity Parameter
  \[AnnotationId \<String\>\]: The unique annotation ID.
This is unique within a Application Insights component.
  \[ComponentName \<String\>\]: The name of the Application Insights component resource.
  \[ExportId \<String\>\]: The Continuous Export configuration ID.
This is unique within a Application Insights component.
  \[Id \<String\>\]: Resource identity path
  \[KeyId \<String\>\]: The API Key ID.
This is unique within a Application Insights component.
  \[PurgeId \<String\>\]: In a purge status request, this is the Id of the operation the status of which is returned.
  \[ResourceGroupName \<String\>\]: The name of the resource group.
The name is case insensitive.
  \[ResourceName \<String\>\]: The name of the Application Insights component resource.
  \[RevisionId \<String\>\]: The id of the workbook's revision.
  \[StorageType \<StorageType?\>\]: The type of the Application Insights component data source for the linked storage account.
  \[SubscriptionId \<String\>\]: The ID of the target subscription.
  \[WebTestName \<String\>\]: The name of the Application Insights WebTest resource.

## RELATED LINKS

[https://learn.microsoft.com/powershell/module/az.applicationinsights/get-azapplicationinsightsworkbooktemplate](https://learn.microsoft.com/powershell/module/az.applicationinsights/get-azapplicationinsightsworkbooktemplate)

