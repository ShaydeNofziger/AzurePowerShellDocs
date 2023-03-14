---
external help file: Microsoft.Azure.PowerShell.Cmdlets.Network.dll-Help.xml
Module Name: Az.Network
online version: https://learn.microsoft.com/powershell/module/az.network/remove-aznetworkwatcher
schema: 2.0.0
---

# Remove-AzNetworkWatcher

## SYNOPSIS
Removes a Network Watcher.

## SYNTAX

### SetByResource
```
Remove-AzNetworkWatcher -NetworkWatcher <PSNetworkWatcher> [-PassThru] [-AsJob]
 [-DefaultProfile <IAzureContextContainer>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### SetByName
```
Remove-AzNetworkWatcher -Name <String> -ResourceGroupName <String> [-PassThru] [-AsJob]
 [-DefaultProfile <IAzureContextContainer>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### SetByLocation
```
Remove-AzNetworkWatcher -Location <String> [-PassThru] [-AsJob] [-DefaultProfile <IAzureContextContainer>]
 [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
The Remove-AzNetworkWatcher cmdlet removes a Network Watcher resource.

## EXAMPLES

### Example 1: Create and delete a Network Watcher
```
New-AzResourceGroup -Name NetworkWatcherRG -Location westcentralus
New-AzNetworkWatcher -Name NetworkWatcher_westcentralus -ResourceGroupName NetworkWatcherRG -Location westcentralus
Remove-AzNetworkWatcher -Name NetworkWatcher_westcentralus -ResourceGroupName NetworkWatcherRG
```

This example creates a Network Watcher in a resource group and then immediately deletes it.
Note that only one Network Watcher can be created per region per subscription.
To suppress the prompt when deleting the virtual network, use the -Force flag.

## PARAMETERS

### -AsJob
Run cmdlet in the background

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
Location of the network watcher.

```yaml
Type: String
Parameter Sets: SetByLocation
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Name
The resource name.

```yaml
Type: String
Parameter Sets: SetByName
Aliases: ResourceName

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -NetworkWatcher
The network watcher resource.

```yaml
Type: PSNetworkWatcher
Parameter Sets: SetByResource
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -PassThru
Returns an object representing the item with which you are working.

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

### -ResourceGroupName
The resource group name.

```yaml
Type: String
Parameter Sets: SetByName
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
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

### Microsoft.Azure.Commands.Network.Models.PSNetworkWatcher
### System.String
## OUTPUTS

### System.Boolean
## NOTES
Keywords: azure, azurerm, arm, resource, management, manager, network, networking, network watcher

## RELATED LINKS

[New-AzNetworkWatcher]()

[Get-AzNetworkWatcher]()

[Remove-AzNetworkWatcher]()

[Get-AzNetworkWatcherNextHop]()

[Get-AzNetworkWatcherSecurityGroupView]()

[Get-AzNetworkWatcherTopology]()

[Start-AzNetworkWatcherResourceTroubleshooting]()

[New-AzNetworkWatcherPacketCapture]()

[New-AzPacketCaptureFilterConfig]()

[Get-AzNetworkWatcherPacketCapture]()

[Remove-AzNetworkWatcherPacketCapture]()

[Stop-AzNetworkWatcherPacketCapture]()

[New-AzNetworkWatcherProtocolConfiguration]()

[Test-AzNetworkWatcherIPFlow]()

[Test-AzNetworkWatcherConnectivity]()

[Stop-AzNetworkWatcherConnectionMonitor]()

[Start-AzNetworkWatcherConnectionMonitor]()

[Set-AzNetworkWatcherConnectionMonitor]()

[Set-AzNetworkWatcherConfigFlowLog]()

[Remove-AzNetworkWatcherConnectionMonitor]()

[New-AzNetworkWatcherConnectionMonitor]()

[Get-AzNetworkWatcherTroubleshootingResult]()

[Get-AzNetworkWatcherReachabilityReport]()

[Get-AzNetworkWatcherReachabilityProvidersList]()

[Get-AzNetworkWatcherFlowLogStatus]()

[Get-AzNetworkWatcherConnectionMonitorReport]()

[Get-AzNetworkWatcherConnectionMonitor]()

