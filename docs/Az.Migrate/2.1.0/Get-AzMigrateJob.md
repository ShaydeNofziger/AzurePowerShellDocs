---
external help file: Az.Migrate-help.xml
Module Name: Az.Migrate
online version: https://docs.microsoft.com/powershell/module/az.migrate/get-azmigratejob
schema: 2.0.0
---

# Get-AzMigrateJob

## SYNOPSIS
Retrieves the status of an Azure Migrate job.

## SYNTAX

### ListByName (Default)
```
Get-AzMigrateJob -ResourceGroupName <String> -ProjectName <String> [-SubscriptionId <String>]
 [-Filter <String>] [-DefaultProfile <PSObject>] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] [<CommonParameters>]
```

### GetByName
```
Get-AzMigrateJob -ResourceGroupName <String> -ProjectName <String> [-SubscriptionId <String>] -JobName <String>
 [-DefaultProfile <PSObject>] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] [<CommonParameters>]
```

### GetById
```
Get-AzMigrateJob [-SubscriptionId <String>] -JobID <String> [-DefaultProfile <PSObject>] [-Break]
 [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>]
 [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [<CommonParameters>]
```

### GetByInputObject
```
Get-AzMigrateJob [-SubscriptionId <String>] -InputObject <IJob> [-DefaultProfile <PSObject>] [-Break]
 [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>]
 [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [<CommonParameters>]
```

### ListById
```
Get-AzMigrateJob [-SubscriptionId <String>] -ResourceGroupID <String> -ProjectID <String> [-Filter <String>]
 [-DefaultProfile <PSObject>] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] [<CommonParameters>]
```

## DESCRIPTION
The Get-AzMigrateJob cmdlet retrives the status of an Azure Migrate job.

## EXAMPLES

### EXAMPLE 1
```
Get-AzMigrateJob -JobID "/Subscriptions/xxx-xxx-xxx/resourceGroups/azmigratepwshtestasr13072020/providers/Microsoft.RecoveryServices/vaults/AzMigrateTestProjectPWSH02aarsvault/replicationJobs/997e2a92-5afe-49c7-a81a-89660aec9b7b"
```

### EXAMPLE 2
```
Get-AzMigrateJob -ResourceGroupName 'azmigratepwshtestasr13072020' -ProjectName 'AzMigrateTestProjectPWSH'
```

### EXAMPLE 3
```
Get-AzMigrateJob -ResourceGroupName 'azmigratepwshtestasr13072020' -ProjectName 'AzMigrateTestProjectPWSH' -JobName 7ae1ee7c-442c-499d-8b0e-81d52a42b71e
```

## PARAMETERS

### -ResourceGroupName
The name of the resource group where the recovery services vault is present.

```yaml
Type: String
Parameter Sets: ListByName, GetByName
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ProjectName
The name of the migrate project.

```yaml
Type: String
Parameter Sets: ListByName, GetByName
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SubscriptionId
Azure Subscription ID.

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

### -JobID
Specifies the job id for which the details needs to be retrieved.

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

### -JobName
Job identifier

```yaml
Type: String
Parameter Sets: GetByName
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -InputObject
Specifies the job object of the replicating server.
To construct, see NOTES section for INPUTOBJECT properties and create a hash table.

```yaml
Type: IJob
Parameter Sets: GetByInputObject
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ResourceGroupID
Specifies the Resource Group of the Azure Migrate Project in the current subscription.

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

### -ProjectID
Specifies the Azure Migrate Project in which servers are replicating.

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

### -Filter
OData filter options.

