﻿---
external help file: Microsoft.Azure.PowerShell.Cmdlets.CosmosDB.dll-Help.xml
Module Name: Az.CosmosDB
online version: https://learn.microsoft.com/powershell/module/az.cosmosdb/update-azcosmosdbmongodbroledefinition
schema: 2.0.0
---

# New-AzCosmosDBMongoDBRoleDefinition

## SYNOPSIS
Update an existing CosmosDB MongoDB Role Definition.

## SYNTAX

### ByFieldsDataActionsParameterSet (Default)
```
New-AzCosmosDBMongoDBRoleDefinition -Id <String> -RoleName <String> -Type <String> -DatabaseName <String>
 -Privileges <PSMongoPrivilege[]> [-Roles <PSMongoRole[]>] [-DefaultProfile <IAzureContextContainer>] [-WhatIf]
 [-Confirm] [<CommonParameters>]
```

### ByNameParameterSet
```
New-AzCosmosDBMongoDBRoleDefinition -ResourceGroupName <String> -AccountName <String> -Id <String>
 -RoleName <String> -Type <String> -DatabaseName <String> -Privileges <PSMongoPrivilege[]>
 [-Roles <PSMongoRole[]>] [-DefaultProfile <IAzureContextContainer>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### ByParentObjectDataActionsParameterSet
```
New-AzCosmosDBMongoDBRoleDefinition -Id <String> -RoleName <String> -Type <String> -DatabaseName <String>
 -Privileges <PSMongoPrivilege[]> [-Roles <PSMongoRole[]>] -DatabaseAccountObject <PSDatabaseAccountGetResults>
 [-DefaultProfile <IAzureContextContainer>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### ByParentObjectPermissionsParameterSet
```
New-AzCosmosDBMongoDBRoleDefinition -Id <String> -RoleName <String> -Type <String> -DatabaseName <String>
 -Privileges <PSMongoPrivilege[]> [-Roles <PSMongoRole[]>] -DatabaseAccountObject <PSDatabaseAccountGetResults>
 [-DefaultProfile <IAzureContextContainer>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### ByResourceIdParameterSet
```
New-AzCosmosDBMongoDBRoleDefinition -Id <String> -RoleName <String> -Type <String> -DatabaseName <String>
 -Privileges <PSMongoPrivilege[]> [-Roles <PSMongoRole[]>] [-ResourceId <String>]
 [-DefaultProfile <IAzureContextContainer>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
Update an existing CosmosDB MongoDB Role Definition.
In order to specify the Role Definition's Privileges,  use the New-AzCosmosDBMongoDBPrivilege cmdlet to create PSMongoPrivilege objects to pass in through the Privileges parameter.
In order to specify the Role Definition's Roles,  use the New-AzCosmosDBMongoDBRole cmdlet to create PSMongoRole objects to pass in through the Roles parameter.

## EXAMPLES

### Example 1: Default
```
$Actions = 'insert', 'find'
  $PrivilegeResource = New-AzCosmosDBMongoDBPrivilegeResource -Database test -Collection test
  $Privilege = New-AzCosmosDBMongoDBPrivilege -PrivilegeResource $PrivilegeResource -Actions $Actions
  $Roles = New-AzCosmosDBMongoDBRole -Database test -Role roleName


Update-AzCosmosDBMongoDBRoleDefinition `
	-AccountName accountName `
	-ResourceGroupName resourceGroupName `
	-DatabaseName test `
	-Id id `
	-Type CustomRole `
	-RoleName roleName `
	-Privileges $Privilege `
	-Roles $Roles

Id           : /subscriptions/subscriptionId/resourceGroups/resourceGroupName/providers/Microsoft.DocumentDB/databaseAccounts/accountName/mongodbRoleDefinitions/id
RoleName     : roleName
Type         : CustomRole
DatabaseName : test
Privileges   : {Microsoft.Azure.Management.CosmosDB.Models.Privilege}
Roles        : {Microsoft.Azure.Management.CosmosDB.Models.Role, Microsoft.Azure.Management.CosmosDB.Models.Role}
```

### Example 2: ParentObject
```
$DatabaseAccount = Get-AzCosmosDBAccount -Name accountName -ResourceGroupName resourceGroupName
$Actions = 'insert', 'find'
$PrivilegeResource = New-AzCosmosDBMongoDBPrivilegeResource -Database test -Collection test
$Privilege = New-AzCosmosDBMongoDBPrivilege -PrivilegeResource $PrivilegeResource -Actions $Actions
$Roles = New-AzCosmosDBMongoDBRole -Database test -Role roleName
Update-AzCosmosDBMongoDBRoleDefinition `
	-Id id `
	-Type CustomRole `
	-RoleName roleName `
	-Privileges $Privilege `
	-Roles $Roles `
	-DatabaseAccountObject $DatabaseAccount

Id           : /subscriptions/subscriptionId/resourceGroups/resourceGroupName/providers/Microsoft.DocumentDB/databaseAccounts/accountName/mongodbRoleDefinitions/id
RoleName     : roleName
Type         : CustomRole
DatabaseName : test
Privileges   : {Microsoft.Azure.Management.CosmosDB.Models.Privilege}
Roles        : {Microsoft.Azure.Management.CosmosDB.Models.Role, Microsoft.Azure.Management.CosmosDB.Models.Role}
```

### Example 3: InputObject
```
$DatabaseAccount = Get-AzCosmosDBAccount -Name accountName -ResourceGroupName resourceGroupName
$Actions = 'insert', 'find'
$PrivilegeResource = New-AzCosmosDBMongoDBPrivilegeResource -Database test -Collection test
$Privilege = New-AzCosmosDBMongoDBPrivilege -PrivilegeResource $PrivilegeResource -Actions $Actions
$Roles = New-AzCosmosDBMongoDBRole -Database test -Role roleName
$RoleDef = Get-AzCosmosDBMongoDBRoleDefinition -AccountName accountName -ResourceGroupName resourceGroupName -Id id

Update-AzCosmosDBMongoDBRoleDefinition `
	-Id id `
	-Type CustomRole `
	-RoleName roleName `
	-Privileges $Privilege `
	-Roles $Roles `
	-InputObject $RoleDef

Id           : /subscriptions/subscriptionId/resourceGroups/resourceGroupName/providers/Microsoft.DocumentDB/databaseAccounts/accountName/mongodbRoleDefinitions/id
RoleName     : roleName
Type         : CustomRole
DatabaseName : test
Privileges   : {Microsoft.Azure.Management.CosmosDB.Models.Privilege}
Roles        : {Microsoft.Azure.Management.CosmosDB.Models.Role, Microsoft.Azure.Management.CosmosDB.Models.Role}
```

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
Role definition object.

```yaml
Type: PSDatabaseAccountGetResults
Parameter Sets: ByParentObjectDataActionsParameterSet, ByParentObjectPermissionsParameterSet
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

Required: True
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
Role Definition Unique Id(Format is \`\<databaseName\>.\<roleName\>\`).

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

### -Privileges
Set of Privileges for CosmosDB MongoDB API.

```yaml
Type: PSMongoPrivilege[]
Parameter Sets: (All)
Aliases:

Required: True
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

### -ResourceId
ResourceId of the resource.

```yaml
Type: String
Parameter Sets: ByResourceIdParameterSet
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RoleName
Role Definition Name.

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

### -Roles
Set of inherited roles for CosmosDB MongoDB API Role Definition.

```yaml
Type: PSMongoRole[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Type
Type of Role Definition, either CustomRole or BuiltInRole.
Default value is CustomRole.

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

## OUTPUTS

### Microsoft.Azure.Commands.CosmosDB.Models.PSMongoDBRoleDefinitionGetResults
## NOTES

## RELATED LINKS

[Get-AzCosmosDBMongoDBRoleDefinition]()

[New-AzCosmosDBMongoDBRoleDefinition]()

[Remove-AzCosmosDBMongoDBRoleDefinition]()
