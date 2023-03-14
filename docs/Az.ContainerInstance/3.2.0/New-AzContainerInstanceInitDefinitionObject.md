---
external help file: Az.ContainerInstance-help.xml
Module Name: Az.ContainerInstance
online version: https://learn.microsoft.com/powershell/module/az.ContainerInstance/new-AzContainerInstanceInitDefinitionObject
schema: 2.0.0
---

# New-AzContainerInstanceInitDefinitionObject

## SYNOPSIS
Create a in-memory object for InitContainerDefinition

## SYNTAX

```
New-AzContainerInstanceInitDefinitionObject -Name <String> [-Command <String[]>]
 [-EnvironmentVariable <IEnvironmentVariable[]>] [-Image <String>] [-VolumeMount <IVolumeMount[]>]
 [<CommonParameters>]
```

## DESCRIPTION
Create a in-memory object for InitContainerDefinition

## EXAMPLES

### EXAMPLE 1
```
New-AzContainerInstanceInitDefinitionObject -Name "initDefinition" -Command "/bin/sh -c myscript.sh"
```

## PARAMETERS

### -Name
The name for the init container.

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

### -Command
The command to execute within the init container in exec form.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -EnvironmentVariable
The environment variables to set in the init container.
To construct, see NOTES section for ENVIRONMENTVARIABLE properties and create a hash table.

```yaml
Type: IEnvironmentVariable[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Image
The image of the init container.

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

### -VolumeMount
The volume mounts available to the init container.
To construct, see NOTES section for VOLUMEMOUNT properties and create a hash table.

```yaml
Type: IVolumeMount[]
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

### Microsoft.Azure.PowerShell.Cmdlets.ContainerInstance.Models.Api20221001Preview.InitContainerDefinition
## NOTES
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties.
For information on hash tables, run Get-Help about_Hash_Tables.

ENVIRONMENTVARIABLE \<IEnvironmentVariable\[\]\>: The environment variables to set in the init container.
  Name \<String\>: The name of the environment variable.
  \[SecureValue \<String\>\]: The value of the secure environment variable.
  \[Value \<String\>\]: The value of the environment variable.

VOLUMEMOUNT \<IVolumeMount\[\]\>: The volume mounts available to the init container.
  MountPath \<String\>: The path within the container where the volume should be mounted.
Must not contain colon (:).
  Name \<String\>: The name of the volume mount.
  \[ReadOnly \<Boolean?\>\]: The flag indicating whether the volume mount is read-only.

## RELATED LINKS

[https://learn.microsoft.com/powershell/module/az.ContainerInstance/new-AzContainerInstanceInitDefinitionObject](https://learn.microsoft.com/powershell/module/az.ContainerInstance/new-AzContainerInstanceInitDefinitionObject)