```yaml
Type: String
Parameter Sets: ListByName, ListById
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

## OUTPUTS

### Microsoft.Azure.PowerShell.Cmdlets.Migrate.Models.Api20220501.IJob
## NOTES
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties.
For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT \<IJob\>: Specifies the job object of the replicating server.
  \[Location \<String\>\]: Resource Location
  \[ActivityId \<String\>\]: The activity id.
  \[AllowedAction \<String\[\]\>\]: The Allowed action the job.
  \[CustomDetailAffectedObjectDetail \<IJobDetailsAffectedObjectDetails\>\]: The affected object properties like source server, source cloud, target server, target cloud etc.
based on the workflow object details.
    \[(Any) \<String\>\]: This indicates any property can be added to this object.
  \[CustomDetailInstanceType \<String\>\]: Gets the type of job details (see JobDetailsTypes enum for possible values).
  \[EndTime \<DateTime?\>\]: The end time.
  \[Error \<IJobErrorDetails\[\]\>\]: The errors.
    \[CreationTime \<DateTime?\>\]: The creation time of job error.
    \[ErrorLevel \<String\>\]: Error level of error.
    \[ProviderErrorDetailErrorCode \<Int32?\>\]: The Error code.
    \[ProviderErrorDetailErrorId \<String\>\]: The Provider error Id.
    \[ProviderErrorDetailErrorMessage \<String\>\]: The Error message.
    \[ProviderErrorDetailPossibleCaus \<String\>\]: The possible causes for the error.
    \[ProviderErrorDetailRecommendedAction \<String\>\]: The recommended action to resolve the error.
    \[ServiceErrorDetailActivityId \<String\>\]: Activity Id.
    \[ServiceErrorDetailCode \<String\>\]: Error code.
    \[ServiceErrorDetailMessage \<String\>\]: Error message.
    \[ServiceErrorDetailPossibleCaus \<String\>\]: Possible causes of error.
    \[ServiceErrorDetailRecommendedAction \<String\>\]: Recommended action to resolve error.
    \[TaskId \<String\>\]: The Id of the task.
  \[FriendlyName \<String\>\]: The DisplayName.
  \[ScenarioName \<String\>\]: The ScenarioName.
  \[StartTime \<DateTime?\>\]: The start time.
  \[State \<String\>\]: The status of the Job.
It is one of these values - NotStarted, InProgress, Succeeded, Failed, Cancelled, Suspended or Other.
  \[StateDescription \<String\>\]: The description of the state of the Job.
For e.g.
- For Succeeded state, description can be Completed, PartiallySucceeded, CompletedWithInformation or Skipped.
  \[TargetInstanceType \<String\>\]: The type of the affected object which is of Microsoft.Azure.SiteRecovery.V2015_11_10.AffectedObjectType class.
  \[TargetObjectId \<String\>\]: The affected Object Id.
  \[TargetObjectName \<String\>\]: The name of the affected object.
  \[Task \<IAsrTask\[\]\>\]: The tasks.
    \[AllowedAction \<String\[\]\>\]: The state/actions applicable on this task.
    \[CustomDetailInstanceType \<String\>\]: The type of task details.
    \[EndTime \<DateTime?\>\]: The end time.
    \[Error \<IJobErrorDetails\[\]\>\]: The task error details.
    \[FriendlyName \<String\>\]: The name.
    \[GroupTaskCustomDetailChildTask \<IAsrTask\[\]\>\]: The child tasks.
    \[GroupTaskCustomDetailInstanceType \<String\>\]: The type of task details.
    \[Name \<String\>\]: The unique Task name.
    \[StartTime \<DateTime?\>\]: The start time.
    \[State \<String\>\]: The State.
It is one of these values - NotStarted, InProgress, Succeeded, Failed, Cancelled, Suspended or Other.
    \[StateDescription \<String\>\]: The description of the task state.
For example - For Succeeded state, description can be Completed, PartiallySucceeded, CompletedWithInformation or Skipped.
    \[TaskId \<String\>\]: The Id.
    \[TaskType \<String\>\]: The type of task.
Details in CustomDetails property depend on this type.

## RELATED LINKS

[https://docs.microsoft.com/powershell/module/az.migrate/get-azmigratejob](https://docs.microsoft.com/powershell/module/az.migrate/get-azmigratejob)

