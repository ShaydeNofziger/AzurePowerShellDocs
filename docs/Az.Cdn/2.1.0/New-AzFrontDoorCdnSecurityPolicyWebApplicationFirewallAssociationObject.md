---
external help file: Az.Cdn-help.xml
Module Name: Az.Cdn
online version: https://docs.microsoft.com/powershell/module/az.Cdn/new-AzFrontDoorCdnSecurityPolicyWebApplicationFirewallAssociationObject
schema: 2.0.0
---

# New-AzFrontDoorCdnSecurityPolicyWebApplicationFirewallAssociationObject

## SYNOPSIS
Create an in-memory object for SecurityPolicyWebApplicationFirewallAssociation.

## SYNTAX

```
New-AzFrontDoorCdnSecurityPolicyWebApplicationFirewallAssociationObject
 [-Domain <IActivatedResourceReference[]>] [-PatternsToMatch <String[]>] [<CommonParameters>]
```

## DESCRIPTION
Create an in-memory object for SecurityPolicyWebApplicationFirewallAssociation.

## EXAMPLES

### EXAMPLE 1
```
{{ Add code here }}
```

### EXAMPLE 2
```
{{ Add code here }}
```

## PARAMETERS

### -Domain
List of domains.
To construct, see NOTES section for DOMAIN properties and create a hash table.

```yaml
Type: IActivatedResourceReference[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PatternsToMatch
List of paths.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Microsoft.Azure.PowerShell.Cmdlets.Cdn.Models.Api20210601.SecurityPolicyWebApplicationFirewallAssociation
## NOTES
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties.
For information on hash tables, run Get-Help about_Hash_Tables.

DOMAIN \<IActivatedResourceReference\[\]\>: List of domains.
  \[Id \<String\>\]: Resource ID.

## RELATED LINKS

[https://docs.microsoft.com/powershell/module/az.Cdn/new-AzFrontDoorCdnSecurityPolicyWebApplicationFirewallAssociationObject](https://docs.microsoft.com/powershell/module/az.Cdn/new-AzFrontDoorCdnSecurityPolicyWebApplicationFirewallAssociationObject)

