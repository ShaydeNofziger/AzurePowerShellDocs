---
external help file: Az.ApplicationInsights-help.xml
Module Name: Az.ApplicationInsights
online version: https://learn.microsoft.com/powershell/module/az.applicationinsights/get-azapplicationinsights
schema: 2.0.0
---

# Get-AzApplicationInsights

## SYNOPSIS
Returns an Application Insights component.

## SYNTAX

### ListBySubscription (Default)
```
Get-AzApplicationInsights [-SubscriptionId <String[]>] [-DefaultProfile <PSObject>] [-Break]
 [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>]
 [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [<CommonParameters>]
```

### Get
```
Get-AzApplicationInsights [-SubscriptionId <String[]>] -ResourceGroupName <String> -Name <String> [-Full]
 [-DefaultProfile <PSObject>] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] [<CommonParameters>]
```

### ListByResourceGroupName
```
Get-AzApplicationInsights [-SubscriptionId <String[]>] -ResourceGroupName <String> [-DefaultProfile <PSObject>]
 [-Break] [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>]
 [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [<CommonParameters>]
```

### GetByResourceId
```
Get-AzApplicationInsights -ResourceId <String> [-Full] [-DefaultProfile <PSObject>] [-Break]
 [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>]
 [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [<CommonParameters>]
```

### GetByInputObject
```
Get-AzApplicationInsights -InputObject <IApplicationInsightsIdentity> [-DefaultProfile <PSObject>] [-Break]
 [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>]
 [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [<CommonParameters>]
```

## DESCRIPTION
Returns an Application Insights component.

## EXAMPLES

### EXAMPLE 1
```
Get-AzApplicationInsights -ResourceGroupName "testgroup" -Name "test"
```

### EXAMPLE 2
```
Get-AzApplicationInsights -ResourceGroupName "testgroup" -Name "test" -IncludePricingPlan
```

## PARAMETERS

### -SubscriptionId
The ID of the target subscription.

```yaml
Type: String[]
Parameter Sets: ListBySubscription, Get, ListByResourceGroupName
Aliases:

Required: False
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
Parameter Sets: Get, ListByResourceGroupName
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Name
The name of the Application Insights component resource.

```yaml
Type: String
Parameter Sets: Get
Aliases: ApplicationInsightsComponentName, ComponentName

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ResourceId
The resource ID of applicationinsights component.

```yaml
Type: String
Parameter Sets: GetByResourceId
Aliases:

Required: True
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
Parameter Sets: GetByInputObject
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Full
{{ Fill Full Description }}

```yaml
Type: SwitchParameter
Parameter Sets: Get, GetByResourceId
Aliases: IncludeDailyCap, IncludeDailyCapStatus, IncludePricingPlan

Required: False
Position: Named
Default value: False
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### Microsoft.Azure.PowerShell.Cmdlets.ApplicationInsights.Models.IApplicationInsightsIdentity
## OUTPUTS

### Microsoft.Azure.PowerShell.Cmdlets.ApplicationInsights.Models.Api202002.IApplicationInsightsComponent
### Microsoft.Azure.PowerShell.Cmdlets.ApplicationInsights.Models.PSApplicationInsightsComponentWithPricingPlan
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

[https://learn.microsoft.com/powershell/module/az.applicationinsights/get-azapplicationinsights](https://learn.microsoft.com/powershell/module/az.applicationinsights/get-azapplicationinsights)

