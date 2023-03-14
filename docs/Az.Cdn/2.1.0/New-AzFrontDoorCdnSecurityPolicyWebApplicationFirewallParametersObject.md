---
external help file: Az.Cdn-help.xml
Module Name: Az.Cdn
online version: https://docs.microsoft.com/powershell/module/az.Cdn/new-AzCdnFrontDoorSecurityPolicyWebApplicationFirewallParametersObject
schema: 2.0.0
---

# New-AzFrontDoorCdnSecurityPolicyWebApplicationFirewallParametersObject

## SYNOPSIS
Create an in-memory object for SecurityPolicyWebApplicationFirewallParameters.

## SYNTAX

```
New-AzFrontDoorCdnSecurityPolicyWebApplicationFirewallParametersObject
 [-Association <ISecurityPolicyWebApplicationFirewallAssociation[]>] [-WafPolicyId <String>]
 [<CommonParameters>]
```

## DESCRIPTION
Create an in-memory object for SecurityPolicyWebApplicationFirewallParameters.

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

### -Association
Waf associations.
To construct, see NOTES section for ASSOCIATION properties and create a hash table.

```yaml
Type: ISecurityPolicyWebApplicationFirewallAssociation[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -WafPolicyId
Resource ID.

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

### Microsoft.Azure.PowerShell.Cmdlets.Cdn.Models.Api20210601.SecurityPolicyWebApplicationFirewallParameters
## NOTES
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties.
For information on hash tables, run Get-Help about_Hash_Tables.

ASSOCIATION \<ISecurityPolicyWebApplicationFirewallAssociation\[\]\>: Waf associations.
  \[Domain \<IActivatedResourceReference\[\]\>\]: List of domains.
    \[Id \<String\>\]: Resource ID.
  \[PatternsToMatch \<String\[\]\>\]: List of paths

## RELATED LINKS

[https://docs.microsoft.com/powershell/module/az.Cdn/new-AzCdnFrontDoorSecurityPolicyWebApplicationFirewallParametersObject](https://docs.microsoft.com/powershell/module/az.Cdn/new-AzCdnFrontDoorSecurityPolicyWebApplicationFirewallParametersObject)

