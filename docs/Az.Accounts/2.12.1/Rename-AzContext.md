---
external help file: Microsoft.Azure.PowerShell.Cmdlets.Accounts.dll-Help.xml
Module Name: Az.Accounts
online version: https://learn.microsoft.com/powershell/module/az.accounts/rename-azcontext
schema: 2.0.0
---

# Rename-AzContext

## SYNOPSIS
Rename an Azure context. 
By default contexts are named by user account and subscription.

## SYNTAX

```
Rename-AzContext -InputObject <PSAzureContext> [-Force] [-PassThru] [-Scope <ContextModificationScope>]
 [-DefaultProfile <IAzureContextContainer>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
Rename an Azure context. 
By default contexts are named by user account and subscription.

## EXAMPLES

### Example 1: Rename a context using named parameters
```
Rename-AzContext -SourceName "[user1@contoso.org; 12345-6789-2345-3567890]" -TargetName "Work"
```

Rename the context for 'user1@contoso.org' with subscription '12345-6789-2345-3567890' to 'Work'. 
After this command, you will be able to target the context using  'Select-AzContext Work'. 
Note that you can tab through the values for 'SourceName' using tab completion.

### Example 2: Rename a context using positional parameters
```
Rename-AzContext "My context" "Work"
```

Rename the context named "My context" to "Work". 
After this command, you will be able to target the context using  Select-AzContext Work

## PARAMETERS

### -DefaultProfile
The credentials, tenant and subscription used for communication with azure

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

### -Force
Rename the context even if the target context already exists

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

### -InputObject
A context object, normally passed through the pipeline.

```yaml
Type: PSAzureContext
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -PassThru
Return the renamed context.

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

### -Scope
Determines the scope of context changes, for example, whether changes apply only to the current process, or to all sessions started by this user

```yaml
Type: ContextModificationScope
Parameter Sets: (All)
Aliases:
Accepted values: Process, CurrentUser

Required: False
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

### Microsoft.Azure.Commands.Profile.Models.Core.PSAzureContext
## OUTPUTS

### Microsoft.Azure.Commands.Profile.Models.Core.PSAzureContext
## NOTES

## RELATED LINKS
