﻿---
external help file: Microsoft.Azure.PowerShell.Cmdlets.Automation.dll-Help.xml
Module Name: Az.Automation
online version: https://learn.microsoft.com/powershell/module/az.automation/import-azautomationrunbook
schema: 2.0.0
---

# Import-AzAutomationRunbook

## SYNOPSIS
Imports an Automation runbook.

## SYNTAX

```
Import-AzAutomationRunbook [-Path] <String> [-Description <String>] [-Name <String>] [-Tags <IDictionary>]
 -Type <String> [-LogProgress <Boolean>] [-LogVerbose <Boolean>] [-Published] [-Force]
 [-ResourceGroupName] <String> [-AutomationAccountName] <String> [-DefaultProfile <IAzureContextContainer>]
 [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
The Import-AzAutomationRunbook cmdlet imports an Azure Automation runbook.
Specify the  path to a wps_2 script (.ps1) file to import for wps_2 and wps_2 Workflow runbooks, (.graphrunbook) file for graphical runbooks, or (.py) file for python 2 runbooks. 
For wps_2 Workflow runbooks, the script must contain a single wps_2 Workflow definition that matches the name of the file.

## EXAMPLES

### Example 1: Import a runbook from a file
```
$Tags = @{"tag01"="value01"; "tag02"="value02"}
Import-AzAutomationRunbook -Path .\GraphicalRunbook06.graphrunbook -Tags $Tags -ResourceGroupName "ResourceGroup01" -AutomationAccountName "AutomationAccount01" -Type GraphicalPowershell
```

The first command assigns two key/value pairs to the $Tags variable.
The second command imports a graphical runbook called GraphicalRunbook06 into the Automation account named AutomationAccount01.
The command also assigns the tags stored in $Tags.

### Example 2
```
Import-AzAutomationRunbook -AutomationAccountName 'AutomationAccount01' -Name 'Configuration01' -Path .\GraphicalRunbook06.graphrunbook -Published -ResourceGroupName 'ResourceGroup01' -Type PowerShell
```

## PARAMETERS

### -AutomationAccountName
Specifies the name of the Automation account into which this cmdlet imports a runbook.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

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

### -Description
Specifies a description for the imported runbook.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Force
ps_force

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

### -LogProgress
Specifies whether the runbook logs progress information.

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -LogVerbose
Specifies whether the runbook logs detailed information.

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Name
Specifies the name of the runbook that this cmdlet imports.

```yaml
Type: String
Parameter Sets: (All)
Aliases: RunbookName

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Path
Specifies the path of a .ps1 or .graphrunbook file that this cmdlet imports.

```yaml
Type: String
Parameter Sets: (All)
Aliases: SourcePath

Required: True
Position: 2
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Published
Indicates that this cmdlet publishes the runbook that it imports.

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
Specifies the name of the resource group for which this cmdlet imports a runbook.

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

### -Tags
Key-value pairs in the form of a hash table.
For example: @{key0="value0";key1=$null;key2="value2"}

```yaml
Type: IDictionary
Parameter Sets: (All)
Aliases: Tag

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Type
Specifies the type of runbook that this cmdlet creates.
Valid values are: - PowerShell

- GraphicalPowerShell
- PowerShellWorkflow
- GraphicalPowerShellWorkflow
- Graph
- Python2

The value Graph is obsolete.
It is equivalent to GraphicalPowerShellWorkflow.

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: PowerShell, GraphicalPowerShell, PowerShellWorkflow, GraphicalPowerShellWorkflow, Graph, Python2

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

### System.String
### System.Collections.IDictionary
### System.Nullable`1[[System.Boolean, System.Private.CoreLib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]
## OUTPUTS

### Microsoft.Azure.Commands.Automation.Model.Runbook
## NOTES

## RELATED LINKS

[Export-AzAutomationRunbook]()

[Get-AzAutomationRunbook]()

[New-AzAutomationRunbook]()

[Publish-AzAutomationRunbook]()

[Remove-AzAutomationRunbook]()

[Set-AzAutomationRunbook]()

[Start-AzAutomationRunbook]()
