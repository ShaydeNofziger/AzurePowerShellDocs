---
external help file: Microsoft.Azure.PowerShell.Cmdlets.PowerBI.dll-Help.xml
Module Name: Az.PowerBIEmbedded
online version: https://docs.microsoft.com/powershell/module/az.powerbiembedded/test-azpowerbiembeddedcapacity
schema: 2.0.0
---

# Test-AzPowerBIEmbeddedCapacity

## SYNOPSIS
Tests the existence of an instance of PowerBI Embedded Capacity.

## SYNTAX

```
Test-AzPowerBIEmbeddedCapacity [-Name] <String> [-DefaultProfile <IAzureContextContainer>] [<CommonParameters>]
```

## DESCRIPTION
The Test-AzPowerBIEmbeddedCapacity cmdlet tests the existence of an instance of PowerBI Embedded Capacity

## EXAMPLES

### Example 1
```
Test-AzPowerBIEmbeddedCapacity -Name "testcapacity"

True
```

This command will test if there is a capacity named testcapacity

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

### -Name
Name of the PowerBI Embedded Capacity

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None
## OUTPUTS

### System.Boolean
## NOTES

## RELATED LINKS

[Get-AzPowerBIEmbeddedCapacity]()

[Remove-AzPowerBIEmbeddedCapacity]()

