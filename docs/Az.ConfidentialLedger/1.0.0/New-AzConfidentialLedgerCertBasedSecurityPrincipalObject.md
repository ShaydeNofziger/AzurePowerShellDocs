---
external help file: Az.ConfidentialLedger-help.xml
Module Name: Az.ConfidentialLedger
online version: https://docs.microsoft.com/powershell/module/az.ConfidentialLedger/new-AzConfidentialLedgerCertBasedSecurityPrincipalObject
schema: 2.0.0
---

# New-AzConfidentialLedgerCertBasedSecurityPrincipalObject

## SYNOPSIS
Create an in-memory object for CertBasedSecurityPrincipal.

## SYNTAX

```
New-AzConfidentialLedgerCertBasedSecurityPrincipalObject [-Cert <String>] [-LedgerRoleName <LedgerRoleName>]
 [<CommonParameters>]
```

## DESCRIPTION
Create an in-memory object for CertBasedSecurityPrincipal.

## EXAMPLES

### EXAMPLE 1
```
New-AzConfidentialLedgerCertBasedSecurityPrincipalObject `
  -Cert "-----BEGIN CERTIFICATE-----********************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************-----END CERTIFICATE-----" `
  -LedgerRoleName "Reader"
```

Cert
----
-----BEGIN CERTIFICATE-----MIIBsjCCATigAwIBAgIUZWIbyG79TniQLd2UxJuU74tqrKcwCgYIKoZIzj0EAwMwEDEOMAwGA1UEAwwFdXNlcjAwHhc…

## PARAMETERS

### -Cert
Public key of the user cert (.pem or .cer).

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

### -LedgerRoleName
LedgerRole associated with the Security Principal of Ledger.

```yaml
Type: LedgerRoleName
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

### Microsoft.Azure.PowerShell.Cmdlets.ConfidentialLedger.Models.Api20220513.CertBasedSecurityPrincipal
## NOTES

## RELATED LINKS

[https://docs.microsoft.com/powershell/module/az.ConfidentialLedger/new-AzConfidentialLedgerCertBasedSecurityPrincipalObject](https://docs.microsoft.com/powershell/module/az.ConfidentialLedger/new-AzConfidentialLedgerCertBasedSecurityPrincipalObject)

