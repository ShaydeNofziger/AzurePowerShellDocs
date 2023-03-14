﻿---
external help file: Microsoft.Azure.PowerShell.Cmdlets.Batch.dll-Help.xml
Module Name: Az.Batch
online version: https://docs.microsoft.com/powershell/module/az.batch/enable-azbatchjobschedule
schema: 2.0.0
---

# Enable-AzBatchJobSchedule

## SYNOPSIS
Enables a Batch job schedule.

## SYNTAX

```
Enable-AzBatchJobSchedule [-Id] <String> -BatchContext <BatchAccountContext>
 [-DefaultProfile <IAzureContextContainer>] [<CommonParameters>]
```

## DESCRIPTION
The Enable-AzBatchJobSchedule cmdlet enables an Azure Batch job schedule.
After you enable a job schedule, jobs can be created according to that schedule.

## EXAMPLES

### Example 1: Enable a job schedule
```
Enable-AzBatchJobSchedule -Id "JobSchedule17" -BatchContext $Context
```

This command enables the job schedule that has the ID JobSchedule17.
Use the Get-AzBatchAccountKey cmdlet to assign a context to the $Context variable.

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
Specifies the ID of the job schedule that this cmdlet enables.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 0
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### System.String
### Microsoft.Azure.Commands.Batch.BatchAccountContext
## OUTPUTS

### System.Void
## NOTES

## RELATED LINKS

[Disable-AzBatchJobSchedule]()

[Get-AzBatchAccountKey]()

[Get-AzBatchJobSchedule]()

[New-AzBatchJobSchedule]()

[Remove-AzBatchJobSchedule]()

[Stop-AzBatchJobSchedule]()

[Azure Batch Cmdlets]()
