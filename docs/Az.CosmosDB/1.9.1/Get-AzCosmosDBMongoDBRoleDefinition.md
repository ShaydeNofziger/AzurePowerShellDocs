---
external help file: Microsoft.Azure.PowerShell.Cmdlets.CosmosDB.dll-Help.xml
Module Name: Az.CosmosDB
online version: https://learn.microsoft.com/powershell/module/az.cosmosdb/get-azcosmosdbmongodbroledefinition
schema: 2.0.0
---

# Get-AzCosmosDBMongoDBRoleDefinition

## SYNOPSIS
Gets the CosmosDB MongoDB Role Definition for the specified resource group and account.

## SYNTAX

### ByNameParameterSet (Default)
```
Get-AzCosmosDBMongoDBRoleDefinition -ResourceGroupName <String> -AccountName <String> [-Id <String>]
 [-DatabaseName <String>] [-DefaultProfile <IAzureContextContainer>] [<CommonParameters>]
```

### ByParentObjectParameterSet
```
Get-AzCosmosDBMongoDBRoleDefinition [-Id <String>] [-DatabaseName <String>]
 -DatabaseAccountObject <PSDatabaseAccountGetResults> [-DefaultProfile <IAzureContextContainer>]
 [<CommonParameters>]
```

## DESCRIPTION
The Get-AzCosmosDBMongoDBRoleDefinition cmdlet gets the list of all existing CosmosDB MongoDB API Role Definitions for a given ResourceGroupName, AccountName and gets a single CosmosDB Mongo API Database for a given ResourceGroupName, AccountName, and Id.
Id can be either fully qualified or just the id string.

## EXAMPLES

### Example 1
```
Get-AzCosmosDBMongoDBRoleDefinition -AccountName accountName -ResourceGroupName resourceGroupName -Id id

Id           : /subscriptions/subscriptionId/resourceGroups/resourceGroupName/providers/Microsoft.DocumentDB/databaseAccounts/accountName/mongodbRoleDefinitions/id
RoleName     : test_mongo_role
Type         : CustomRole
DatabaseName : test
Privileges   : {Microsoft.Azure.Management.CosmosDB.Models.Privilege}
Roles        : {Microsoft.Azure.Management.CosmosDB.Models.Role, Microsoft.Azure.Management.CosmosDB.Models.Role}
```

Get Mongo Role Definition for the given Resource Group and Account Role Id.

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

### -DatabaseName
Database Name for the MongoDB Role Definition.

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
Role Definition Id.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None
## OUTPUTS

### Microsoft.Azure.Commands.CosmosDB.Models.PSMongoDBRoleDefinitionGetResults
## NOTES

## RELATED LINKS

[New-AzCosmosDBMongoDBRoleDefinition]()

[Update-AzCosmosDBMongoDBRoleDefinition]()

[Remove-AzCosmosDBMongoDBRoleDefinition]()

