---
external help file: Microsoft.Azure.PowerShell.Cmdlets.Automation.dll-Help.xml
Module Name: Az.Automation
online version: https://learn.microsoft.com/powershell/module/az.automation/get-azautomationjoboutput
schema: 2.0.0
---

# Get-AzAutomationJobOutput

## SYNOPSIS
Gets the output of an Automation job.

## SYNTAX

```
Get-AzAutomationJobOutput [-Id] <Guid> [-Stream <StreamType>] [-StartTime <DateTimeOffset>]
 [-ResourceGroupName] <String> [-AutomationAccountName] <String> [-DefaultProfile <IAzureContextContainer>]
 [<CommonParameters>]
```

## DESCRIPTION
The Get-AzAutomationJobOutput cmdlet gets the output of an Azure Automation job.

## EXAMPLES

### Example 1: Get the output of an Automation job
```
Get-AzAutomationJobOutput -AutomationAccountName "Contoso17" -Id 2989b069-24fe-40b9-b3bd-cb7e5eac4b64 -ResourceGroupName "ResourceGroup01" -Stream "Any"
```

This command gets all of the output of the job that has the specified ID.

## PARAMETERS

### -AutomationAccountName
Specifies the name of an Automation account for which this cmdlet gets job output.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -DefaultProfile
The credentials, account, tenant, and subscription used for communication with azure

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
Specifies the ID of a job for which this cmdlet gets output.

```yaml
Type: Guid
Parameter Sets: (All)
Aliases: JobId

Required: True
Position: 2
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ResourceGroupName
Specifies the name of a resource group for which this cmdlet gets job output.

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

### -StartTime
Specifies a start time as a DateTimeOffset object.
You can specify a string that can be converted to a valid DateTimeOffset .
The cmdlet retrieves output created after this time.

```yaml
Type: DateTimeOffset
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Stream
Specifies the type of output.
Valid values are:  - Any

- Debug
- Error
- Output
- Progress
- Verbose
- Warning

```yaml
Type: StreamType
Parameter Sets: (All)
Aliases:
Accepted values: Any, Progress, Output, Warning, Error, Verbose

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### System.Guid
### Microsoft.Azure.Commands.Automation.Common.StreamType
### System.Nullable`1[[System.DateTimeOffset, System.Private.CoreLib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]
### System.String
## OUTPUTS

### Microsoft.Azure.Commands.Automation.Model.JobStream
## NOTES

## RELATED LINKS

[Get-AzAutomationJob]()

[Resume-AzAutomationJob]()

[Stop-AzAutomationJob]()

[Suspend-AzAutomationJob]()

