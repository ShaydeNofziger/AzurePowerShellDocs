---
external help file: Az.ContainerInstance-help.xml
Module Name: Az.ContainerInstance
online version: https://learn.microsoft.com/powershell/module/az.ContainerInstance/new-AzContainerInstanceVolumeMountObject
schema: 2.0.0
---

# New-AzContainerInstanceVolumeMountObject

## SYNOPSIS
Create a in-memory object for VolumeMount

## SYNTAX

```
New-AzContainerInstanceVolumeMountObject -MountPath <String> -Name <String> [-ReadOnly <Boolean>]
 [<CommonParameters>]
```

## DESCRIPTION
Create a in-memory object for VolumeMount

## EXAMPLES

### EXAMPLE 1
```
New-AzContainerInstanceVolumeMountObject -Name "mnt" -MountPath "/mnt/azfile" -ReadOnly $true
```

## PARAMETERS

### -MountPath
The path within the container where the volume should be mounted.
Must not contain colon (:).

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

### -Name
The name of the volume mount.

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

### -ReadOnly
The flag indicating whether the volume mount is read-only.

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

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

### Microsoft.Azure.PowerShell.Cmdlets.ContainerInstance.Models.Api20221001Preview.VolumeMount
## NOTES

## RELATED LINKS

[https://learn.microsoft.com/powershell/module/az.ContainerInstance/new-AzContainerInstanceVolumeMountObject](https://learn.microsoft.com/powershell/module/az.ContainerInstance/new-AzContainerInstanceVolumeMountObject)

