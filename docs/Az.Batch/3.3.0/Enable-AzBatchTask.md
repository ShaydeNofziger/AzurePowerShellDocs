---
external help file: Microsoft.Azure.PowerShell.Cmdlets.Batch.dll-Help.xml
Module Name: Az.Batch
online version: https://docs.microsoft.com/powershell/module/az.batch/enable-azbatchtask
schema: 2.0.0
---

# Enable-AzBatchTask

## SYNOPSIS
Reactivates a task.

## SYNTAX

### Id
```
Enable-AzBatchTask [-JobId] <String> [-Id] <String> -BatchContext <BatchAccountContext>
 [-DefaultProfile <IAzureContextContainer>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### InputObject
```
Enable-AzBatchTask [-Task] <PSCloudTask> -BatchContext <BatchAccountContext>
 [-DefaultProfile <IAzureContextContainer>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
The Enable-AzBatchTask cmdlet reactivates a task.
If a task has exhausted its retry count, this cmdlet nevertheless enables it to run.

## EXAMPLES

### Example 1: Reactivate a task
```
Enable-AzBatchTask -JobId "Job7" -Id "Task2" -BatchContext $Context
```

This command reactivates the task Task2 in job Job7.

### Example 2: Reactivate a task by using the pipeline
```
Get-AzBatchTask -JobId "Job8" -Id "Task3" -BatchContext $Context | Enable-AzBatchTask -BatchContext $Context
```

This command gets the Batch task that has the ID Task3 in the job that has the ID Job8 by using the Get-AzBatchTask cmdlet.
The command passes that task to the current cmdlet by using the pipeline operator.
The command reactivates that task.

## PARAMETERS

### -BatchContext
Specifies the BatchAccountContext instance that this cmdlet uses to interact with the Batch service.
If you use the Get-AzBatchAccount cmdlet to get your BatchAccountContext, then Azure Active Directory authentication will be used when interacting with the Batch service.
To use shared key authentication instead, use the Get-AzBatchAccountKey cmdlet to get a BatchAccountContext object with its access keys populated.
When using shared key authentication, the primary access key is used by default.
To change the key to use, set the BatchAccountContext.KeyInUse property.

```yaml
Type: BatchAccountContext
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -DefaultProfile
The credentials, account, tenant, and subscription used for communication with azure.

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

### -Id
Specifies the ID of the task to reactivate.

```yaml
Type: String
Parameter Sets: Id
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -JobId
Specifies the ID of the job that contains the task.

```yaml
Type: String
Parameter Sets: Id
Aliases:

Required: True
Position: 0
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Task
Specifies the task that this cmdlet reactivates.
To obtain a PSCloudTask object, use the Get-AzBatchTask cmdlet.

```yaml
Type: PSCloudTask
Parameter Sets: InputObject
Aliases:

Required: True
Position: 0
Default value: None
Accept pipeline input: True (ByValue)
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
### Microsoft.Azure.Commands.Batch.Models.PSCloudTask
### Microsoft.Azure.Commands.Batch.BatchAccountContext
## OUTPUTS

### System.Void
## NOTES

## RELATED LINKS

[Get-AzBatchAccountKey]()

[Get-AzBatchTask]()

[New-AzBatchTask]()

[Remove-AzBatchTask]()

[Set-AzBatchTask]()

[Stop-AzBatchTask]()

