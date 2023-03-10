---
external help file: Az.Resources-help.xml
Module Name: Az.Resources
online version: https://learn.microsoft.com/powershell/module/az.resources/get-azroleeligibilityschedule
schema: 2.0.0
---

# Get-AzRoleEligibilitySchedule

## SYNOPSIS
Get the specified role eligibility schedule for a resource scope

## SYNTAX

### List (Default)
```
Get-AzRoleEligibilitySchedule -Scope <String> [-Filter <String>] [-DefaultProfile <PSObject>] [-Break]
 [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>]
 [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [<CommonParameters>]
```

### Get
```
Get-AzRoleEligibilitySchedule -Name <String> -Scope <String> [-DefaultProfile <PSObject>] [-Break]
 [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>]
 [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [<CommonParameters>]
```

### GetViaIdentity
```
Get-AzRoleEligibilitySchedule -InputObject <IAuthorizationIdentity> [-DefaultProfile <PSObject>] [-Break]
 [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>]
 [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [<CommonParameters>]
```

## DESCRIPTION
Get the specified role eligibility schedule for a resource scope

## EXAMPLES

### EXAMPLE 1
```
$scope = "/subscriptions/38ab2ccc-3747-4567-b36b-9478f5602f0d"
Get-AzRoleEligibilitySchedule -Scope $scope
```

### EXAMPLE 2
```
$scope = "/" # "/" stands for tenant level resource
Get-AzRoleEligibilitySchedule -Scope $scope -Filter "asTarget()"
```

### EXAMPLE 3
```
$scope = "/subscriptions/38ab2ccc-3747-4567-b36b-9478f5602f0d"
$filter = "roleDefinitionId eq '/providers/Microsoft.Authorization/roleDefinitions/8e3af657-a8ff-443c-a75c-2fe8c4bcb635'"
Get-AzRoleEligibilitySchedule -Scope $scope -Filter $filter
```

### EXAMPLE 4
```
$scope = "/subscriptions/38ab2ccc-3747-4567-b36b-9478f5602f0d"
Get-AzRoleEligibilitySchedule -Scope $scope -Name "4cd7e26b-8eca-425c-969d-ec708c88bf18"
```

## PARAMETERS

### -Name
The name (guid) of the role eligibility schedule to get.

```yaml
Type: String
Parameter Sets: Get
Aliases: RoleEligibilityScheduleName

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Scope
The scope of the role eligibility schedule.

```yaml
Type: String
Parameter Sets: List, Get
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
Type: IAuthorizationIdentity
Parameter Sets: GetViaIdentity
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Filter
The filter to apply on the operation.
Use $filter=atScope() to return all role eligibility schedules at or above the scope.
Use $filter=principalId eq {id} to return all role eligibility schedules at, above or below the scope for the specified principal.
Use $filter=assignedTo('{userId}') to return all role eligibility schedules for the user.
Use $filter=asTarget() to return all role eligibility schedules created for the current user.

```yaml
Type: String
Parameter Sets: List
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

### Microsoft.Azure.PowerShell.Cmdlets.Resources.Authorization.Models.IAuthorizationIdentity
## OUTPUTS

### Microsoft.Azure.PowerShell.Cmdlets.Resources.Authorization.Models.Api20201001Preview.IRoleEligibilitySchedule
## NOTES
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties.
For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT \<IAuthorizationIdentity\>: Identity Parameter
  \[Id \<String\>\]: Resource identity path
  \[RoleAssignmentScheduleInstanceName \<String\>\]: The name (hash of schedule name + time) of the role assignment schedule to get.
  \[RoleAssignmentScheduleName \<String\>\]: The name (guid) of the role assignment schedule to get.
  \[RoleAssignmentScheduleRequestName \<String\>\]: The name of the role assignment to create.
It can be any valid GUID.
  \[RoleEligibilityScheduleInstanceName \<String\>\]: The name (hash of schedule name + time) of the role eligibility schedule to get.
  \[RoleEligibilityScheduleName \<String\>\]: The name (guid) of the role eligibility schedule to get.
  \[RoleEligibilityScheduleRequestName \<String\>\]: The name of the role eligibility to create.
It can be any valid GUID.
  \[RoleManagementPolicyAssignmentName \<String\>\]: The name of format {guid_guid} the role management policy assignment to get.
  \[RoleManagementPolicyName \<String\>\]: The name (guid) of the role management policy to get.
  \[Scope \<String\>\]: The scope of the role management policy.

## RELATED LINKS

[https://learn.microsoft.com/powershell/module/az.resources/get-azroleeligibilityschedule](https://learn.microsoft.com/powershell/module/az.resources/get-azroleeligibilityschedule)

