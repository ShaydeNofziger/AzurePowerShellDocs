---
external help file: Az.ManagedServices-help.xml
Module Name: Az.ManagedServices
online version: https://docs.microsoft.com/powershell/module/az.ManagedServices/new-AzManagedServicesEligibleApproverObject
schema: 2.0.0
---

# New-AzManagedServicesEligibleApproverObject

## SYNOPSIS
Create an in-memory object for EligibleApprover.

## SYNTAX

```
New-AzManagedServicesEligibleApproverObject -PrincipalId <String> [-PrincipalIdDisplayName <String>]
 [<CommonParameters>]
```

## DESCRIPTION
Create an in-memory object for EligibleApprover.

## EXAMPLES

### EXAMPLE 1
```
New-AzManagedServicesEligibleApproverObject -PrincipalId "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx" -PrincipalIdDisplayName "Approvers group"
```

PrincipalId                          PrincipalIdDisplayName
-----------                          ----------------------
xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx Approvers group

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

### Microsoft.Azure.PowerShell.Cmdlets.ManagedServices.Models.Api20200201Preview.EligibleApprover
## NOTES

## RELATED LINKS

[https://docs.microsoft.com/powershell/module/az.ManagedServices/new-AzManagedServicesEligibleApproverObject](https://docs.microsoft.com/powershell/module/az.ManagedServices/new-AzManagedServicesEligibleApproverObject)

