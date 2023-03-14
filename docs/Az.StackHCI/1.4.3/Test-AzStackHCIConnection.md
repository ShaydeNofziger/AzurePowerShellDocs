---
external help file: Az.StackHCI-help.xml
Module Name: Az.StackHCI
online version: https://learn.microsoft.com/powershell/module/az.stackhci/test-azstackhciconnection
schema: 2.0.0
---

# Test-AzStackHCIConnection

## SYNOPSIS
Test-AzStackHCIConnection verifies connectivity from on-premises clustered nodes to the Azure services required by Azure Stack HCI.

Note: Test-AzStackhHCIConnection is deprecated.
Please use 'Invoke-AzStackHciConnectivityValidation' from 'AzStackHCI.EnvironmentChecker' module for enhanced connectivity verification tests.
For more information, see https://learn.microsoft.com/en-us/azure-stack/hci/whats-new#new-azure-stack-hci-environment-checker-tool.

## SYNTAX

```
Test-AzStackHCIConnection [[-EnvironmentName] <String>] [[-Region] <String>] [[-ComputerName] <String>]
 [[-Credential] <PSCredential>] [<CommonParameters>]
```

## DESCRIPTION
Test-AzStackHCIConnection verifies connectivity from on-premises clustered nodes to the Azure services required by Azure Stack HCI.

Note: Test-AzStackhHCIConnection is deprecated.
Please use 'Invoke-AzStackHciConnectivityValidation' from 'AzStackHCI.EnvironmentChecker' module for enhanced connectivity verification tests.
For more information, see https://learn.microsoft.com/en-us/azure-stack/hci/whats-new#new-azure-stack-hci-environment-checker-tool.

## EXAMPLES

### EXAMPLE 1
```
Test-AzStackHCIConnection
```

### EXAMPLE 2
```
Test-AzStackHCIConnection
```

## PARAMETERS

### -EnvironmentName
Specifies the Azure Environment.
Default is AzureCloud.
Valid values are AzureCloud, AzureChinaCloud, AzurePPE, AzureCanary, AzureUSGovernment

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Region
Specifies the Region to connect to.
Not used unless it is Canary region.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ComputerName
Specifies one of the cluster node in on-premise cluster that is being registered to Azure.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Credential
Specifies the credential for the ComputerName.
Default is the current user executing the Cmdlet.

```yaml
Type: PSCredential
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### PSCustomObject. Returns following Properties in PSCustomObject
### Test: Name of the test performed.
### EndpointTested: Endpoint used in the test.
### IsRequired: True or False
### Result: Succeeded or Failed
### FailedNodes: List of nodes on which the test failed.
## NOTES

## RELATED LINKS

[https://learn.microsoft.com/powershell/module/az.stackhci/test-azstackhciconnection](https://learn.microsoft.com/powershell/module/az.stackhci/test-azstackhciconnection)

