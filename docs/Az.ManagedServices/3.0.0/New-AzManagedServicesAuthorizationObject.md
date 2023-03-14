---
external help file: Az.ManagedServices-help.xml
Module Name: Az.ManagedServices
online version: https://docs.microsoft.com/powershell/module/az.ManagedServices/new-AzManagedServicesAuthorizationObject
schema: 2.0.0
---

# New-AzManagedServicesAuthorizationObject

## SYNOPSIS
Create an in-memory object for Authorization.

## SYNTAX

```
New-AzManagedServicesAuthorizationObject -PrincipalId <String> -RoleDefinitionId <String>
 [-DelegatedRoleDefinitionId <String[]>] [-PrincipalIdDisplayName <String>] [<CommonParameters>]
```

## DESCRIPTION
Create an in-memory object for Authorization.

## EXAMPLES

### EXAMPLE 1
```
New-AzManagedServicesAuthorizationObject -PrincipalId "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx" -RoleDefinitionId "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx" -PrincipalIdDisplayName "Test user"
```

DelegatedRoleDefinitionId PrincipalId                          PrincipalIdDisplayName RoleDefinitionId
------------------------- -----------                          ---------------------- ----------------
                          xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx Test user              xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx

### EXAMPLE 2
```
New-AzManagedServicesAuthorizationObject -PrincipalId "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx" -RoleDefinitionId "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx" -PrincipalIdDisplayName "Test user" -DelegatedRoleDefinitionId "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"
```

DelegatedRoleDefinitionId                                                    PrincipalId                          PrincipalIdDisplayName RoleDefinitionId
-------------------------                                                    -----------                          ---------------------- ----------------
{xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx, xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx} xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx Test user              xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx

## PARAMETERS

### -PrincipalId
The identifier of the Azure Active Directory principal.

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

### -RoleDefinitionId
The identifier of the Azure built-in role that defines the permissions that the Azure Active Directory principal will have on the projected scope.

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

### -DelegatedRoleDefinitionId
The delegatedRoleDefinitionIds field is required when the roleDefinitionId refers to the User Access Administrator Role.
It is the list of role definition ids which define all the permissions that the user in the authorization can assign to other principals.

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

### -PrincipalIdDisplayName
The display name of the Azure Active Directory principal.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Microsoft.Azure.PowerShell.Cmdlets.ManagedServices.Models.Api20200201Preview.Authorization
## NOTES

## RELATED LINKS

[https://docs.microsoft.com/powershell/module/az.ManagedServices/new-AzManagedServicesAuthorizationObject](https://docs.microsoft.com/powershell/module/az.ManagedServices/new-AzManagedServicesAuthorizationObject)

