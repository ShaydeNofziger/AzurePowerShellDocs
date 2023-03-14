---
external help file: Az.Resources-help.xml
Module Name: Az.Resources
online version: https://learn.microsoft.com/powershell/module/az.resources/update-azrolemanagementpolicy
schema: 2.0.0
---

# Update-AzRoleManagementPolicy

## SYNOPSIS
Update a role management policy

## SYNTAX

### UpdateExpanded (Default)
```
Update-AzRoleManagementPolicy -Name <String> -Scope <String> [-Description <String>] [-DisplayName <String>]
 [-IsOrganizationDefault] [-Rule <IRoleManagementPolicyRule[]>] [-DefaultProfile <PSObject>] [-Break]
 [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>]
 [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### UpdateViaIdentityExpanded
```
Update-AzRoleManagementPolicy -InputObject <IAuthorizationIdentity> [-Description <String>]
 [-DisplayName <String>] [-IsOrganizationDefault] [-Rule <IRoleManagementPolicyRule[]>]
 [-DefaultProfile <PSObject>] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
Update a role management policy

## EXAMPLES

### EXAMPLE 1
```
$scope = "/subscriptions/38ab2ccc-3747-4567-b36b-9478f5602f0d/"
$expirationRule = [RoleManagementPolicyExpirationRule]@{
            isExpirationRequired = "false";
            maximumDuration = "P180D";
            id = "Expiration_Admin_Eligibility";
            ruleType = [RoleManagementPolicyRuleType]("RoleManagementPolicyExpirationRule");
            targetCaller = "Admin";
            targetOperation = @('All');
            targetLevel = "Eligibility";
            targetObject = $null;
            targetInheritableSetting = $null;
            targetEnforcedSetting = $null;
        }
$rules = [IRoleManagementPolicyRule[]]@($expirationRule)
Update-AzRoleManagementPolicy -Scope $scope -Name "33b520ea-3544-4abc-8565-3588deb8e68e" -Rule $rules
```

### EXAMPLE 2
```
$scope = "/subscriptions/38ab2ccc-3747-4567-b36b-9478f5602f0d/"
$expirationRule = [RoleManagementPolicyExpirationRule]@{
            isExpirationRequired = "false";
            maximumDuration = "P180D";
            id = "Expiration_Admin_Eligibility";
            ruleType = [RoleManagementPolicyRuleType]("RoleManagementPolicyExpirationRule");
            targetCaller = "Admin";
            targetOperation = @('All');
            targetLevel = "Eligibility";
            targetObject = $null;
            targetInheritableSetting = $null;
            targetEnforcedSetting = $null;
        }
$notificationRule = [RoleManagementPolicyNotificationRule]@{
            notificationType = "Email";
            recipientType = "Approver";
            isDefaultRecipientsEnabled = "false";
            notificationLevel = "Critical";
            notificationRecipient = $null;                
            id = "Notification_Approver_Admin_Eligibility";
            ruleType = [RoleManagementPolicyRuleType]("RoleManagementPolicyNotificationRule");
            targetCaller = "Admin";
            targetOperation = @('All');
            targetLevel = "Eligibility";
            targetObject = $null;
            targetInheritableSetting = $null;
            targetEnforcedSetting = $null;
        }
$rules = [IRoleManagementPolicyRule[]]@($expirationRule, $notificationRule)
Update-AzRoleManagementPolicy -Scope $scope -Name "33b520ea-3544-4abc-8565-3588deb8e68e" -Rule $rules
```

## PARAMETERS

### -Name
The name (guid) of the role management policy to upsert.

```yaml
Type: String
Parameter Sets: UpdateExpanded
Aliases: RoleManagementPolicyName

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Scope
The scope of the role management policy to upsert.

```yaml
Type: String
Parameter Sets: UpdateExpanded
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
Parameter Sets: UpdateViaIdentityExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Description
The role management policy description.

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

### -DisplayName
The role management policy display name.

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

### -IsOrganizationDefault
The role management policy is default policy.

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

### -Rule
The rule applied to the policy.
To construct, see NOTES section for RULE properties and create a hash table.

```yaml
Type: IRoleManagementPolicyRule[]
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

### Microsoft.Azure.PowerShell.Cmdlets.Resources.Authorization.Models.IAuthorizationIdentity
## OUTPUTS

### Microsoft.Azure.PowerShell.Cmdlets.Resources.Authorization.Models.Api20201001Preview.IRoleManagementPolicy
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

RULE \<IRoleManagementPolicyRule\[\]\>: The rule applied to the policy.
  RuleType \<RoleManagementPolicyRuleType\>: The type of rule
  \[Id \<String\>\]: The id of the rule.
  \[TargetCaller \<String\>\]: The caller of the setting.
  \[TargetEnforcedSetting \<String\[\]\>\]: The list of enforced settings.
  \[TargetInheritableSetting \<String\[\]\>\]: The list of inheritable settings.
  \[TargetLevel \<String\>\]: The assignment level to which it is applied.
  \[TargetObject \<String\[\]\>\]: The list of target objects.
  \[TargetOperation \<String\[\]\>\]: The type of operation.

## RELATED LINKS

[https://learn.microsoft.com/powershell/module/az.resources/update-azrolemanagementpolicy](https://learn.microsoft.com/powershell/module/az.resources/update-azrolemanagementpolicy)

