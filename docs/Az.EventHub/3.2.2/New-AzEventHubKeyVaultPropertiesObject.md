---
external help file: Az.EventHub-help.xml
Module Name: Az.EventHub
online version: https://learn.microsoft.com/powershell/module/az.EventHub/new-AzEventHubKeyVaultPropertiesObject
schema: 2.0.0
---

# New-AzEventHubKeyVaultPropertiesObject

## SYNOPSIS
Create an in-memory object for KeyVaultProperties.

## SYNTAX

```
New-AzEventHubKeyVaultPropertiesObject [-KeyName <String>] [-KeyVaultUri <String>] [-KeyVersion <String>]
 [-UserAssignedIdentity <String>] [<CommonParameters>]
```

## DESCRIPTION
Create an in-memory object for KeyVaultProperties.

## EXAMPLES

### EXAMPLE 1
```
New-AzEventHubKeyVaultPropertiesObject -KeyName key1 -KeyVaultUri https://testkeyvault.vault.azure.net
```

## PARAMETERS

### -KeyName
Name of the Key from KeyVault.

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

### -KeyVaultUri
Uri of KeyVault.

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

### -KeyVersion
Key Version.

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

### -UserAssignedIdentity
ARM ID of user Identity selected for encryption.

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

### Microsoft.Azure.PowerShell.Cmdlets.EventHub.Models.Api202201Preview.KeyVaultProperties
## NOTES

## RELATED LINKS

[https://learn.microsoft.com/powershell/module/az.EventHub/new-AzEventHubKeyVaultPropertiesObject](https://learn.microsoft.com/powershell/module/az.EventHub/new-AzEventHubKeyVaultPropertiesObject)

