---
external help file: Az.ManagedServices-help.xml
Module Name: Az.ManagedServices
online version: https://docs.microsoft.com/powershell/module/az.managedservices/get-azmanagedservicesmarketplacedefinition
schema: 2.0.0
---

# Get-AzManagedServicesMarketplaceDefinition

## SYNOPSIS
Get the marketplace registration definition for the marketplace identifier.

## SYNTAX

### ListWithScope (Default)
```
Get-AzManagedServicesMarketplaceDefinition [-Scope <String>] [-Filter <String>] [-DefaultProfile <PSObject>]
 [-Break] [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>]
 [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [<CommonParameters>]
```

### GetWithScope
```
Get-AzManagedServicesMarketplaceDefinition [-Scope <String>] -MarketplaceIdentifier <String>
 [-DefaultProfile <PSObject>] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] [<CommonParameters>]
```

### GetWithoutScope
```
Get-AzManagedServicesMarketplaceDefinition -MarketplaceIdentifier <String> [-Tenant]
 [-DefaultProfile <PSObject>] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] [<CommonParameters>]
```

### GetViaIdentity
```
Get-AzManagedServicesMarketplaceDefinition -InputObject <IManagedServicesIdentity> [-DefaultProfile <PSObject>]
 [-Break] [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>]
 [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [<CommonParameters>]
```

### ListWithoutScope
```
Get-AzManagedServicesMarketplaceDefinition [-Filter <String>] [-Tenant] [-DefaultProfile <PSObject>] [-Break]
 [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>]
 [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [<CommonParameters>]
```

## DESCRIPTION
Get the marketplace registration definition for the marketplace identifier.

## EXAMPLES

### EXAMPLE 1
```
Get-AzManagedServicesMarketplaceDefinition -MarketplaceIdentifier marketplace_test.managed_offer.managed_plan1.1.0.1 | Format-List Id, PlanProduct, PlanPublisher, PlanName, PlanVersion
```

Id            : /providers/Microsoft.ManagedServices/marketplaceRegistrationDefinitions/marketplace_test.managed_offer.managed_plan1.1.0.1
PlanProduct   : managed_offer
PlanPublisher : marketplace_test
PlanName      : managed_plan1
PlanVersion   : 1.0.1

## PARAMETERS

### -Scope
The scope of the resource.

```yaml
Type: String
Parameter Sets: ListWithScope, GetWithScope
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MarketplaceIdentifier
The Azure Marketplace identifier.
Expected formats: {publisher}.{product\[-preview\]}.{planName}.{version} or {publisher}.{product\[-preview\]}.{planName} or {publisher}.{product\[-preview\]} or {publisher}).

```yaml
Type: String
Parameter Sets: GetWithScope, GetWithoutScope
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
Type: IManagedServicesIdentity
Parameter Sets: GetViaIdentity
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Filter
The filter query parameter to filter marketplace registration definitions by plan identifier, publisher, version etc.

```yaml
Type: String
Parameter Sets: ListWithScope, ListWithoutScope
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Tenant
The filter query parameter to filter marketplace registration definitions by plan identifier, publisher, version etc.

```yaml
Type: SwitchParameter
Parameter Sets: GetWithoutScope, ListWithoutScope
Aliases:

Required: True
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

### Microsoft.Azure.PowerShell.Cmdlets.ManagedServices.Models.IManagedServicesIdentity
## OUTPUTS

### Microsoft.Azure.PowerShell.Cmdlets.ManagedServices.Models.Api20200201Preview.IMarketplaceRegistrationDefinition
## NOTES
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties.
For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT \<IManagedServicesIdentity\>: Identity Parameter
  \[Id \<String\>\]: Resource identity path
  \[MarketplaceIdentifier \<String\>\]: The Azure Marketplace identifier.
Expected formats: {publisher}.{product\[-preview\]}.{planName}.{version} or {publisher}.{product\[-preview\]}.{planName} or {publisher}.{product\[-preview\]} or {publisher}).
  \[RegistrationAssignmentId \<String\>\]: The GUID of the registration assignment.
  \[RegistrationDefinitionId \<String\>\]: The GUID of the registration definition.
  \[Scope \<String\>\]: The scope of the resource.

## RELATED LINKS

[https://docs.microsoft.com/powershell/module/az.managedservices/get-azmanagedservicesmarketplacedefinition](https://docs.microsoft.com/powershell/module/az.managedservices/get-azmanagedservicesmarketplacedefinition)

