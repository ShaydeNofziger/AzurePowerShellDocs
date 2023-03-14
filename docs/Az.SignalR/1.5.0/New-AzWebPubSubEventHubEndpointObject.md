---
external help file: Az.SignalR-help.xml
Module Name: Az.SignalR
online version: https://learn.microsoft.com/powershell/module/az./new-AzWebPubSubEventHubEndpointObject
schema: 2.0.0
---

# New-AzWebPubSubEventHubEndpointObject

## SYNOPSIS
Create an in-memory object for EventHubEndpoint.

## SYNTAX

```
New-AzWebPubSubEventHubEndpointObject -EventHubName <String> -FullyQualifiedNamespace <String>
 [<CommonParameters>]
```

## DESCRIPTION
Create an in-memory object for EventHubEndpoint.

## EXAMPLES

### EXAMPLE 1
```
$eventHub = New-AzWebPubSubEventHubEndpointObject -EventHubName hub1 -FullyQualifiedNamespace example.servicebus.windows.net
$eventHub
```

## PARAMETERS

### -EventHubName
The name of the Event Hub.

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

### -FullyQualifiedNamespace
The fully qualified namespace name of the Event Hub resource.
For example, "example.servicebus.windows.net".

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Microsoft.Azure.PowerShell.Cmdlets.WebPubSub.Models.Api20220801Preview.EventHubEndpoint
## NOTES

## RELATED LINKS

[https://learn.microsoft.com/powershell/module/az./new-AzWebPubSubEventHubEndpointObject](https://learn.microsoft.com/powershell/module/az./new-AzWebPubSubEventHubEndpointObject)

