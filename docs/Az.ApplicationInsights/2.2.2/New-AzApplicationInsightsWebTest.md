---
external help file: Az.ApplicationInsights-help.xml
Module Name: Az.ApplicationInsights
online version: https://learn.microsoft.com/powershell/module/az.applicationinsights/new-azapplicationinsightswebtest
schema: 2.0.0
---

# New-AzApplicationInsightsWebTest

## SYNOPSIS
Creates or updates an Application Insights web test definition.

## SYNTAX

### CreateStandard (Default)
```
New-AzApplicationInsightsWebTest -Name <String> -ResourceGroupName <String> [-SubscriptionId <String>]
 -Location <String> [-ContentIgnoreCase] [-ContentMatch <String>] [-ContentPassIfTextFound]
 [-Description <String>] [-Enabled] [-Frequency <Int32>] [-GeoLocation <IWebTestGeolocation[]>]
 [-Kind <WebTestKindEnum>] [-RequestBody <String>] [-RequestFollowRedirect] [-RequestHeader <IHeaderField[]>]
 [-RequestHttpVerb <String>] [-RequestParseDependent] [-RequestUrl <String>] [-RetryEnabled]
 [-RuleExpectedHttpStatusCode <Int32>] [-RuleIgnoreHttpsStatusCode]
 [-RuleSslCertRemainingLifetimeCheck <Int32>] [-RuleSslCheck] [-Tag <Hashtable>] [-TestName <String>]
 [-Timeout <Int32>] [-DefaultProfile <PSObject>] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### CreateClassic
```
New-AzApplicationInsightsWebTest -Name <String> -ResourceGroupName <String> [-SubscriptionId <String>]
 -Location <String> [-ContentMatch <String>] [-Description <String>] [-Enabled] [-Frequency <Int32>]
 [-GeoLocation <IWebTestGeolocation[]>] [-Kind <WebTestKindEnum>] [-RequestParseDependent]
 [-RequestUrl <String>] [-RetryEnabled] [-RuleExpectedHttpStatusCode <Int32>] [-Tag <Hashtable>]
 [-TestName <String>] [-Timeout <Int32>] [-Configuration <String>] [-DefaultProfile <PSObject>] [-Break]
 [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>]
 [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
Creates or updates an Application Insights web test definition.

## EXAMPLES

### EXAMPLE 1
```
$geoLocation = @()
$geoLocation += New-AzApplicationInsightsWebTestGeolocationObject -Location "emea-nl-ams-azr"
$geoLocation += New-AzApplicationInsightsWebTestGeolocationObject -Location "us-ca-sjc-azr"
New-AzApplicationInsightsWebTest -ResourceGroupName azpwsh-rg-test -Name standard-pwsh01 -Location 'westus2' `
-Tag @{"hidden-link:/subscriptions/xxxxxxxxxx-xxxx-xxxxx-xxxxxxxxxxxx/resourceGroups/azpwsh-rg-test/providers/microsoft.insights/components/appinsights-portal01" = "Resource"} `
-RequestUrl "https://www.bing.com" -RequestHttpVerb "GET" -TestName 'standard-pwsh01' `
-RuleExpectedHttpStatusCode 200 -Frequency 300 -Enabled -Timeout 120 -Kind 'standard' -RetryEnabled -GeoLocation $geoLocation
```

### EXAMPLE 2
```
$geoLocation = @()
$geoLocation += New-AzApplicationInsightsWebTestGeolocationObject -Location "emea-nl-ams-azr"
$geoLocation += New-AzApplicationInsightsWebTestGeolocationObject -Location "us-ca-sjc-azr"
New-AzApplicationInsightsWebTest -ResourceGroupName azpwsh-rg-test -Name 'pingwebtest-pwsh01' -TestName 'pingwentest-pwsh01testname' -Location 'westus2' `
-Tag @{"hidden-link:/subscriptions/xxxxxxxxxx-xxxx-xxxxx-xxxxxxxxxxxx/resourceGroups/azpwsh-rg-test/providers/microsoft.insights/components/appinsights-portal01" = "Resource"} `
-GeoLocation $geoLocation -RetryEnabled -Enabled -Frequency 300 -Timeout 90 `
-Kind 'ping' -RequestUrl 'https://cn.bing.com' -RequestParseDependent -RuleExpectedHttpStatusCode 200 `
-ContentMatch "status"
```

### EXAMPLE 3
```
$geoLocation = @()
$geoLocation += New-AzApplicationInsightsWebTestGeolocationObject -Location "emea-nl-ams-azr"
$geoLocation += New-AzApplicationInsightsWebTestGeolocationObject -Location "us-ca-sjc-azr"
New-AzApplicationInsightsWebTest -ResourceGroupName azpwsh-rg-test -Name 'pingwebtest-pwsh01' -TestName 'pingwentest-pwsh01testname' -Location 'westus2' `
-Tag @{"hidden-link:/subscriptions/xxxxxxxxxx-xxxx-xxxxx-xxxxxxxxxxxx/resourceGroups/azpwsh-rg-test/providers/microsoft.insights/components/appinsights-portal01" = "Resource"} `
-GeoLocation $geoLocation -RetryEnabled -Enabled -Frequency 300 -Timeout 90 `
-Kind 'ping' `
-Configuration "<WebTest  Name=`"basic-portal03`"  Id=`"9407db10-5d84-487f-98a3-a1ee67bb98f0`"  Enabled=`"True`"  CssProjectStructure=`"`"  CssIteration=`"`"  Timeout=`"90`"  WorkItemIds=`"`"  xmlns=`"http://microsoft.com/schemas/VisualStudio/TeamTest/2010`"  Description=`"`"  CredentialUserName=`"`"  CredentialPassword=`"`"  PreAuthenticate=`"True`"  Proxy=`"default`"  StopOnError=`"False`"  RecordedResultFile=`"`"  ResultsLocale=`"`"> 
    <Items> 
        <Request Method=`"GET`"  Guid=`"a2025e53-0702-d03e-f311-5774ec16893d`"  Version=`"1.1`"  Url=`"https://www.bing.com`"  ThinkTime=`"0`"  Timeout=`"90`"  ParseDependentRequests=`"True`"  FollowRedirects=`"True`"  RecordResult=`"True`"  Cache=`"False`"  ResponseTimeGoal=`"0`"  Encoding=`"utf-8`"  ExpectedHttpStatusCode=`"200`"  ExpectedResponseUrl=`"`"  ReportingName=`"`"  IgnoreHttpStatusCode=`"False`" /> 
    </Items> 
    <ValidationRules> 
        <ValidationRule  Classname=`"Microsoft.VisualStudio.TestTools.WebTesting.Rules.ValidationRuleFindText, Microsoft.VisualStudio.QualityTools.WebTestFramework, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a`"  DisplayName=`"Find Text`"  Description=`"Verifies the existence of the specified text in the response.`"  Level=`"High`"  ExectuionOrder=`"BeforeDependents`">
            <RuleParameters> 
            <RuleParameter Name=`"FindText`" Value=`"test&#x20;content&#x20;match`" /> 
            <RuleParameter Name=`"IgnoreCase`" Value=`"False`" /> 
            <RuleParameter Name=`"UseRegularExpression`" Value=`"False`" /> 
            <RuleParameter Name=`"PassIfTextFound`" Value=`"True`" /> 
            </RuleParameters> 
        </ValidationRule> 
    </ValidationRules> 
</WebTest>"
```

## PARAMETERS

### -Name
The name of the Application Insights WebTest resource.

```yaml
Type: String
Parameter Sets: (All)
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

### -ContentIgnoreCase
When set, this value makes the ContentMatch validation case insensitive.

```yaml
Type: SwitchParameter
Parameter Sets: CreateStandard
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -ContentMatch
Content to look for in the return of the WebTest.
Must not be null or empty.

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

### -ContentPassIfTextFound
When true, validation will pass if there is a match for the ContentMatch string.
If false, validation will fail if there is a match

```yaml
Type: SwitchParameter
Parameter Sets: CreateStandard
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Description
User defined description for this WebTest.

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

### -Enabled
Is the test actively being monitored.

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

### -Frequency
Interval in seconds between test runs for this WebTest.
Default value is 300.

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

### -GeoLocation
A list of where to physically run the tests from to give global coverage for accessibility of your application.
To construct, see NOTES section for GEOLOCATION properties and create a hash table.

```yaml
Type: IWebTestGeolocation[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Kind
The kind of web test this is, valid choices are ping, multistep, and standard.

```yaml
Type: WebTestKindEnum
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RequestBody
Base64 encoded string body to send with this web test.

```yaml
Type: String
Parameter Sets: CreateStandard
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RequestFollowRedirect
Follow redirects for this web test.

```yaml
Type: SwitchParameter
Parameter Sets: CreateStandard
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -RequestHeader
List of headers and their values to add to the WebTest call.
To construct, see NOTES section for REQUESTHEADER properties and create a hash table.

```yaml
Type: IHeaderField[]
Parameter Sets: CreateStandard
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RequestHttpVerb
Http verb to use for this web test.

```yaml
Type: String
Parameter Sets: CreateStandard
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RequestParseDependent
Parse Dependent request for this WebTest.

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

### -RequestUrl
Url location to test.

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

### -RetryEnabled
Allow for retries should this WebTest fail.

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

### -RuleExpectedHttpStatusCode
Validate that the WebTest returns the http status code provided.

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

### -RuleIgnoreHttpsStatusCode
When set, validation will ignore the status code.

```yaml
Type: SwitchParameter
Parameter Sets: CreateStandard
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -RuleSslCertRemainingLifetimeCheck
A number of days to check still remain before the the existing SSL cert expires.
Value must be positive and the SSLCheck must be set to true.

```yaml
Type: Int32
Parameter Sets: CreateStandard
Aliases:

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -RuleSslCheck
Checks to see if the SSL cert is still valid.

```yaml
Type: SwitchParameter
Parameter Sets: CreateStandard
Aliases:

Required: False
Position: Named
Default value: False
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

### -TestName
User defined name if this WebTest.

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

### -Timeout
Seconds until this WebTest will timeout and fail.
Default value is 30.

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

### -Configuration
The XML specification of a WebTest to run against an application.

```yaml
Type: String
Parameter Sets: CreateClassic
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

### Microsoft.Azure.PowerShell.Cmdlets.ApplicationInsights.Models.Api20220615.IWebTest
## NOTES
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties.
For information on hash tables, run Get-Help about_Hash_Tables.

GEOLOCATION \<IWebTestGeolocation\[\]\>: A list of where to physically run the tests from to give global coverage for accessibility of your application.
  \[Location \<String\>\]: Location ID for the WebTest to run from.

REQUESTHEADER \<IHeaderField\[\]\>: List of headers and their values to add to the WebTest call.
  \[Name \<String\>\]: The name of the header.
  \[Value \<String\>\]: The value of the header.

## RELATED LINKS

[https://learn.microsoft.com/powershell/module/az.applicationinsights/new-azapplicationinsightswebtest](https://learn.microsoft.com/powershell/module/az.applicationinsights/new-azapplicationinsightswebtest)

