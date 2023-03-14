---
external help file: Microsoft.Azure.PowerShell.Cmdlets.Automation.dll-Help.xml
Module Name: Az.Automation
online version: https://learn.microsoft.com/powershell/module/az.automation/get-azautomationrunbook
schema: 2.0.0
---

# Get-AzAutomationRunbook

## SYNOPSIS
Gets a runbook.

## SYNTAX

### ByAll (Default)
```
Get-AzAutomationRunbook [-ResourceGroupName] <String> [-AutomationAccountName] <String>
 [-DefaultProfile <IAzureContextContainer>] [<CommonParameters>]
```

### ByRunbookName
```
Get-AzAutomationRunbook [-Name] <String> [-ResourceGroupName] <String> [-AutomationAccountName] <String>
 [-DefaultProfile <IAzureContextContainer>] [<CommonParameters>]
```

## DESCRIPTION
The Get-AzAutomationRunbook cmdlet gets Azure Automation runbooks.
To get a specific runbook, specify its name.

## EXAMPLES

### Example 1: Get all runbooks
```
Get-AzAutomationRunbook -AutomationAccountName "Contoso17" -ResourceGroupName "ResourceGroup01"
```

This command gets all runbooks in the Azure Automation account named Contoso17.

## PARAMETERS

### -AutomationAccountName
Specifies the name of an Automation account in which this cmdlet gets runbooks.

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

### -Name
Specifies the name of a runbook that this cmdlet gets.

```yaml
Type: String
Parameter Sets: ByRunbookName
Aliases: RunbookName

Required: True
Position: 2
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ResourceGroupName
Specifies the name of the resource group for which this cmdlet gets runbooks.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### System.String
## OUTPUTS

### Microsoft.Azure.Commands.Automation.Model.Runbook
## NOTES

## RELATED LINKS

[Export-AzAutomationRunbook]()

[Import-AzAutomationRunbook]()

[New-AzAutomationRunbook]()

[New-AzAutomationRunbook]()

[Publish-AzAutomationRunbook]()

[Remove-AzAutomationRunbook]()

[Set-AzAutomationRunbook]()

[Start-AzAutomationRunbook]()

