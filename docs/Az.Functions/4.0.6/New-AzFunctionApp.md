---
external help file: Az.Functions-help.xml
Module Name: Az.Functions
online version: https://docs.microsoft.com/powershell/module/az.functions/new-azfunctionapp
schema: 2.0.0
---

# New-AzFunctionApp

## SYNOPSIS
Creates a function app.

## SYNTAX

### Consumption (Default)
```
New-AzFunctionApp -ResourceGroupName <String> -Name <String> -StorageAccountName <String> -Location <String>
 -Runtime <String> [-SubscriptionId <String>] [-ApplicationInsightsName <String>]
 [-ApplicationInsightsKey <String>] [-OSType <String>] [-RuntimeVersion <String>] [-FunctionsVersion <String>]
 [-DisableApplicationInsights] [-PassThru] [-Tag <Hashtable>] [-AppSetting <Hashtable>]
 [-IdentityType <ManagedServiceIdentityType>] [-IdentityID <String[]>] [-DefaultProfile <PSObject>] [-NoWait]
 [-AsJob] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>]
 [-Proxy <Uri>] [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

### ByAppServicePlan
```
New-AzFunctionApp -ResourceGroupName <String> -Name <String> -StorageAccountName <String> -Runtime <String>
 [-SubscriptionId <String>] [-ApplicationInsightsName <String>] [-ApplicationInsightsKey <String>]
 [-OSType <String>] [-RuntimeVersion <String>] [-FunctionsVersion <String>] [-DisableApplicationInsights]
 [-PassThru] [-Tag <Hashtable>] [-AppSetting <Hashtable>] [-IdentityType <ManagedServiceIdentityType>]
 [-IdentityID <String[]>] -PlanName <String> [-DefaultProfile <PSObject>] [-NoWait] [-AsJob] [-Break]
 [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>]
 [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### CustomDockerImage
```
New-AzFunctionApp -ResourceGroupName <String> -Name <String> -StorageAccountName <String>
 [-SubscriptionId <String>] [-ApplicationInsightsName <String>] [-ApplicationInsightsKey <String>]
 [-DisableApplicationInsights] [-PassThru] [-Tag <Hashtable>] [-AppSetting <Hashtable>]
 [-IdentityType <ManagedServiceIdentityType>] [-IdentityID <String[]>] -PlanName <String>
 -DockerImageName <String> [-DockerRegistryCredential <PSCredential>] [-DefaultProfile <PSObject>] [-NoWait]
 [-AsJob] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>]
 [-Proxy <Uri>] [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

## DESCRIPTION
Creates a function app.

## EXAMPLES

### EXAMPLE 1
```
New-AzFunctionApp -Name MyUniqueFunctionAppName `
                  -ResourceGroupName MyResourceGroupName `
                  -Location centralUS `
                  -StorageAccountName MyStorageAccountName `
                  -Runtime PowerShell
```

### EXAMPLE 2
```
New-AzFunctionApp -Name MyUniqueFunctionAppName `
                  -ResourceGroupName MyResourceGroupName `
                  -PlanName MyPlanName `
                  -StorageAccountName MyStorageAccountName `
                  -Runtime PowerShell
```

### EXAMPLE 3
```
New-AzFunctionApp -Name MyUniqueFunctionAppName `
                  -ResourceGroupName MyResourceGroupName `
                  -PlanName MyPlanName `
                  -StorageAccountName MyStorageAccountName `
                  -DockerImageName myacr.azurecr.io/myimage:tag
```

## PARAMETERS

### -ResourceGroupName
The name of the resource group.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Name
The name of the function app.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -StorageAccountName
The name of the storage account.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Location
The location for the consumption plan.

```yaml
Type: String
Parameter Sets: Consumption
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Runtime
The function runtime.

```yaml
Type: String
Parameter Sets: Consumption, ByAppServicePlan
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
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ApplicationInsightsName
Name of the existing App Insights project to be added to the function app.

```yaml
Type: String
Parameter Sets: (All)
Aliases: AppInsightsName

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ApplicationInsightsKey
Instrumentation key of App Insights to be added.

```yaml
Type: String
Parameter Sets: (All)
Aliases: AppInsightsKey

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -OSType
The OS to host the function app.

```yaml
Type: String
Parameter Sets: Consumption, ByAppServicePlan
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RuntimeVersion
The function runtime.

```yaml
Type: String
Parameter Sets: Consumption, ByAppServicePlan
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -FunctionsVersion
The Functions version.

```yaml
Type: String
Parameter Sets: Consumption, ByAppServicePlan
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DisableApplicationInsights
Disable creating application insights resource during the function app creation.
No logs will be available.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: DisableAppInsights

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -PassThru
Returns true when the command succeeds.

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

### -Tag
Resource tags.

```yaml
Type: Hashtable
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AppSetting
Function app settings.

```yaml
Type: Hashtable
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -IdentityType
Specifies the type of identity used for the function app.
            The acceptable values for this parameter are:
            - SystemAssigned
            - UserAssigned

```yaml
Type: ManagedServiceIdentityType
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -IdentityID
Specifies the list of user identities associated with the function app.
            The user identity references will be ARM resource ids in the form:
            '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/identities/{identityName}'

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

### -PlanName
The name of the service plan.

```yaml
Type: String
Parameter Sets: ByAppServicePlan, CustomDockerImage
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DockerImageName
Linux only.
Container image name from Docker Registry, e.g.
publisher/image-name:tag.

```yaml
Type: String
Parameter Sets: CustomDockerImage
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DockerRegistryCredential
The container registry user name and password.
Required for private registries.

```yaml
Type: PSCredential
Parameter Sets: CustomDockerImage
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DefaultProfile
{{ Fill DefaultProfile Description }}

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

### -NoWait
Starts the operation and returns immediately, before the operation is completed.
In order to determine if the operation has successfully been completed, use some other mechanism.

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

### -AsJob
Runs the cmdlet as a background job.

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

### -Break
{{ Fill Break Description }}

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
{{ Fill HttpPipelineAppend Description }}

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
{{ Fill HttpPipelinePrepend Description }}

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
{{ Fill Proxy Description }}

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
{{ Fill ProxyCredential Description }}

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
{{ Fill ProxyUseDefaultCredentials Description }}

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

## OUTPUTS

### Microsoft.Azure.PowerShell.Cmdlets.Functions.Models.Api20190801.ISite
## NOTES

## RELATED LINKS

[https://docs.microsoft.com/powershell/module/az.functions/new-azfunctionapp](https://docs.microsoft.com/powershell/module/az.functions/new-azfunctionapp)

