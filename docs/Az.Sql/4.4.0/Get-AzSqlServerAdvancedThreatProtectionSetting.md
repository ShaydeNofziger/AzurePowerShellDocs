---
external help file: Microsoft.Azure.PowerShell.Cmdlets.Sql.dll-Help.xml
Module Name: Az.Sql
online version: https://learn.microsoft.com/powershell/module/az.sql/Get-AzSqlServerAdvancedThreatProtectionSetting
schema: 2.0.0
---

# Get-AzSqlServerAdvancedThreatProtectionSetting

## SYNOPSIS
Gets the Advanced Threat Protection settings for a server.

## SYNTAX

```
Get-AzSqlServerAdvancedThreatProtectionSetting -ServerName <String> [-ResourceGroupName] <String>
 [-DefaultProfile <IAzureContextContainer>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
The Get-AzSqlServerAdvancedThreatProtectionSetting cmdlet gets the Advanced Threat Protection settings of an Azure SQL server.
To use this cmdlet, specify the ResourceGroupName and ServerName parameters to identify the server for which this cmdlet gets the settings.

## EXAMPLES

### Example 1: Get the Advanced Threat Protection settings for a server
```
Get-AzSqlServerAdvancedThreatProtectionSetting -ResourceGroupName "ResourceGroup11" -ServerName "Server01"

ResourceGroupName             : ResourceGroup11
ServerName                    : Server01
AdvancedThreatProtectionState : Enabled
```

This command gets the Advanced Threat Protection settings for a server named Server01.
The server is assigned to the resource group ResourceGroup11.

## PARAMETERS

### -DefaultProfile
The credentials, account, tenant, and subscription used for communication with azure

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
Specifies the name of the resource group to which the server belongs.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 0
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ServerName
Specifies the name of the server.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
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
## OUTPUTS

### Microsoft.Azure.Commands.Sql.ThreatDetection.Model.ServerAdvancedThreatProtectionSettingsModel
## NOTES

## RELATED LINKS

[SQL Database Documentation](https://learn.microsoft.com/azure/sql-database/)

