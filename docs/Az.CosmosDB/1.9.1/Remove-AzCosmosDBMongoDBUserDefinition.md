---
external help file: Microsoft.Azure.PowerShell.Cmdlets.CosmosDB.dll-Help.xml
Module Name: Az.CosmosDB
online version: https://learn.microsoft.com/powershell/module/az.cosmosdb/remove-azcosmosdbmongodbuserdefinition
schema: 2.0.0
---

# Remove-AzCosmosDBMongoDBUserDefinition

## SYNOPSIS
Deletes an existing CosmosDB MongoDB User Definition.

## SYNTAX

### ByNameParameterSet (Default)
```
Remove-AzCosmosDBMongoDBUserDefinition -ResourceGroupName <String> -AccountName <String> -Id <String>
 [-PassThru] [-DefaultProfile <IAzureContextContainer>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### ByParentObjectParameterSet
```
Remove-AzCosmosDBMongoDBUserDefinition -Id <String> -DatabaseAccountObject <PSDatabaseAccountGetResults>
 [-PassThru] [-DefaultProfile <IAzureContextContainer>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### ByObjectParameterSet
```
Remove-AzCosmosDBMongoDBUserDefinition -Id <String> -InputObject <PSMongoDBUserDefinitionGetResults>
 [-PassThru] [-DefaultProfile <IAzureContextContainer>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
The Remove-AzCosmosDBMongoDBUserDefinition cmdlet deletes an existing CosmosDB MongoDB User Definition.

## EXAMPLES

### Example 1
```
Remove-AzCosmosDBMongoDBUserDefinition -ResourceGroupName rgName -AccountName accountName -Id userDefId
```

The cmdlet returns an object of type bool(when -PassThru is passed) which is true, if the delete was successful.

### Example 2
```
$UserDef = Get-AzCosmosDBMongoDBUserDefinition -AccountName accountName -ResourceGroupName resourceGroupName -Id id

Remove-AzCosmosDBMongoDBUserDefinition -InputObject $UserDef
```

The cmdlet returns an object of type bool(when -PassThru is passed) which is true, if the delete was successful.

## PARAMETERS

### -AccountName
Name of the Cosmos DB database account.

```yaml
Type: String
Parameter Sets: ByNameParameterSet
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DatabaseAccountObject
CosmosDB Account object

```yaml
Type: PSDatabaseAccountGetResults
Parameter Sets: ByParentObjectParameterSet
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
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

### -Id
Mongo User Definition ID.

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

### -InputObject
PSMongoDBUserDefinitionGetResults Object

```yaml
Type: PSMongoDBUserDefinitionGetResults
Parameter Sets: ByObjectParameterSet
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -PassThru
To be set to true if the user wants to receive an output.
The output is true if the operation was successful and an error is thrown if not.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -ResourceGroupName
Name of resource group.

```yaml
Type: String
Parameter Sets: ByNameParameterSet
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Confirm
Prompts you for confirmation before running the cmdlet.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: cf

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -WhatIf
Shows what would happen if the cmdlet runs.
The cmdlet is not run.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: wi

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### Microsoft.Azure.Commands.CosmosDB.Models.PSMongoDBUserDefinitionGetResults
## OUTPUTS

### System.Void
### System.Boolean
## NOTES

## RELATED LINKS

[Get-AzCosmosDBMongoDBUserDefinition]()

[New-AzCosmosDBMongoDBUserDefinition]()

[Update-AzCosmosDBMongoDBUserDefinition]()

