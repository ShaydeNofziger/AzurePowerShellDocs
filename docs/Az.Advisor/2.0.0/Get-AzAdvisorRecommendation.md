---
external help file: Az.Advisor-help.xml
Module Name: Az.Advisor
online version: https://docs.microsoft.com/powershell/module/az.advisor/Get-AzAdvisorRecommendation
schema: 2.0.0
---

# Get-AzAdvisorRecommendation

## SYNOPSIS
Obtains details of a cached recommendation.

## SYNTAX

### ListByFilter (Default)
```
Get-AzAdvisorRecommendation [-SubscriptionId <String[]>] [-Filter <String>] [-DefaultProfile <PSObject>]
 [-Break] [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>]
 [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [<CommonParameters>]
```

### ListById
```
Get-AzAdvisorRecommendation [-SubscriptionId <String[]>] [-Category <String>] -ResourceId <String>
 [-DefaultProfile <PSObject>] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] [<CommonParameters>]
```

### ListByName
```
Get-AzAdvisorRecommendation [-SubscriptionId <String[]>] -ResourceGroupName <String> [-Category <String>]
 [-DefaultProfile <PSObject>] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] [<CommonParameters>]
```

### GetById
```
Get-AzAdvisorRecommendation -Id <String> -ResourceUri <String> [-DefaultProfile <PSObject>] [-Break]
 [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>]
 [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [<CommonParameters>]
```

### GetViaIdentity1
```
Get-AzAdvisorRecommendation -InputObject <IAdvisorIdentity> [-DefaultProfile <PSObject>] [-Break]
 [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>]
 [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [<CommonParameters>]
```

## DESCRIPTION
Obtains details of a cached recommendation.

## EXAMPLES

### EXAMPLE 1
```
Get-AzAdvisorRecommendation -ResourceGroupName lnxtest -Category HighAvailability
```

### EXAMPLE 2
```
Get-AzAdvisorRecommendation -filter "Category eq 'HighAvailability' and ResourceGroup eq 'lnxtest'"
```

### EXAMPLE 3
```
Get-AzAdvisorRecommendation -Id 42963553-61de-5334-2d2e-47f3a0099d41 -ResourceUri /subscriptions/9e223dbe-3399-4e19-88eb-0975f02ac87f
```

## PARAMETERS

### -SubscriptionId
The Azure subscription ID.

```yaml
Type: String[]
Parameter Sets: ListByFilter, ListById, ListByName
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ResourceGroupName
The resource group name.

```yaml
Type: String
Parameter Sets: ListByName
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Category
The category of recommendation.

```yaml
Type: String
Parameter Sets: ListById, ListByName
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ResourceId
The resource Id.

```yaml
Type: String
Parameter Sets: ListById
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Id
The recommendation ID.

```yaml
Type: String
Parameter Sets: GetById
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ResourceUri
The fully qualified Azure Resource Manager identifier of the resource to which the recommendation applies.

```yaml
Type: String
Parameter Sets: GetById
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
Type: IAdvisorIdentity
Parameter Sets: GetViaIdentity1
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Filter
The filter to apply to the recommendations.
Filter can be applied to properties \['ResourceId', 'ResourceGroup', 'RecommendationTypeGuid', '\[Category\](#category)'\] with operators \['eq', 'and', 'or'\].
Example:
- $filter=Category eq 'Cost' and ResourceGroup eq 'MyResourceGroup'

```yaml
Type: String
Parameter Sets: ListByFilter
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### Microsoft.Azure.PowerShell.Cmdlets.Advisor.Models.IAdvisorIdentity
## OUTPUTS

### Microsoft.Azure.PowerShell.Cmdlets.Advisor.Models.Api202001.IResourceRecommendationBase
## NOTES
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties.
For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT \<IAdvisorIdentity\>: Identity Parameter
  \[ConfigurationName \<ConfigurationName?\>\]: Advisor configuration name.
Value must be 'default'
  \[Id \<String\>\]: Resource identity path
  \[Name \<String\>\]: Name of metadata entity.
  \[OperationId \<String\>\]: The operation ID, which can be found from the Location field in the generate recommendation response header.
  \[RecommendationId \<String\>\]: The recommendation ID.
  \[ResourceGroup \<String\>\]: The name of the Azure resource group.
  \[ResourceUri \<String\>\]: The fully qualified Azure Resource Manager identifier of the resource to which the recommendation applies.
  \[SubscriptionId \<String\>\]: The Azure subscription ID.

## RELATED LINKS

[https://docs.microsoft.com/powershell/module/az.advisor/Get-AzAdvisorRecommendation](https://docs.microsoft.com/powershell/module/az.advisor/Get-AzAdvisorRecommendation)

