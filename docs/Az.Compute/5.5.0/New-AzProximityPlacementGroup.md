﻿---
external help file: Microsoft.Azure.PowerShell.Cmdlets.Compute.dll-Help.xml
Module Name: Az.Compute
online version: https://learn.microsoft.com/powershell/module/az.compute/new-azproximityplacementgroup
schema: 2.0.0
---

# New-AzProximityPlacementGroup

## SYNOPSIS
Create Proximity Placement Group resource.

## SYNTAX

```
New-AzProximityPlacementGroup [-ResourceGroupName] <String> [-Name] <String> [-Location] <String>
 [-ProximityPlacementGroupType <String>] [-Tag <Hashtable>] [-AsJob] [-Zone <String[]>]
 [-IntentVMSizeList <String[]>] [-DefaultProfile <IAzureContextContainer>] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

## DESCRIPTION
This cmdlet will create Proximity Placement Group resource.

## EXAMPLES

### Example 1
```
New-AzProximityPlacementGroup -ResourceGroupName $resourceGroupName -Name $proximityPlacementGroupName -Location $location -Tag @{key1 = "val1"}

ResourceGroupName           : rg0
ProximityPlacementGroupType : Standard
Id                          : /subscriptions/5393f919-a68a-43d0-9063-4b2bda6bffdf/resourceGroups/rg0/providers/Microsoft.Compute/proximityPlacementGroups/ppg0
Name                        : ppg0
Type                        : Microsoft.Compute/proximityPlacementGroups
Location                    : westcentralus
Tags                        : {"key1":"val1"}
```

This command creates a proximity place group in the given location.

### Example 2
```
New-AzProximityPlacementGroup -Location westus -Name 'AgentPool01' -ProximityPlacementGroupType <String> -ResourceGroupName myresourcegroup
```

### Example 3
```
$ResourceGroupName = <Resource Group Name>
$PPGName = <PPG Name>
$Location = <Azure Region>
# Use the VM Sizes and Zone that you want to use for the Zone and IntentVMSizeList parameters. 
New-AzProximityPlacementGroup -ResourceGroupName $ResourceGroupName -Name $PPGName -Location $Location -Zone '1' -IntentVMSizeList 'Standard_D4d_v4', 'Standard_D4d_v5';
$ppg = Get-AzProximityPlacementGroup -ResourceGroupName $ResourceGroupName -Name $PPGName;

# View the new values at $ppg.Intent.VmSizes[0], $ppg.Intent.VmSizes[1], and $ppg.Zones[0].
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

### -IntentVMSizeList
Specifies possible sizes of virtual machines that can be created in the proximity placement group.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Location
Resource location

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Name
The name of the proximity placement group.

```yaml
Type: String
Parameter Sets: (All)
Aliases: ProximityPlacementGroupName

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ProximityPlacementGroupType
Specifies the type of the proximity placement group. 
Possible values are: Standard or Ultra

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
The name of the resource group.

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

### -Tag
Resource tags

```yaml
Type: Hashtable
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Zone
Specifies the Availability Zone where virtual machine, virtual machine scale set or availability set associated with the  proximity placement group can be created.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
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

### Microsoft.Azure.Commands.Compute.Automation.Models.PSProximityPlacementGroup
## NOTES

## RELATED LINKS