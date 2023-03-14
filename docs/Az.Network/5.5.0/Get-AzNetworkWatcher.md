---
external help file: Microsoft.Azure.PowerShell.Cmdlets.Network.dll-Help.xml
Module Name: Az.Network
online version: https://learn.microsoft.com/powershell/module/az.network/get-aznetworkwatcher
schema: 2.0.0
---

# Get-AzNetworkWatcher

## SYNOPSIS
Gets the properties of a Network Watcher

## SYNTAX

### List
```
Get-AzNetworkWatcher [-Name <String>] [-ResourceGroupName <String>] [-DefaultProfile <IAzureContextContainer>]
 [<CommonParameters>]
```

### SetByLocation
```
Get-AzNetworkWatcher -Location <String> [-DefaultProfile <IAzureContextContainer>] [<CommonParameters>]
```

## DESCRIPTION
The Get-AzNetworkWatcher cmdlet gets one or more Azure Network Watcher resources.

## EXAMPLES

### Example 1: Get a Network Watcher
```
Get-AzNetworkWatcher -Name NetworkWatcher_westcentralus -ResourceGroupName NetworkWatcherRG

Name              : NetworkWatcher_westcentralus
Id                : /subscriptions/bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbbbbbb/resourceGroups/NetworkWatcherRG/providers/Microsoft.Network/networkWatchers/NetworkWatcher_westcentralus
Etag              : W/"ac624778-0214-49b9-a04c-794863485fa6"
Location          : westcentralus
Tags              : 
ProvisioningState : Succeeded
```

Gets the Network Watcher named NetworkWatcher_westcentralus in the resource group NetworkWatcherRG.

### Example 2: List Network Watchers using filtering
```
Get-AzNetworkWatcher -Name NetworkWatcher*

Name              : NetworkWatcher_westcentralus1
Id                : /subscriptions/bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbbbbbb/resourceGroups/NetworkWatcherRG/providers/Microsoft.Network/networkWatchers/NetworkWatcher_westcentralus1
Etag              : W/"ac624778-0214-49b9-a04c-794863485fa6"
Location          : westcentralus
Tags              : 
ProvisioningState : Succeeded

Name              : NetworkWatcher_westcentralus2
Id                : /subscriptions/bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbbbbbb/resourceGroups/NetworkWatcherRG/providers/Microsoft.Network/networkWatchers/NetworkWatcher_westcentralus2
Etag              : W/"ac624778-0214-49b9-a04c-794863485fa6"
Location          : westcentralus
Tags              : 
ProvisioningState : Succeeded
```

Gets the Network Watchers that start with "NetworkWatcher"

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
The network watcher name.

```yaml
Type: String
Parameter Sets: List
Aliases: ResourceName

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: True
```

### -ResourceGroupName
The resource group name.

```yaml
Type: String
Parameter Sets: List
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: True
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None
## OUTPUTS

### Microsoft.Azure.Commands.Network.Models.PSNetworkWatcher
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

