---
external help file: Az.StackHCI-help.xml
Module Name: Az.StackHCI
online version: https://learn.microsoft.com/powershell/module/az.stackhci/register-azstackhci
schema: 2.0.0
---

# Register-AzStackHCI

## SYNOPSIS
Register-AzStackHCI creates a Microsoft.AzureStackHCI cloud resource representing the on-premises cluster and registers the on-premises cluster with Azure.

## SYNTAX

```
Register-AzStackHCI [-SubscriptionId] <String> [[-Region] <String>] [[-ResourceName] <String>]
 [[-Tag] <Hashtable>] [[-TenantId] <String>] [[-ResourceGroupName] <String>] [[-ArmAccessToken] <String>]
 [[-GraphAccessToken] <String>] [[-AccountId] <String>] [[-EnvironmentName] <String>]
 [[-ComputerName] <String>] [[-CertificateThumbprint] <String>] [-RepairRegistration]
 [-UseDeviceAuthentication] [-EnableAzureArcServer] [[-Credential] <PSCredential>] [-IsWAC]
 [[-ArcServerResourceGroupName] <String>] [[-ArcSpnCredential] <PSCredential>] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

## DESCRIPTION
Register-AzStackHCI creates a Microsoft.AzureStackHCI cloud resource representing the on-premises cluster and registers the on-premises cluster with Azure.

## EXAMPLES

### EXAMPLE 1
```
Register-AzStackHCI -SubscriptionId "12a0f531-56cb-4340-9501-257726d741fd" -Region "eastus"
```

### EXAMPLE 2
```
Register-AzStackHCI -SubscriptionId "12a0f531-56cb-4340-9501-257726d741fd" -ComputerName ClusterNode1 -Region "eastus"
```

### EXAMPLE 3
```
Register-AzStackHCI -SubscriptionId "12a0f531-56cb-4340-9501-257726d741fd" -ArmAccessToken etyer..ere= -AccountId user1@corp1.com -Region westus -ResourceName DemoHCICluster3 -ResourceGroupName DemoHCIRG
```

### EXAMPLE 4
```
Register-AzStackHCI -SubscriptionId "12a0f531-56cb-4340-9501-257726d741fd" -Region westus -ResourceName HciCluster1 -TenantId "c31c0dbb-ce27-4c78-ad26-a5f717c14557" -ResourceGroupName HciRG -ArcServerResourceGroupName HciRG -ArmAccessToken eerrer..ere= -AccountId user1@corp1.com -EnvironmentName AzureCloud -ComputerName node1hci -Credential Get-Credential
```

## PARAMETERS

### -SubscriptionId
Specifies the Azure Subscription to create the resource.
This is the only Mandatory parameter.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Region
Specifies the Region to create the resource.
Default is EastUS.

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

### -ResourceName
Specifies the resource name of the resource created in Azure.
If not specified, on-premises cluster name is used.

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

### -Tag
Specifies the resource tags for the resource in Azure in the form of key-value pairs in a hash table.
For example: @{key0="value0";key1=$null;key2="value2"}

```yaml
Type: Hashtable
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TenantId
Specifies the Azure TenantId.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ResourceGroupName
Specifies the Azure Resource Group name.
If not specified \<LocalClusterName\>-rg will be used as resource group name.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ArmAccessToken
Specifies the ARM access token.
Specifying this along with AccountId will avoid Azure interactive logon.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 7
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -GraphAccessToken
GraphAccessToken is deprecated.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 8
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AccountId
Specifies the Account Id.
Specifying this along with ArmAccessToken will avoid Azure interactive logon.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 9
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -EnvironmentName
Specifies the Azure Environment.
Default is AzureCloud.
Valid values are AzureCloud, AzureChinaCloud, AzurePPE, AzureCanary, AzureUSGovernment

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 10
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ComputerName
Specifies the cluster name or one of the cluster node in on-premise cluster that is being registered to Azure.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 11
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -CertificateThumbprint
Specifies the thumbprint of the certificate available on all the nodes.
User is responsible for managing the certificate.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 12
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RepairRegistration
Repair the current Azure Stack HCI registration with the cloud.
This cmdlet deletes the local certificates on the clustered nodes and the remote certificates in the Azure AD application in the cloud and generates new replacement certificates for both.
The resource group, resource name, and other registration choices are preserved.

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

### -UseDeviceAuthentication
Use device code authentication instead of an interactive browser prompt.

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

### -EnableAzureArcServer
EnableAzureArcServer needs to be specified $true in all the environments except AzureChinaCloud.
Specifying this parameter to $false in environments except AzureChinaCloud will terminate the registration cmdlet.

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

### -Credential
Specifies the credential for the ComputerName.
Default is the current user executing the Cmdlet.

```yaml
Type: PSCredential
Parameter Sets: (All)
Aliases:

Required: False
Position: 13
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -IsWAC
Registrations through Windows Admin Center specifies this parameter to true.

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

### -ArcServerResourceGroupName
Specifies the Arc Resource Group name.
If not specified, cluster resource group name will be used.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 14
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ArcSpnCredential
Specifies the credentials to be used for onboarding ARC agent.
If not specified, new set of credentials will be generated.

```yaml
Type: PSCredential
Parameter Sets: (All)
Aliases:

Required: False
Position: 15
Default value: None
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

### PSCustomObject. Returns following Properties in PSCustomObject
### Result: Success or Failed or Cancelled.
### ResourceId: Resource ID of the resource created in Azure.
### PortalResourceURL: Azure Portal Resource URL.
## NOTES

## RELATED LINKS

[https://learn.microsoft.com/powershell/module/az.stackhci/register-azstackhci](https://learn.microsoft.com/powershell/module/az.stackhci/register-azstackhci)

