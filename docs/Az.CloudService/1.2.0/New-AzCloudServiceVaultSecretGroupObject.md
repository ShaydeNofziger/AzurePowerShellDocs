---
external help file: Az.CloudService-help.xml
Module Name: Az.CloudService
online version: https://learn.microsoft.com/powershell/module/az.cloudservice/new-azcloudservicevaultsecretgroupobject
schema: 2.0.0
---

# New-AzCloudServiceVaultSecretGroupObject

## SYNOPSIS
Create a in-memory object for Vault Secret Group

## SYNTAX

```
New-AzCloudServiceVaultSecretGroupObject [-Id <String>] [-CertificateUrl <String[]>] [<CommonParameters>]
```

## DESCRIPTION
Create a in-memory object for Secret Group

## EXAMPLES

### EXAMPLE 1
```
$keyVault = Get-AzKeyVault -VaultName 'ContosoKeyVault'
$certificate = Get-AzKeyVaultCertificate -VaultName 'ContosoKeyVault' -Name 'ContosoCert'
$secretGroup = New-AzCloudServiceVaultSecretGroupObject -Id $keyVault.ResourceId -CertificateUrl $certificate.SecretId
```

## PARAMETERS

### -Id
Key Vault Resource Id.

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

### -CertificateUrl
This is the URL of a certificate that has been uploaded to Key Vault as a secret.

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

### Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20220904.CloudServiceVaultSecretGroup
## NOTES

## RELATED LINKS

[https://learn.microsoft.com/powershell/module/az.cloudservice/new-azcloudservicevaultsecretgroupobject](https://learn.microsoft.com/powershell/module/az.cloudservice/new-azcloudservicevaultsecretgroupobject)

