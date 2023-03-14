---
external help file: Az.Advisor-help.xml
Module Name: Az.Advisor
online version: https://docs.microsoft.com/powershell/module/az.advisor/Set-AzAdvisorConfiguration
schema: 2.0.0
---

# Set-AzAdvisorConfiguration

## SYNOPSIS
Updates or creates the Azure Advisor Configuration.

## SYNTAX

### CreateByLCT (Default)
```
Set-AzAdvisorConfiguration [-SubscriptionId <String>] [-Exclude] [-LowCpuThreshold <CpuThreshold>]
 [-DefaultProfile <PSObject>] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### CreateByRG
```
Set-AzAdvisorConfiguration [-SubscriptionId <String>] -ResourceGroupName <String> [-Exclude]
 [-DefaultProfile <PSObject>] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### CreateByInputObject
```
Set-AzAdvisorConfiguration -InputObject <IAdvisorIdentity> [-Exclude] [-LowCpuThreshold <CpuThreshold>]
 [-DefaultProfile <PSObject>] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
Updates or creates the Azure Advisor Configuration.

## EXAMPLES

### EXAMPLE 1
```
Set-AzAdvisorConfiguration -Exclude -LowCpuThreshold 20
```

### EXAMPLE 2
```
Set-AzAdvisorConfiguration -Exclude
```

## PARAMETERS

### -SubscriptionId
The Azure subscription ID.

```yaml
Type: String
Parameter Sets: CreateByLCT, CreateByRG
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ResourceGroupName
The name of the Azure resource group.

```yaml
Type: String
Parameter Sets: CreateByRG
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
Parameter Sets: CreateByInputObject
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Exclude
Exclude the resource from Advisor evaluations.
Valid values: False (default) or True.

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

### -LowCpuThreshold
Minimum percentage threshold for Advisor low CPU utilization evaluation.
Valid only for subscriptions.
Valid values: 5 (default), 10, 15 or 20.

```yaml
Type: CpuThreshold
Parameter Sets: CreateByLCT, CreateByInputObject
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

### Microsoft.Azure.PowerShell.Cmdlets.Advisor.Models.Api202001.IConfigData
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

[https://docs.microsoft.com/powershell/module/az.advisor/Set-AzAdvisorConfiguration](https://docs.microsoft.com/powershell/module/az.advisor/Set-AzAdvisorConfiguration)

