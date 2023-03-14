---
external help file: Microsoft.Azure.PowerShell.Cmdlets.ApiManagement.ServiceManagement.dll-Help.xml
Module Name: Az.ApiManagement
online version: https://docs.microsoft.com/powershell/module/az.apimanagement/set-azapimanagementapi
schema: 2.0.0
---

# Set-AzApiManagementApi

## SYNOPSIS
Modifies an API.

## SYNTAX

### ExpandedParameter (Default)
```
Set-AzApiManagementApi -Context <PsApiManagementContext> -ApiId <String> [-Name <String>]
 [-Description <String>] [-ServiceUrl <String>] [-Path <String>] [-Protocols <PsApiManagementSchema[]>]
 [-AuthorizationServerId <String>] [-AuthorizationScope <String>] [-OpenIdProviderId <String>]
 [-BearerTokenSendingMethod <String[]>] [-SubscriptionKeyHeaderName <String>]
 [-SubscriptionKeyQueryParamName <String>] [-SubscriptionRequired] [-PassThru] [-ApiType <String>]
 [-TermsOfServiceUrl <String>] [-ContactName <String>] [-ContactUrl <String>] [-ContactEmail <String>]
 [-LicenseName <String>] [-LicenseUrl <String>] [-DefaultProfile <IAzureContextContainer>] [<CommonParameters>]
```

### ByInputObject
```
Set-AzApiManagementApi -InputObject <PsApiManagementApi> [-Name <String>] [-Description <String>]
 [-ServiceUrl <String>] [-Path <String>] [-Protocols <PsApiManagementSchema[]>]
 [-AuthorizationServerId <String>] [-AuthorizationScope <String>] [-OpenIdProviderId <String>]
 [-BearerTokenSendingMethod <String[]>] [-SubscriptionKeyHeaderName <String>]
 [-SubscriptionKeyQueryParamName <String>] [-SubscriptionRequired] [-PassThru] [-ApiType <String>]
 [-TermsOfServiceUrl <String>] [-ContactName <String>] [-ContactUrl <String>] [-ContactEmail <String>]
 [-LicenseName <String>] [-LicenseUrl <String>] [-DefaultProfile <IAzureContextContainer>] [<CommonParameters>]
```

## DESCRIPTION
The Set-AzApiManagementApi cmdlet modifies an Azure API Management API.

## EXAMPLES

### Example 1: Modify an API
```
$ApiMgmtContext = New-AzApiManagementContext -ResourceGroupName "Api-Default-WestUS" -ServiceName "contoso"
Set-AzApiManagementApi -Context $ApiMgmtContext -Name "EchoApi" -ServiceUrl "https://contoso.com/apis/echo" -Protocols @('https') -Description "Responds with what was sent" -Path "echo"
```

### Example 2: Add an API to an existing ApiVersionSet
```
$ApiMgmtContext = New-AzApiManagementContext -ResourceGroupName "Api-Default-WestUS" -ServiceName "contoso"
$versionSet = New-AzApiManagementApiVersionSet -Context $context -Name "Echo API Version Set" -Scheme Segment -Description "version set sample"
$api = Get-AzApiManagementApi -Context $ApiMgmtContext -ApiId "echo-api"
$api.ApiVersionSetId = $versionSet.Id
$api.ApiVersion = "v1"
$api.ApiVersionSetDescription = $versionSet.Description
Set-AzApiManagementApi -InputObject $api -PassThru
```

This example adds an API to an existing API Version Set

### Example 3: Change the Backend ServiceUrl where the API is pointing to
```
$ApiMgmtContext = New-AzApiManagementContext -ResourceGroupName "Api-Default-WestUS" -ServiceName "contoso"
$updatedApiServiceUrl = "http://newechoapi.cloudapp.net/updateapi"
$updatedApi = Set-AzApiManagementApi -Context $ApiMgmtContext -ApiId $echoApiId -ServiceUrl $updatedApiServiceUrl
```

This example updates the ServiceUrl the \`echo-api\` is pointing to.

## PARAMETERS

### -ApiId
Specifies the ID of the API to modify.

```yaml
Type: String
Parameter Sets: ExpandedParameter
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ApiType
Type of API to create (http, soap, websocket, graphql).
This parameter is optional.

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: Http, Soap, WebSocket, GraphQL

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -AuthorizationScope
Specifies the OAuth operations scope.
The default value is $Null.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -AuthorizationServerId
Specifies the OAuth authorization server identifier.
The default value is $Null.
You must specify this parameter if AuthorizationScope is specified.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -BearerTokenSendingMethod
OpenId authorization server mechanism by which access token is passed to the API.
Refer to https://datatracker.ietf.org/doc/html/rfc6749#section-4.
This parameter is optional.
Default value is $null.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ContactEmail
The email address of the contact person/organization.
MUST be in the format of an email address.
This parameter is optional.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ContactName
The identifying name of the contact person/organization.
This parameter is optional.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ContactUrl
The URL pointing to the contact information.
MUST be in the format of a URL.
This parameter is optional.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Context
Specifies a PsApiManagementContext object.

```yaml
Type: PsApiManagementContext
Parameter Sets: ExpandedParameter
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

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

### -Description
Specifies a description for the web API.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -InputObject
Instance of PsApiManagementApi.
This parameter is required.

```yaml
Type: PsApiManagementApi
Parameter Sets: ByInputObject
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -LicenseName
The license name used for the API.
This parameter is optional.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -LicenseUrl
A URL to the Terms of Service for the API.
This parameter is optional.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Name
Specifies the name of the web API.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -OpenIdProviderId
OpenId authorization server identifier.
This parameter is optional.
Default value is $null.
Must be specified if BearerTokenSendingMethods is specified.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -PassThru
passthru

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Path
Specifies the web API path, which is the last part of the API's public URL.
This URL is used by API consumers to send requests to the web service, and must be one to 400 characters long.
The default value is $Null.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Protocols
Specifies an array of web API protocols.
psdx_paramvalues http and https.
These are the web protocols over which the API is made available.
The default value is $Null.

```yaml
Type: PsApiManagementSchema[]
Parameter Sets: (All)
Aliases:
Accepted values: Http, Https, Ws, Wss

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ServiceUrl
Specifies the URL of the web service that exposes the API.
This URL is used only by Azure API Management, and is not made public.
The URL must be one to 2000 characters long.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -SubscriptionKeyHeaderName
Specifies the name of the subscription key header.
The default value is $Null.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -SubscriptionKeyQueryParamName
Specifies the name of the subscription key query string parameter.
The default value is $Null.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -SubscriptionRequired
Flag to enforce SubscriptionRequired for requests to the Api.
This parameter is optional.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -TermsOfServiceUrl
A URL to the Terms of Service for the API.
This parameter is optional.

```yaml
Type: String
Parameter Sets: (All)
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

### Microsoft.Azure.Commands.ApiManagement.ServiceManagement.Models.PsApiManagementContext
### System.String
### Microsoft.Azure.Commands.ApiManagement.ServiceManagement.Models.PsApiManagementApi
### Microsoft.Azure.Commands.ApiManagement.ServiceManagement.Models.PsApiManagementSchema[]
### System.Management.Automation.SwitchParameter
## OUTPUTS

### Microsoft.Azure.Commands.ApiManagement.ServiceManagement.Models.PsApiManagementApi
## NOTES

## RELATED LINKS

[Export-AzApiManagementApi]()

[Get-AzApiManagementApi]()

[Import-AzApiManagementApi]()

[New-AzApiManagementApi]()

[Remove-AzApiManagementApi]()

