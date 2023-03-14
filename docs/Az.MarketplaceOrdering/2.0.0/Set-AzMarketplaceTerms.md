---
external help file: Az.MarketplaceOrdering-help.xml
Module Name: Az.MarketplaceOrdering
online version: https://docs.microsoft.com/powershell/module/az.marketplaceordering/set-azmarketplaceterms
schema: 2.0.0
---

# Set-AzMarketplaceTerms

## SYNOPSIS
Accept or reject terms for a given publisher id(Publisher), offer id(Product) and plan id(Name).

## SYNTAX

### TermsAccept (Default)
```
Set-AzMarketplaceTerms -Product <String> -Name <String> -Publisher <String> [-SubscriptionId <String>]
 [-Accept] [-DefaultProfile <PSObject>] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### TermsReject
```
Set-AzMarketplaceTerms -Product <String> -Name <String> -Publisher <String> [-SubscriptionId <String>]
 [-Reject] [-DefaultProfile <PSObject>] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### TermsAcceptViaIdentity
```
Set-AzMarketplaceTerms [-Accept] -Terms <IAgreementTerms> [-DefaultProfile <PSObject>] [-Break]
 [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>]
 [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### TermsRejectViaIdentity
```
Set-AzMarketplaceTerms [-Reject] -Terms <IAgreementTerms> [-DefaultProfile <PSObject>] [-Break]
 [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>]
 [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
Accept or reject terms for a given publisher id(Publisher), offer id(Product) and plan id(Name).

## EXAMPLES

### EXAMPLE 1
```
Set-AzMarketplaceTerms  -Publisher "microsoft-ads" -Product "windows-data-science-vm" -Name "windows2016" -Accept
```

### EXAMPLE 2
```
Get-AzMarketplaceTerms  -Publisher "microsoft-ads" -Product "windows-data-science-vm" -Name "windows2016" -OfferType 'virtualmachine' | Set-AzMarketplaceTerms -Accept
```

### EXAMPLE 3
```
Set-AzMarketplaceTerms  -Publisher "microsoft-ads" -Product "windows-data-science-vm" -Name "windows2016" -Reject
```

### EXAMPLE 4
```
Get-AzMarketplaceTerms  -Publisher "microsoft-ads" -Product "windows-data-science-vm" -Name "windows2016" -OfferType 'virtualmachine' | Set-AzMarketplaceTerms -Reject
```

## PARAMETERS

### -Product
Offer identifier string of image being deployed.

```yaml
Type: String
Parameter Sets: TermsAccept, TermsReject
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Name
Plan identifier string of image being deployed.

```yaml
Type: String
Parameter Sets: TermsAccept, TermsReject
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Publisher
Publisher identifier string of image being deployed.

```yaml
Type: String
Parameter Sets: TermsAccept, TermsReject
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SubscriptionId
The subscription ID that identifies an Azure subscription.

```yaml
Type: String
Parameter Sets: TermsAccept, TermsReject
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Accept
If any version of the terms have been accepted, otherwise false.

```yaml
Type: SwitchParameter
Parameter Sets: TermsAccept, TermsAcceptViaIdentity
Aliases:

Required: True
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Reject
Pass this to reject the legal terms.

```yaml
Type: SwitchParameter
Parameter Sets: TermsReject, TermsRejectViaIdentity
Aliases:

Required: True
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Terms
Terms properties for provided Publisher/Offer/Plan tuple
To construct, see NOTES section for PARAMETER properties and create a hash table.
To construct, see NOTES section for TERMS properties and create a hash table.

```yaml
Type: IAgreementTerms
Parameter Sets: TermsAcceptViaIdentity, TermsRejectViaIdentity
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

### Microsoft.Azure.PowerShell.Cmdlets.MarketplaceOrdering.Models.Api202101.IAgreementTerms
## OUTPUTS

### Microsoft.Azure.PowerShell.Cmdlets.MarketplaceOrdering.Models.Api202101.IAgreementTerms
## NOTES
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties.
For information on hash tables, run Get-Help about_Hash_Tables.

TERMS \<IAgreementTerms\>: Terms properties for provided Publisher/Offer/Plan tuple To construct, see NOTES section for PARAMETER properties and create a hash table.
  \[Accepted \<Boolean?\>\]: If any version of the terms have been accepted, otherwise false.
  \[LicenseTextLink \<String\>\]: Link to HTML with Microsoft and Publisher terms.
  \[MarketplaceTermsLink \<String\>\]: Link to HTML with Azure Marketplace terms.
  \[Plan \<String\>\]: Plan identifier string of image being deployed.
  \[PrivacyPolicyLink \<String\>\]: Link to the privacy policy of the publisher.
  \[Product \<String\>\]: Offer identifier string of image being deployed.
  \[Publisher \<String\>\]: Publisher identifier string of image being deployed.
  \[RetrieveDatetime \<DateTime?\>\]: Date and time in UTC of when the terms were accepted.
This is empty if Accepted is false.
  \[Signature \<String\>\]: Terms signature.
  \[SystemDataCreatedAt \<DateTime?\>\]: The timestamp of resource creation (UTC).
  \[SystemDataCreatedBy \<String\>\]: The identity that created the resource.
  \[SystemDataCreatedByType \<CreatedByType?\>\]: The type of identity that created the resource.
  \[SystemDataLastModifiedAt \<DateTime?\>\]: The timestamp of resource last modification (UTC)
  \[SystemDataLastModifiedBy \<String\>\]: The identity that last modified the resource.
  \[SystemDataLastModifiedByType \<CreatedByType?\>\]: The type of identity that last modified the resource.

## RELATED LINKS

[https://docs.microsoft.com/powershell/module/az.marketplaceordering/set-azmarketplaceterms](https://docs.microsoft.com/powershell/module/az.marketplaceordering/set-azmarketplaceterms)

