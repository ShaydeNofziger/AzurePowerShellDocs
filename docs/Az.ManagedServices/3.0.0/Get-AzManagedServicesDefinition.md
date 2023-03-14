---
external help file: Az.ManagedServices-help.xml
Module Name: Az.ManagedServices
online version: https://docs.microsoft.com/powershell/module/az.managedservices/get-azmanagedservicesdefinition
schema: 2.0.0
---

# Get-AzManagedServicesDefinition

## SYNOPSIS
Gets the registration definition details.

## SYNTAX

### List (Default)
```
Get-AzManagedServicesDefinition [-Scope <String>] [-DefaultProfile <PSObject>] [-Break]
 [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>]
 [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [<CommonParameters>]
```

### Get
```
Get-AzManagedServicesDefinition -Name <String> [-Scope <String>] [-DefaultProfile <PSObject>] [-Break]
 [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>]
 [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [<CommonParameters>]
```

### GetViaIdentity
```
Get-AzManagedServicesDefinition -InputObject <IManagedServicesIdentity> [-DefaultProfile <PSObject>] [-Break]
 [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>]
 [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [<CommonParameters>]
```

## DESCRIPTION
Gets the registration definition details.

## EXAMPLES

### EXAMPLE 1
```
Get-AzManagedServicesDefinition
```

Name                                 Type
----                                 ----
xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx Microsoft.ManagedServices/registrationDefinitions
xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx Microsoft.ManagedServices/registrationDefinitions

### EXAMPLE 2
```
Get-AzManagedServicesDefinition -Name xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx |Format-List -Property Id, Name, Type, ManagedByTenantId, Authorization, EligibleAuthorization
```

Id                    : /subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/providers/Microsoft.ManagedServices/registrationDefinitions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx
Name                  : xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx
Type                  : Microsoft.ManagedServices/registrationDefinitions
ManagedByTenantId     : xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx
Authorization         : {Test user}
EligibleAuthorization : {Test user}

### EXAMPLE 3
```
Get-AzManagedServicesDefinition -Scope /subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx | Format-List -Property Id, Name, Type, ManagedByTenantId, Authorization, EligibleAuthorization
```

Id                    : /subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/providers/Microsoft.ManagedServices/registrationDefinitions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx
Name                  : xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx
Type                  : Microsoft.ManagedServices/registrationDefinitions
ManagedByTenantId     : xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx
Authorization         : {Test user}
EligibleAuthorization : {Test user}

Id                    : /subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/providers/Microsoft.ManagedServices/registrationDefinitions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx
Name                  : xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx
Type                  : Microsoft.ManagedServices/registrationDefinitions
ManagedByTenantId     : xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx
Authorization         : {}
EligibleAuthorization :

## PARAMETERS

### -Name
The GUID of the registration definition.

```yaml
Type: String
Parameter Sets: Get
Aliases: RegistrationDefinitionId

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Scope
The scope of the resource.

```yaml
Type: String
Parameter Sets: List, Get
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
Type: IManagedServicesIdentity
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

### Microsoft.Azure.PowerShell.Cmdlets.ManagedServices.Models.IManagedServicesIdentity
## OUTPUTS

### Microsoft.Azure.PowerShell.Cmdlets.ManagedServices.Models.Api20200201Preview.IRegistrationDefinition
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

[https://docs.microsoft.com/powershell/module/az.managedservices/get-azmanagedservicesdefinition](https://docs.microsoft.com/powershell/module/az.managedservices/get-azmanagedservicesdefinition)

