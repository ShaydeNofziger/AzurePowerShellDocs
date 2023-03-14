﻿---
external help file: Microsoft.Azure.PowerShell.Cmdlets.Storage.Management.dll-Help.xml
Module Name: Az.Storage
online version: https://learn.microsoft.com/powershell/module/az.storage/set-azcurrentstorageaccount
schema: 2.0.0
---

# Set-AzCurrentStorageAccount

## SYNOPSIS
Modifies the current Storage account of the specified subscription.

## SYNTAX

### UsingResourceGroupAndNameParameterSet (Default)
```
Set-AzCurrentStorageAccount -ResourceGroupName <String> -Name <String>
 [-DefaultProfile <IAzureContextContainer>] [<CommonParameters>]
```

### UsingStorageContext
```
Set-AzCurrentStorageAccount -Context <IStorageContext> [-DefaultProfile <IAzureContextContainer>]
 [<CommonParameters>]
```

## DESCRIPTION
The Set-AzCurrentStorageAccount cmdlet modifies the current Azure Storage account of the specified Azure subscription in Azure PowerShell.
The current Storage account is used as the default when you access Storage without specifying a Storage account name.

## EXAMPLES

### Example 1: Set the current Storage account
```
Set-AzCurrentStorageAccount -ResourceGroupName "RG01" -Name "mystorageaccount"
```

This command sets the default Storage account for the specified subscription.

## PARAMETERS

### -Context
Specifies an AzureStorageContext object for the current Storage account.
To obtain a storage context object, use the New-AzStorageContext cmdlet.

```yaml
Type: IStorageContext
Parameter Sets: UsingStorageContext
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -DefaultProfile
The credentials, account, tenant, and subscription used for communication with Azure.

```yaml
Type: IAzureContextContainer
Parameter Sets: (All)
Aliases: AzContext, AzureRmContext, AzureCredential

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Name
Specifies the name of the Storage account that this cmdlet modifies.

```yaml
Type: String
Parameter Sets: UsingResourceGroupAndNameParameterSet
Aliases: StorageAccountName, AccountName

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ResourceGroupName
Specifies the resource group that contains the Storage account to modify.

```yaml
Type: String
Parameter Sets: UsingResourceGroupAndNameParameterSet
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### Microsoft.Azure.Commands.Common.Authentication.Abstractions.IStorageContext
### System.String
## OUTPUTS

### System.String
## NOTES

## RELATED LINKS

[Set-AzStorageAccount]()
