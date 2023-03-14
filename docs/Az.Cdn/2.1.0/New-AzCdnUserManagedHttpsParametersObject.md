---
external help file: Az.Cdn-help.xml
Module Name: Az.Cdn
online version: https://docs.microsoft.com/powershell/module/az.Cdn/new-AzCdnUserManagedHttpsParametersObject
schema: 2.0.0
---

# New-AzCdnUserManagedHttpsParametersObject

## SYNOPSIS
Create an in-memory object for UserManagedHttpsParameters.

## SYNTAX

```
New-AzCdnUserManagedHttpsParametersObject -CertificateSourceParameterResourceGroupName <String>
 -CertificateSourceParameterSecretName <String> -CertificateSourceParameterSubscriptionId <String>
 -CertificateSourceParameterVaultName <String> -CertificateSource <CertificateSource>
 -ProtocolType <ProtocolType> [-CertificateSourceParameterSecretVersion <String>]
 [-MinimumTlsVersion <MinimumTlsVersion>] [<CommonParameters>]
```

## DESCRIPTION
Create an in-memory object for UserManagedHttpsParameters.

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

### -CertificateSourceParameterResourceGroupName
Resource group of the user's Key Vault containing the SSL certificate.

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

### -CertificateSourceParameterSecretName
The name of Key Vault Secret (representing the full certificate PFX) in Key Vault.

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

### -CertificateSourceParameterSubscriptionId
Subscription Id of the user's Key Vault containing the SSL certificate.

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

### -CertificateSourceParameterVaultName
The name of the user's Key Vault containing the SSL certificate.

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

### -CertificateSourceParameterSecretVersion
The version(GUID) of Key Vault Secret in Key Vault.

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

### Microsoft.Azure.PowerShell.Cmdlets.Cdn.Models.Api20210601.UserManagedHttpsParameters
## NOTES

## RELATED LINKS

[https://docs.microsoft.com/powershell/module/az.Cdn/new-AzCdnUserManagedHttpsParametersObject](https://docs.microsoft.com/powershell/module/az.Cdn/new-AzCdnUserManagedHttpsParametersObject)

