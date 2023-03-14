---
external help file: Az.Cdn-help.xml
Module Name: Az.Cdn
online version: https://docs.microsoft.com/powershell/module/az.Cdn/new-AzFrontDoorCdnSecretCustomerCertificateParametersObject
schema: 2.0.0
---

# New-AzFrontDoorCdnSecretCustomerCertificateParametersObject

## SYNOPSIS
Create an in-memory object for CustomerCertificateParameters.

## SYNTAX

```
New-AzFrontDoorCdnSecretCustomerCertificateParametersObject -Type <SecretType> [-SecretSourceId <String>]
 [-SecretVersion <String>] [-SubjectAlternativeName <String[]>] [-UseLatestVersion <Boolean>]
 [<CommonParameters>]
```

## DESCRIPTION
Create an in-memory object for CustomerCertificateParameters.

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

### -Type
The type of the secret resource.

```yaml
Type: SecretType
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SecretSourceId
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

### -SecretVersion
Version of the secret to be used.

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

### -SubjectAlternativeName
The list of SANs.

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

### -UseLatestVersion
Whether to use the latest version for the certificate.

```yaml
Type: Boolean
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

### Microsoft.Azure.PowerShell.Cmdlets.Cdn.Models.Api20210601.CustomerCertificateParameters
## NOTES

## RELATED LINKS

[https://docs.microsoft.com/powershell/module/az.Cdn/new-AzFrontDoorCdnSecretCustomerCertificateParametersObject](https://docs.microsoft.com/powershell/module/az.Cdn/new-AzFrontDoorCdnSecretCustomerCertificateParametersObject)

