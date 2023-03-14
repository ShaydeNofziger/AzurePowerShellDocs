---
external help file: Az.StackHCI-help.xml
Module Name: Az.StackHCI
online version: https://learn.microsoft.com/powershell/module/az.stackhci/get-azstackhciremotesupportsessionhistory
schema: 2.0.0
---

# Get-AzStackHCIRemoteSupportSessionHistory

## SYNOPSIS
Gets Remote Support Session History Details.

## SYNTAX

```
Get-AzStackHCIRemoteSupportSessionHistory [[-SessionId] <String>] [-IncludeSessionTranscript]
 [[-FromDate] <DateTime>] [<CommonParameters>]
```

## DESCRIPTION
Session history represents all remote accesses made by Microsoft Support for either Diagnostics or DiagnosticsRepair based on the Access Level granted.

## EXAMPLES

### EXAMPLE 1
```
Get-AzStackHCIRemoteSupportSessionHistory
```

## PARAMETERS

### -SessionId
Optional.
Session Id to get details for a specific session.
If omitted then lists all sessions starting from date 'FromDate'.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -IncludeSessionTranscript
Optional.
Defaults to false.
Indicates whether to include complete session transcript.
Transcript provides details on all operations performed during the session.

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

### -FromDate
Optional.
Defaults to last 7 days.
Indicates date from where to start listing sessions from until now.

```yaml
Type: DateTime
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### System.Boolean
## NOTES

## RELATED LINKS

[https://learn.microsoft.com/powershell/module/az.stackhci/get-azstackhciremotesupportsessionhistory](https://learn.microsoft.com/powershell/module/az.stackhci/get-azstackhciremotesupportsessionhistory)

