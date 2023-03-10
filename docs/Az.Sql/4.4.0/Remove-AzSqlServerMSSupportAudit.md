---
external help file: Microsoft.Azure.PowerShell.Cmdlets.Sql.dll-Help.xml
Module Name: Az.Sql
online version: https://learn.microsoft.com/powershell/module/az.sql/Remove-AzSqlServerMSSupportAudit
schema: 2.0.0
---

# Remove-AzSqlServerMSSupportAudit

## SYNOPSIS
Removes the Microsoft support operations auditing settings of an Azure SQL server.

## SYNTAX

### ServerParameterSet (Default)
```
Remove-AzSqlServerMSSupportAudit [-ResourceGroupName] <String> [-ServerName] <String> [-AsJob]
 [-DefaultProfile <IAzureContextContainer>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### ServerObjectParameterSet
```
Remove-AzSqlServerMSSupportAudit -ServerObject <AzureSqlServerModel> [-AsJob]
 [-DefaultProfile <IAzureContextContainer>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
The Remove-AzSqlServerMSSupportAudit cmdlet removes the  Microsoft support operations auditing settings of an Azure SQL server.
To use the cmdlet, use the ResourceGroupName and ServerName parameters to identify the server.

## EXAMPLES

### Example 1: Remove the Microsoft support operations auditing settings of an Azure SQL server
```
Remove-AzSqlServerMSSupportAudit -ResourceGroupName "ResourceGroup01" -ServerName "Server01"
```

### Example 2: Remove, through pipeline, the Microsoft support auditing settings of an Azure SQL server
```
Get-AzSqlServer -ResourceGroupName "ResourceGroup01" -ServerName "Server01" | Remove-AzSqlServerMSSupportAudit
```

## PARAMETERS

### -AsJob
Run cmdlet in the background

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

### -ResourceGroupName
The name of the resource group.

```yaml
Type: String
Parameter Sets: ServerParameterSet
Aliases:

Required: True
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ServerName
SQL server name.

```yaml
Type: String
Parameter Sets: ServerParameterSet
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ServerObject
The server object to manage its audit policy.

```yaml
Type: AzureSqlServerModel
Parameter Sets: ServerObjectParameterSet
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
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

### System.String
### Microsoft.Azure.Commands.Sql.Server.Model.AzureSqlServerModel
## OUTPUTS

### System.Boolean
## NOTES

## RELATED LINKS
