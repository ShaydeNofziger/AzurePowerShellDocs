---
external help file: Microsoft.Azure.PowerShell.Cmdlets.Synapse.dll-Help.xml
Module Name: Az.Synapse
online version: https://learn.microsoft.com/powershell/module/az.synapse/export-azsynapsesqlscript
schema: 2.0.0
---

# Export-AzSynapseSqlScript

## SYNOPSIS
Exports a sql script from a Synapse workspace.

## SYNTAX

### ExportByName (Default)
```
Export-AzSynapseSqlScript -WorkspaceName <String> -OutputFolder <String> [-Name <String>]
 [-DefaultProfile <IAzureContextContainer>] [<CommonParameters>]
```

### ExportByObject
```
Export-AzSynapseSqlScript -WorkspaceObject <PSSynapseWorkspace> -OutputFolder <String> [-Name <String>]
 [-DefaultProfile <IAzureContextContainer>] [<CommonParameters>]
```

### ExportByInputObject
```
Export-AzSynapseSqlScript -InputObject <PSSqlScriptResource> -OutputFolder <String>
 [-DefaultProfile <IAzureContextContainer>] [<CommonParameters>]
```

## DESCRIPTION
The Export-AzSynapseSqlScript cmdlet exports an Azure Synapse sql script to a SQL Server query(.sql) file.
If you specify the name of a sql script, the cmdlet exports the specified sql script.
If you do not specify a name, the cmdlet export all sql scripts in the workspace.

## EXAMPLES

### Example 1
```
Export-AzSynapseSqlScript -WorkspaceName ContosoWorkspace -OutputFolder "C:\sqlscript"
```

Exports all sql scripts in the workspace ContosoWorkspace to the folder "C:\sqlscript".

### Example 2
```
Export-AzSynapseSqlScript -WorkspaceName ContosoWorkspace -OutputFolder "C:\sqlscript" -Name "ContosoSqlScript"
```

Exports a single sql script named ContosoSqlScript in the workspace ContosoWorkspace to the folder "C:\sqlscript".

### Example 3
```
$ws = Get-AzSynapseWorkspace -Name ContosoWorkspace
$ws | Export-AzSynapseSqlScript -Name ContosoSqlScript -OutputFolder "C:\sqlscript"
```

Exports a single sql script called ContosoSqlScript in the workspace ContosoWorkspace to the folder "C:\sqlscript" through pipeline.

### Example 4
```
$sqlscript = Get-AzSynapseSqlScript  -WorkspaceName ContosoWorkspace -Name ContosoSqlScript
$sqlscript | Export-AzSynapseSqlScript -OutputFolder "C:\sqlscript"
```

Exports a single sql script called ContosoSqlScript in the workspace ContosoWorkspace to the folder "C:\sqlscript" through pipeline.

## PARAMETERS

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

### -InputObject
The sql script object.

```yaml
Type: PSSqlScriptResource
Parameter Sets: ExportByInputObject
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Name
The sql script name.

```yaml
Type: String
Parameter Sets: ExportByName, ExportByObject
Aliases: SqlScriptName

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -OutputFolder
The folder where the sql scripts should be placed.

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

### -WorkspaceName
Name of Synapse workspace.

```yaml
Type: String
Parameter Sets: ExportByName
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -WorkspaceObject
workspace input object, usually passed through the pipeline.

```yaml
Type: PSSynapseWorkspace
Parameter Sets: ExportByObject
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### Microsoft.Azure.Commands.Synapse.Models.PSSynapseWorkspace
### Microsoft.Azure.Commands.Synapse.Models.PSSqlScriptResource
## OUTPUTS

### System.String
## NOTES

## RELATED LINKS

[Get-AzSynapseSqlScript]()

[Remove-AzSynapseSqlScript]()

[Set-AzSynapseSqlScript]()

