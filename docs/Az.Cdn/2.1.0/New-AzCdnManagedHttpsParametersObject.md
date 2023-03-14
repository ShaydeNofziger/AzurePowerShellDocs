---
external help file: Az.Cdn-help.xml
Module Name: Az.Cdn
online version: https://docs.microsoft.com/powershell/module/az.Cdn/new-AzCdnManagedHttpsParametersObject
schema: 2.0.0
---

# New-AzCdnManagedHttpsParametersObject

## SYNOPSIS
Create an in-memory object for CdnManagedHttpsParameters.

## SYNTAX

```
New-AzCdnManagedHttpsParametersObject -CertificateSourceParameterCertificateType <CertificateType>
 -CertificateSource <CertificateSource> -ProtocolType <ProtocolType> [-MinimumTlsVersion <MinimumTlsVersion>]
 [<CommonParameters>]
```

## DESCRIPTION
Create an in-memory object for CdnManagedHttpsParameters.

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

### -CertificateSourceParameterCertificateType
Type of certificate used.

```yaml
Type: CertificateType
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -CertificateSource
Defines the source of the SSL certificate.

```yaml
Type: CertificateSource
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ProtocolType
Defines the TLS extension protocol that is used for secure delivery.

```yaml
Type: ProtocolType
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MinimumTlsVersion
TLS protocol version that will be used for Https.

```yaml
Type: MinimumTlsVersion
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

### Microsoft.Azure.PowerShell.Cmdlets.Cdn.Models.Api20210601.CdnManagedHttpsParameters
## NOTES

## RELATED LINKS

[https://docs.microsoft.com/powershell/module/az.Cdn/new-AzCdnManagedHttpsParametersObject](https://docs.microsoft.com/powershell/module/az.Cdn/new-AzCdnManagedHttpsParametersObject)

