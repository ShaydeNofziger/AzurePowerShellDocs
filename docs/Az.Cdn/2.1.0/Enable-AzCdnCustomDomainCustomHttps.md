---
external help file: Az.Cdn-help.xml
Module Name: Az.Cdn
online version: https://docs.microsoft.com/powershell/module/az.cdn/enable-azcdncustomdomaincustomhttps
schema: 2.0.0
---

# Enable-AzCdnCustomDomainCustomHttps

## SYNOPSIS
Enable https delivery of the custom domain.

## SYNTAX

### EnableViaIdentity (Default)
```
Enable-AzCdnCustomDomainCustomHttps -InputObject <ICdnIdentity>
 -CustomDomainHttpsParameter <ICustomDomainHttpsParameters> [-DefaultProfile <PSObject>] [-Break]
 [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-PassThru] [-Proxy <Uri>]
 [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### Enable
```
Enable-AzCdnCustomDomainCustomHttps -CustomDomainName <String> -EndpointName <String> -ProfileName <String>
 -ResourceGroupName <String> [-SubscriptionId <String>]
 -CustomDomainHttpsParameter <ICustomDomainHttpsParameters> [-DefaultProfile <PSObject>] [-Break]
 [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-PassThru] [-Proxy <Uri>]
 [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
Enable https delivery of the custom domain.

## EXAMPLES

### EXAMPLE 1
```
{{ Add code here }}
```

### EXAMPLE 2
```
{{ Add code here }}
```

## PARAMETERS

### -CustomDomainName
Name of the custom domain within an endpoint.

```yaml
Type: String
Parameter Sets: Enable
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -EndpointName
Name of the endpoint under the profile which is unique globally.

```yaml
Type: String
Parameter Sets: Enable
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ProfileName
Name of the CDN profile which is unique within the resource group.

```yaml
Type: String
Parameter Sets: Enable
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ResourceGroupName
Name of the Resource group within the Azure subscription.

```yaml
Type: String
Parameter Sets: Enable
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SubscriptionId
Azure Subscription ID.

```yaml
Type: String
Parameter Sets: Enable
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
Type: ICdnIdentity
Parameter Sets: EnableViaIdentity
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -CustomDomainHttpsParameter
The JSON object that contains the properties to secure a custom domain.
To construct, see NOTES section for CUSTOMDOMAINHTTPSPARAMETER properties and create a hash table.

```yaml
Type: ICustomDomainHttpsParameters
Parameter Sets: (All)
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

### -PassThru
Returns true when the command succeeds

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

### Microsoft.Azure.PowerShell.Cmdlets.Cdn.Models.Api20210601.ICustomDomainHttpsParameters
### Microsoft.Azure.PowerShell.Cmdlets.Cdn.Models.ICdnIdentity
## OUTPUTS

### Microsoft.Azure.PowerShell.Cmdlets.Cdn.Models.Api20210601.ICustomDomain
## NOTES
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties.
For information on hash tables, run Get-Help about_Hash_Tables.

CUSTOMDOMAINHTTPSPARAMETER \<ICustomDomainHttpsParameters\>: The JSON object that contains the properties to secure a custom domain.
  CertificateSource \<CertificateSource\>: Defines the source of the SSL certificate.
  ProtocolType \<ProtocolType\>: Defines the TLS extension protocol that is used for secure delivery.
  \[MinimumTlsVersion \<MinimumTlsVersion?\>\]: TLS protocol version that will be used for Https

INPUTOBJECT \<ICdnIdentity\>: Identity Parameter
  \[CustomDomainName \<String\>\]: Name of the domain under the profile which is unique globally.
  \[EndpointName \<String\>\]: Name of the endpoint under the profile which is unique globally.
  \[Id \<String\>\]: Resource identity path
  \[OriginGroupName \<String\>\]: Name of the origin group which is unique within the endpoint.
  \[OriginName \<String\>\]: Name of the origin which is unique within the profile.
  \[ProfileName \<String\>\]: Name of the Azure Front Door Standard or Azure Front Door Premium or CDN profile which is unique within the resource group.
  \[ResourceGroupName \<String\>\]: Name of the Resource group within the Azure subscription.
  \[RouteName \<String\>\]: Name of the routing rule.
  \[RuleName \<String\>\]: Name of the delivery rule which is unique within the endpoint.
  \[RuleSetName \<String\>\]: Name of the rule set under the profile which is unique globally.
  \[SecretName \<String\>\]: Name of the Secret under the profile.
  \[SecurityPolicyName \<String\>\]: Name of the security policy under the profile.
  \[SubscriptionId \<String\>\]: Azure Subscription ID.

## RELATED LINKS

[https://docs.microsoft.com/powershell/module/az.cdn/enable-azcdncustomdomaincustomhttps](https://docs.microsoft.com/powershell/module/az.cdn/enable-azcdncustomdomaincustomhttps)

