---
external help file: Az.Advisor-help.xml
Module Name: Az.Advisor
online version: https://docs.microsoft.com/powershell/module/az.advisor/Disable-AzAdvisorRecommendation
schema: 2.0.0
---

# Disable-AzAdvisorRecommendation

## SYNOPSIS
Disable an Azure Advisor recommendation.

## SYNTAX

### IdParameterSet (Default)
```
Disable-AzAdvisorRecommendation -ResourceId <String> [-SubscriptionId <String[]>] [-Day <Object>]
 [-DefaultProfile <PSObject>] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### NameParameterSet
```
Disable-AzAdvisorRecommendation [-SubscriptionId <String[]>] -RecommendationName <String> [-Day <Object>]
 [-DefaultProfile <PSObject>] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### InputObjectParameterSet
```
Disable-AzAdvisorRecommendation [-SubscriptionId <String[]>] -InputObject <IAdvisorIdentity> [-Day <Object>]
 [-DefaultProfile <PSObject>] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
Disable an Azure Advisor recommendation.

## EXAMPLES

### EXAMPLE 1
```
Disable-AzAdvisorRecommendation -RecommendationName 42963553-61de-5334-2d2e-47f3a0099d41 -Day 1
```

### EXAMPLE 2
```
Disable-AzAdvisorRecommendation -ResourceId /subscriptions/9e223dbe-3399-4e19-88eb-0975f02ac87f/resourcegroups/automanagehcrprg/providers/microsoft.compute/virtualmachines/arcbox-capi-mgmt/providers/Microsoft.Advisor/recommendations/42963553-61de-5334-2d2e-47f3a0099d41 -Day 1
```

## PARAMETERS

### -ResourceId
Id of the recommendation to be suppressed.

```yaml
Type: String
Parameter Sets: IdParameterSet
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SubscriptionId
The Azure subscription ID.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RecommendationName
ResourceName of the recommendation.

```yaml
Type: String
Parameter Sets: NameParameterSet
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -InputObject
The powershell object type PsAzureAdvisorResourceRecommendationBase returned by Get-AzAdvisorRecommendation call.
To construct, see NOTES section for INPUTOBJECT properties and create a hash table.

```yaml
Type: IAdvisorIdentity
Parameter Sets: InputObjectParameterSet
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Day
Days to disable.

```yaml
Type: Object
Parameter Sets: (All)
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

### Microsoft.Azure.PowerShell.Cmdlets.Advisor.Models.IAdvisorIdentity
## OUTPUTS

### Microsoft.Azure.PowerShell.Cmdlets.Advisor.Models.Api202001.IResourceRecommendationBase
## NOTES
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties.
For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT \<IAdvisorIdentity\>: The powershell object type PsAzureAdvisorResourceRecommendationBase returned by Get-AzAdvisorRecommendation call.
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

[https://docs.microsoft.com/powershell/module/az.advisor/Disable-AzAdvisorRecommendation](https://docs.microsoft.com/powershell/module/az.advisor/Disable-AzAdvisorRecommendation)

