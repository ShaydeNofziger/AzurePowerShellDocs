---
external help file: Az.ContainerInstance-help.xml
Module Name: Az.ContainerInstance
online version: https://learn.microsoft.com/powershell/module/az.ContainerInstance/new-AzContainerInstanceEnvironmentVariableObject
schema: 2.0.0
---

# New-AzContainerInstanceEnvironmentVariableObject

## SYNOPSIS
Create a in-memory object for EnvironmentVariable

## SYNTAX

```
New-AzContainerInstanceEnvironmentVariableObject -Name <String> [-SecureValue <SecureString>] [-Value <String>]
 [<CommonParameters>]
```

## DESCRIPTION
Create a in-memory object for EnvironmentVariable

## EXAMPLES

### EXAMPLE 1
```
New-AzContainerInstanceEnvironmentVariableObject -Name "env1" -Value "value1"
```

### EXAMPLE 2
```
New-AzContainerInstanceEnvironmentVariableObject -Name "env2" -SecureValue (ConvertTo-SecureString -String "******" -AsPlainText -Force)
```

## PARAMETERS

### -Name
The name of the environment variable.

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

### -SecureValue
The value of the secure environment variable.

```yaml
Type: SecureString
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Value
The value of the environment variable.

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

### Microsoft.Azure.PowerShell.Cmdlets.ContainerInstance.Models.Api20221001Preview.EnvironmentVariable
## NOTES

## RELATED LINKS

[https://learn.microsoft.com/powershell/module/az.ContainerInstance/new-AzContainerInstanceEnvironmentVariableObject](https://learn.microsoft.com/powershell/module/az.ContainerInstance/new-AzContainerInstanceEnvironmentVariableObject)

