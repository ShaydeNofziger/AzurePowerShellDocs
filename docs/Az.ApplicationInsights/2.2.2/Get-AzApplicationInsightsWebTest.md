---
external help file: Az.ApplicationInsights-help.xml
Module Name: Az.ApplicationInsights
online version: https://learn.microsoft.com/powershell/module/az.applicationinsights/get-azapplicationinsightswebtest
schema: 2.0.0
---

# Get-AzApplicationInsightsWebTest

## SYNOPSIS
Get a specific Application Insights web test definition.

## SYNTAX

### List1 (Default)
```
Get-AzApplicationInsightsWebTest [-SubscriptionId <String[]>] [-DefaultProfile <PSObject>] [-Break]
 [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>]
 [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [<CommonParameters>]
```

### Get
```
Get-AzApplicationInsightsWebTest -Name <String> -ResourceGroupName <String> [-SubscriptionId <String[]>]
 [-DefaultProfile <PSObject>] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] [<CommonParameters>]
```

### List2
```
Get-AzApplicationInsightsWebTest -ResourceGroupName <String> [-SubscriptionId <String[]>]
 -AppInsightsName <String> [-DefaultProfile <PSObject>] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] [<CommonParameters>]
```

### List
```
Get-AzApplicationInsightsWebTest -ResourceGroupName <String> [-SubscriptionId <String[]>]
 [-DefaultProfile <PSObject>] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] [<CommonParameters>]
```

### GetViaIdentity
```
Get-AzApplicationInsightsWebTest -InputObject <IApplicationInsightsIdentity> [-DefaultProfile <PSObject>]
 [-Break] [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>]
 [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [<CommonParameters>]
```

## DESCRIPTION
Get a specific Application Insights web test definition.

## EXAMPLES

### EXAMPLE 1
```
Get-AzApplicationInsightsWebTest
```

### EXAMPLE 2
```
Get-AzApplicationInsightsWebTest -ResourceGroupName azpwsh-rg-test
```

### EXAMPLE 3
```
Get-AzApplicationInsightsWebTest -ResourceGroupName azpwsh-rg-test -AppInsightsName appinsights-portal01
```

### EXAMPLE 4
```
Get-AzApplicationInsightsWebTest -ResourceGroupName azpwsh-rg-test -Name standard-pwsh01
```

### EXAMPLE 5
```
$location01 = New-AzApplicationInsightsWebTestGeolocationObject -Location "emea-nl-ams-azr"
$location02 = New-AzApplicationInsightsWebTestGeolocationObject -Location "us-ca-sjc-azr"
New-AzApplicationInsightsWebTest -ResourceGroupName azpwsh-rg-test -Name standardwebtestpwsh03 -Location 'westus2' `
-Tag @{"hidden-link:/subscriptions/xxxxxxxxxx-xxxx-xxxxx-xxxxxxxxxxxx/resourceGroups/azpwsh-rg-test/providers/microsoft.insights/components/appinsightsportal01" = "Resource"} `
-RequestUrl "https://docs.microsoft.com/" -RequestHttpVerb "GET" `
-TestName 'standardwebtestpwsh03' `
-RuleSslCheck -RuleSslCertRemainingLifetimeCheck 7 -RuleExpectedHttpStatusCode 200 `
-Enabled -Frequency 300 -Timeout 120 -Kind "standard" -RetryEnabled -GeoLocation $location01, $location02 ` |Get-AzApplicationInsightsWebTest
```

## PARAMETERS

### -Name
The name of the Application Insights WebTest resource.

```yaml
Type: String
Parameter Sets: Get
Aliases: WebTestName

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
Parameter Sets: Get, List2, List
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
Parameter Sets: List1, Get, List2, List
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

### -AppInsightsName
The name of the Application Insights component resource.

```yaml
Type: String
Parameter Sets: List2
Aliases:

Required: True
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### Microsoft.Azure.PowerShell.Cmdlets.ApplicationInsights.Models.IApplicationInsightsIdentity
## OUTPUTS

### Microsoft.Azure.PowerShell.Cmdlets.ApplicationInsights.Models.Api20220615.IWebTest
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

[https://learn.microsoft.com/powershell/module/az.applicationinsights/get-azapplicationinsightswebtest](https://learn.microsoft.com/powershell/module/az.applicationinsights/get-azapplicationinsightswebtest)

