---
external help file: Az.ServiceBus-help.xml
Module Name: Az.ServiceBus
online version: https://learn.microsoft.com/powershell/module/az.ServiceBus/new-AzServiceBusKeyVaultPropertiesObject
schema: 2.0.0
---

# New-AzServiceBusKeyVaultPropertiesObject

## SYNOPSIS
Create an in-memory object for KeyVaultProperties.

## SYNTAX

```
New-AzServiceBusKeyVaultPropertiesObject [-KeyName <String>] [-KeyVaultUri <String>] [-KeyVersion <String>]
 [-UserAssignedIdentity <String>] [<CommonParameters>]
```

## DESCRIPTION
Create an in-memory object for KeyVaultProperties.

## EXAMPLES

### EXAMPLE 1
```
New-AzServiceBusKeyVaultPropertiesObject -KeyName key1 -KeyVaultUri https://testkeyvault.vault.azure.net/
```

### EXAMPLE 2
```
$ec1 = "/subscriptions/0000000000000/resourceGroups/myResourceGroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myFirstIdentity"
New-AzServiceBusKeyVaultPropertiesObject -KeyName key4 -KeyVaultUri https://testkeyvault.vault.azure.net/ -UserAssignedIdentity $ec1
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
Version of KeyVault.

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

### Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Models.Api20221001Preview.KeyVaultProperties
## NOTES

## RELATED LINKS

[https://learn.microsoft.com/powershell/module/az.ServiceBus/new-AzServiceBusKeyVaultPropertiesObject](https://learn.microsoft.com/powershell/module/az.ServiceBus/new-AzServiceBusKeyVaultPropertiesObject)

