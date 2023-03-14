---
external help file: Microsoft.Azure.PowerShell.Cmdlets.Monitor.dll-Help.xml
Module Name: Az.Monitor
online version: https://learn.microsoft.com/powershell/module/az.monitor/get-azdatacollectionruleassociation
schema: 2.0.0
---

# Get-AzDataCollectionRuleAssociation

## SYNOPSIS
Gets data collection rule association(s).

## SYNTAX

### ByAssociatedResource (Default)
```
Get-AzDataCollectionRuleAssociation -TargetResourceId <String> [-DefaultProfile <IAzureContextContainer>]
 [<CommonParameters>]
```

### ByName
```
Get-AzDataCollectionRuleAssociation -TargetResourceId <String> -AssociationName <String>
 [-DefaultProfile <IAzureContextContainer>] [<CommonParameters>]
```

### ByRule
```
Get-AzDataCollectionRuleAssociation -ResourceGroupName <String> -RuleName <String>
 [-DefaultProfile <IAzureContextContainer>] [<CommonParameters>]
```

### ByInputObject
```
Get-AzDataCollectionRuleAssociation -InputObject <PSDataCollectionRuleResource>
 [-DefaultProfile <IAzureContextContainer>] [<CommonParameters>]
```

## DESCRIPTION
The Get-AzDataCollectionRuleAssociation cmdlet gets one or more data collection rules associations (DCRA).

To apply a DCR to a virtual machine, you create an association for the virtual machine.
A virtual machine may have an association to multiple DCRs, and a DCR may have multiple virtual machines associated to it.
This allows you to define a set of DCRs, each matching a particular requirement, and apply them to only the virtual machines where they apply.
Here is the "Configure data collection for the Azure Monitor agent" (https://docs.microsoft.com/azure/azure-monitor/platform/data-collection-rule-azure-monitor-agent)using DCRA article.

## EXAMPLES

### Example 1: Get data collection rules associations by target resource ID (associated virtual machine)
```
$vm = Get-AzVM -ResourceGroupName $rg -Name $vmName
Get-AzDataCollectionRuleAssociation -TargetResourceId $vm.Id

Description          :
DataCollectionRuleId : /subscriptions/{subId}/resourceGroups/{rg}/providers/Microsoft.I
                       nsights/dataCollectionRules/{dcrName}
ProvisioningState    :
Etag                 : "{etag}"
Id                   : /subscriptions/{subId}/resourceGroups/{rg}/providers/Microsoft.C
                       ompute/virtualMachines/{vmName}/providers/Microsoft.Insights/dataCollectionRuleAssociations/{assocName}
Name                 : {assocName}
Type                 : Microsoft.Insights/dataCollectionRuleAssociations
```

This command lists all the data collection rules for the given target resource ID (virtual machine).

### Example 2: Get data collection rules associations by rule (DCR)
```
Get-AzDataCollectionRuleAssociation -ResourceGroupName $rg -RuleName $dcrName

Description          :
DataCollectionRuleId : /subscriptions/{subId}/resourceGroups/{rg}/providers/Microsoft.I
                       nsights/dataCollectionRules/{dcrName}
ProvisioningState    :
Etag                 : "{etag}"
Id                   : /subscriptions/{subId}/resourceGroups/{rg}/providers/Microsoft.C
                       ompute/virtualMachines/{vmName}/providers/Microsoft.Insights/dataCollectionRuleAssociations/{assocName}
Name                 : {assocName}
Type                 : Microsoft.Insights/dataCollectionRuleAssociations
```

This command lists data collection rules associations for the given resource group and rule (DCR).

### Example 3: Get data collection rule associations by input object (PSDataCollectionRuleResource)
```
$dcr = Get-AzDataCollectionRule -ResourceGroupName $rg -RuleName $dcrName
$dcr | Get-AzDataCollectionRuleAssociation

Description          :
DataCollectionRuleId : /subscriptions/{subId}/resourceGroups/{rg}/providers/Microsoft.I
                       nsights/dataCollectionRules/{dcrName}
ProvisioningState    :
Etag                 : "{etag}"
Id                   : /subscriptions/{subId}/resourceGroups/{rg}/providers/Microsoft.C
                       ompute/virtualMachines/{vmName}/providers/Microsoft.Insights/dataCollectionRuleAssociations/{assocName}
Name                 : {assocName}
Type                 : Microsoft.Insights/dataCollectionRuleAssociations
```

This command lists data collection rules associations for the given input object.

### Example 4: Get a data collection rule association by target resource ID (associated virtual machine) and association name
```
Get-AzDataCollectionRuleAssociation -TargetResourceId $vm.Id -AssociationName $assocName

Description          :
DataCollectionRuleId : /subscriptions/{subId}/resourceGroups/{rg}/providers/Microsoft.I
                       nsights/dataCollectionRules/{dcrName}
ProvisioningState    :
Etag                 : "{etag}"
Id                   : /subscriptions/{subId}/resourceGroups/{rg}/providers/Microsoft.C
                       ompute/virtualMachines/{vmName}/providers/Microsoft.Insights/dataCollectionRuleAssociations/{assocName}
Name                 : {assocName}
Type                 : Microsoft.Insights/dataCollectionRuleAssociations
```

This command lists one (a list with a single element) data collection rule association.

## PARAMETERS

### -AssociationName
The name of the association.

```yaml
Type: String
Parameter Sets: ByName
Aliases: Name

Required: True
Position: Named
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

### -InputObject
PSDataCollectionRuleResource Object

```yaml
Type: PSDataCollectionRuleResource
Parameter Sets: ByInputObject
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -ResourceGroupName
The resource group name

```yaml
Type: String
Parameter Sets: ByRule
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -RuleName
The data collection rule name

```yaml
Type: String
Parameter Sets: ByRule
Aliases: DataCollectionRuleName

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TargetResourceId
The associated resource ID

```yaml
Type: String
Parameter Sets: ByAssociatedResource, ByName
Aliases: ResourceUri

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
### Microsoft.Azure.Commands.Insights.OutputClasses.PSDataCollectionRuleResource
## OUTPUTS

### Microsoft.Azure.Commands.Insights.OutputClasses.PSDataCollectionRuleAssociationProxyOnlyResource
## NOTES

## RELATED LINKS

[Remove-AzDataCollectionRuleAssociation]()

[New-AzDataCollectionRuleAssociation]()

