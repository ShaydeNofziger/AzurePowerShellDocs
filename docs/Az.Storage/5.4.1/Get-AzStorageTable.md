---
external help file: Microsoft.Azure.PowerShell.Cmdlets.Storage.dll-Help.xml
Module Name: Az.Storage
online version: https://learn.microsoft.com/powershell/module/az.storage/get-azstoragetable
schema: 2.0.0
---

# Get-AzStorageTable

## SYNOPSIS
Lists the storage tables.

## SYNTAX

### TableName (Default)
```
Get-AzStorageTable [[-Name] <String>] [-Context <IStorageContext>] [-DefaultProfile <IAzureContextContainer>]
 [<CommonParameters>]
```

### TablePrefix
```
Get-AzStorageTable -Prefix <String> [-Context <IStorageContext>] [-DefaultProfile <IAzureContextContainer>]
 [<CommonParameters>]
```

## DESCRIPTION
The Get-AzStorageTable cmdlet lists the storage tables associated with the storage account in Azure.

## EXAMPLES

### Example 1: List all Azure Storage tables
```
Get-AzStorageTable
```

This command gets all storage tables for a Storage account.

### Example 2: List Azure Storage tables using a wildcard character
```
Get-AzStorageTable -Name table*
```

This command uses a wildcard character to get storage tables whose name starts with table.

### Example 3: List Azure Storage tables using table name prefix
```
Get-AzStorageTable -Prefix "table"
```

This command uses the Prefix parameter to get storage tables whose name starts with table.

## PARAMETERS

### -Context
Specifies the storage context.
To create it, you can use the New-AzStorageContext cmdlet.

```yaml
Type: IStorageContext
Parameter Sets: (All)
Aliases:

Required: False
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
Aliases: AzureRmContext, AzureCredential

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Name
Specifies the table name.
If the table name is empty, the cmdlet lists all the tables.
Otherwise, it lists all tables that match the specified name or the regular name pattern.

```yaml
Type: String
Parameter Sets: TableName
Aliases: N, Table

Required: False
Position: 0
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: True
```

### -Prefix
Specifies a prefix used in the name of the table or tables you want to get.
You can use this to find all tables that start with the same string, such as table.

```yaml
Type: String
Parameter Sets: TablePrefix
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### System.String
### Microsoft.Azure.Commands.Common.Authentication.Abstractions.IStorageContext
## OUTPUTS

### Microsoft.WindowsAzure.Commands.Common.Storage.ResourceModel.AzureStorageTable
## NOTES

## RELATED LINKS

[New-AzStorageTable]()

[Remove-AzStorageTable]()

