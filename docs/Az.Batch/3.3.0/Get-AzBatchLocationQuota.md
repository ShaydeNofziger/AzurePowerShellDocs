---
external help file: Microsoft.Azure.PowerShell.Cmdlets.Batch.dll-Help.xml
Module Name: Az.Batch
online version: https://docs.microsoft.com/powershell/module/az.batch/get-azbatchlocationquota
schema: 2.0.0
---

# Get-AzBatchLocationQuota

## SYNOPSIS
Gets the Batch service quotas for your subscription at the given location.

## SYNTAX

```
Get-AzBatchLocationQuota [-Location] <String> [-DefaultProfile <IAzureContextContainer>] [<CommonParameters>]
```

## DESCRIPTION
Gets the Batch service quotas for the specified subscription at the given location.

## EXAMPLES

### Example 1: Get the Batch service quotas for the subscription in the West US region
```
Get-AzBatchLocationQuota -Location "westus"

AccountQuota Location
          ------------ --------
          1            westus
```

This command gets the quotas for the current subscription in the West US region.
The return value indicates that this subscription can create only one Batch account in that region.

## PARAMETERS

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

### -Location
Specifies the region for which this cmdlet checks the quotas.
For more information, see Azure Regions (https://azure.microsoft.com/regions).

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### System.String
## OUTPUTS

### Microsoft.Azure.Commands.Batch.Models.PSBatchLocationQuotas
## NOTES

## RELATED LINKS
