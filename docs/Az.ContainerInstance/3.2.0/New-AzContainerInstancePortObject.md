---
external help file: Az.ContainerInstance-help.xml
Module Name: Az.ContainerInstance
online version: https://learn.microsoft.com/powershell/module/az.ContainerInstance/new-AzContainerInstancePortObject
schema: 2.0.0
---

# New-AzContainerInstancePortObject

## SYNOPSIS
Create a in-memory object for ContainerPort

## SYNTAX

```
New-AzContainerInstancePortObject -Port <Int32> [-Protocol <String>] [<CommonParameters>]
```

## DESCRIPTION
Create a in-memory object for ContainerPort

## EXAMPLES

### EXAMPLE 1
```
New-AzContainerInstancePortObject -Port 8000 -Protocol TCP
```

## PARAMETERS

### -Port
The port number exposed within the container group.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -Protocol
The protocol associated with the port.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Microsoft.Azure.PowerShell.Cmdlets.ContainerInstance.Models.Api20221001Preview.ContainerPort
## NOTES

## RELATED LINKS

[https://learn.microsoft.com/powershell/module/az.ContainerInstance/new-AzContainerInstancePortObject](https://learn.microsoft.com/powershell/module/az.ContainerInstance/new-AzContainerInstancePortObject)

