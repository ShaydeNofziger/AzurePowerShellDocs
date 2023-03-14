---
external help file: Az.Cdn-help.xml
Module Name: Az.Cdn
online version: https://docs.microsoft.com/powershell/module/az.Cdn/new-AzFrontDoorCdnSecretUrlSigningKeyParametersObject
schema: 2.0.0
---

# New-AzFrontDoorCdnSecretUrlSigningKeyParametersObject

## SYNOPSIS
Create an in-memory object for UrlSigningKeyParameters.

## SYNTAX

```
New-AzFrontDoorCdnSecretUrlSigningKeyParametersObject -KeyId <String> -Type <SecretType>
 [-SecretSourceId <String>] [-SecretVersion <String>] [<CommonParameters>]
```

## DESCRIPTION
Create an in-memory object for UrlSigningKeyParameters.

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

### -KeyId
Defines the customer defined key Id.
This id will exist in the incoming request to indicate the key used to form the hash.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Microsoft.Azure.PowerShell.Cmdlets.Cdn.Models.Api20210601.UrlSigningKeyParameters
## NOTES

## RELATED LINKS

[https://docs.microsoft.com/powershell/module/az.Cdn/new-AzFrontDoorCdnSecretUrlSigningKeyParametersObject](https://docs.microsoft.com/powershell/module/az.Cdn/new-AzFrontDoorCdnSecretUrlSigningKeyParametersObject)

