---
external help file: Az.Resources-help.xml
Module Name: Az.Resources
online version: https://learn.microsoft.com/powershell/module/az.resources/stop-azroleassignmentschedulerequest
schema: 2.0.0
---

# Stop-AzRoleAssignmentScheduleRequest

## SYNOPSIS
Cancels a pending role assignment schedule request.

## SYNTAX

### Cancel (Default)
```
Stop-AzRoleAssignmentScheduleRequest -Name <String> -Scope <String> [-DefaultProfile <PSObject>] [-Break]
 [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-PassThru] [-Proxy <Uri>]
 [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### CancelViaIdentity
```
Stop-AzRoleAssignmentScheduleRequest -InputObject <IAuthorizationIdentity> [-DefaultProfile <PSObject>]
 [-Break] [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-PassThru]
 [-Proxy <Uri>] [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

## DESCRIPTION
Cancels a pending role assignment schedule request.

## EXAMPLES

### EXAMPLE 1
```
$scope = "/subscriptions/38ab2ccc-3747-4567-b36b-9478f5602f0d/"
$name = "47f8978c-5d8d-4fbf-b4b6-2f43eeb43ec6"
Stop-AzRoleAssignmentScheduleRequest -Scope $scope -Name $name
```

## PARAMETERS

### -Name
The name of the role assignment request to cancel.

```yaml
Type: String
Parameter Sets: Cancel
Aliases: RoleAssignmentScheduleRequestName

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Scope
The scope of the role assignment request to cancel.

```yaml
Type: String
Parameter Sets: Cancel
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
Parameter Sets: CancelViaIdentity
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

### -PassThru
Returns true when the command succeeds

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

### Microsoft.Azure.PowerShell.Cmdlets.Resources.Authorization.Models.IAuthorizationIdentity
## OUTPUTS

### System.Boolean
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

[https://learn.microsoft.com/powershell/module/az.resources/stop-azroleassignmentschedulerequest](https://learn.microsoft.com/powershell/module/az.resources/stop-azroleassignmentschedulerequest)

