---
external help file: Az.HealthcareApis-help.xml
Module Name: Az.HealthcareApis
online version: https://docs.microsoft.com/powershell/module/az.healthcareapis/test-azhealthcareservicenameavailability
schema: 2.0.0
---

# Test-AzHealthcareServiceNameAvailability

## SYNOPSIS
Check if a service instance name is available.

## SYNTAX

### CheckExpanded (Default)
```
Test-AzHealthcareServiceNameAvailability [-SubscriptionId <String>] -Name <String> -Type <String>
 [-DefaultProfile <PSObject>] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### Check
```
Test-AzHealthcareServiceNameAvailability [-SubscriptionId <String>]
 -CheckNameAvailabilityInput <ICheckNameAvailabilityParameters> [-DefaultProfile <PSObject>] [-Break]
 [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>]
 [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### CheckViaIdentityExpanded
```
Test-AzHealthcareServiceNameAvailability -InputObject <IHealthcareApisIdentity> -Name <String> -Type <String>
 [-DefaultProfile <PSObject>] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### CheckViaIdentity
```
Test-AzHealthcareServiceNameAvailability -InputObject <IHealthcareApisIdentity>
 -CheckNameAvailabilityInput <ICheckNameAvailabilityParameters> [-DefaultProfile <PSObject>] [-Break]
 [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>]
 [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
Check if a service instance name is available.

## EXAMPLES

### EXAMPLE 1
```
Test-AzHealthcareServiceNameAvailability -Name azpsdicom -Type Microsoft.HealthcareApis/services
```

Message NameAvailable Reason
------- ------------- ------
        True

## PARAMETERS

### -SubscriptionId
The subscription identifier.

```yaml
Type: String
Parameter Sets: CheckExpanded, Check
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
Type: IHealthcareApisIdentity
Parameter Sets: CheckViaIdentityExpanded, CheckViaIdentity
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -CheckNameAvailabilityInput
Input values.
To construct, see NOTES section for CHECKNAMEAVAILABILITYINPUT properties and create a hash table.

```yaml
Type: ICheckNameAvailabilityParameters
Parameter Sets: Check, CheckViaIdentity
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Name
The name of the service instance to check.

```yaml
Type: String
Parameter Sets: CheckExpanded, CheckViaIdentityExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Type
The fully qualified resource type which includes provider namespace.

```yaml
Type: String
Parameter Sets: CheckExpanded, CheckViaIdentityExpanded
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

### Microsoft.Azure.PowerShell.Cmdlets.HealthcareApis.Models.Api20211101.ICheckNameAvailabilityParameters
### Microsoft.Azure.PowerShell.Cmdlets.HealthcareApis.Models.IHealthcareApisIdentity
## OUTPUTS

### Microsoft.Azure.PowerShell.Cmdlets.HealthcareApis.Models.Api20211101.IServicesNameAvailabilityInfo
## NOTES
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties.
For information on hash tables, run Get-Help about_Hash_Tables.

CHECKNAMEAVAILABILITYINPUT \<ICheckNameAvailabilityParameters\>: Input values.
  Name \<String\>: The name of the service instance to check.
  Type \<String\>: The fully qualified resource type which includes provider namespace.

INPUTOBJECT \<IHealthcareApisIdentity\>: Identity Parameter
  \[DicomServiceName \<String\>\]: The name of DICOM Service resource.
  \[FhirDestinationName \<String\>\]: The name of IoT Connector FHIR destination resource.
  \[FhirServiceName \<String\>\]: The name of FHIR Service resource.
  \[GroupName \<String\>\]: The name of the private link resource group.
  \[Id \<String\>\]: Resource identity path
  \[IotConnectorName \<String\>\]: The name of IoT Connector resource.
  \[LocationName \<String\>\]: The location of the operation.
  \[OperationResultId \<String\>\]: The ID of the operation result to get.
  \[PrivateEndpointConnectionName \<String\>\]: The name of the private endpoint connection associated with the Azure resource
  \[ResourceGroupName \<String\>\]: The name of the resource group that contains the service instance.
  \[ResourceName \<String\>\]: The name of the service instance.
  \[SubscriptionId \<String\>\]: The subscription identifier.
  \[WorkspaceName \<String\>\]: The name of workspace resource.

## RELATED LINKS

[https://docs.microsoft.com/powershell/module/az.healthcareapis/test-azhealthcareservicenameavailability](https://docs.microsoft.com/powershell/module/az.healthcareapis/test-azhealthcareservicenameavailability)

