---
external help file: Microsoft.Azure.PowerShell.Cmdlets.Network.dll-Help.xml
Module Name: Az.Network
online version: https://learn.microsoft.com/powershell/module/az.network/new-azpacketcapturescopeconfig
schema: 2.0.0
---

# New-AzPacketCaptureScopeConfig

## SYNOPSIS
Creates a new packet capture scope object.

## SYNTAX

```
New-AzPacketCaptureScopeConfig [-Include <String[]>] [-Exclude <String[]>]
 [-DefaultProfile <IAzureContextContainer>] [<CommonParameters>]
```

## DESCRIPTION
The New-AzPacketCaptureScopeConfig cmdlet creates a new packet capture scope object. 
This object is used to either include or exclude the provided VMSS Instances for running Packet Captures. 
The New-AzPacketCaptureScopeConfig cmdlet can accept multiple VMSS Instances Names enable/disable composable capture sessions.

## EXAMPLES

### Example 1: Create a Packet Capture with multiple VMSS Instances in Include Scope
```
$nw = Get-AzResource | Where {$_.ResourceType -eq "Microsoft.Network/networkWatchers" -and $_.Location -eq "WestCentralUS" } 
$networkWatcher = Get-AzNetworkWatcher -Name $nw.Name -ResourceGroupName $nw.ResourceGroupName 

$storageAccount = Get-AzStorageAccount -ResourceGroupName contosoResourceGroup -Name contosostorage123

$instance1 = $vmssInstance1.Name
$instance2 = $vmssInstance2.Name
$scope = New-AzPacketCaptureScopeConfig -Include $instance1, $instance2

New-AzNetworkWatcherPacketCaptureV2 -NetworkWatcher $networkWatcher -TargetId $vmss.Id -TargetType "azurevmss" -Scope $scope -PacketCaptureName "PacketCaptureTest" -StorageAccountId $storageAccount.id -TimeLimitInSecond 60
```

In this example we create a packet capture named "PacketCaptureTest" with multiple VMSS Instances in Include Scope and a time limit.
Once the session is complete, it will be saved to the specified storage account. 
Note: The Azure Network Watcher extension must be installed on the target virtual machine to create packet captures.

### Example 2: Create a Packet Capture with multiple VMSS Instances in Exclude Scope
```
$nw = Get-AzResource | Where {$_.ResourceType -eq "Microsoft.Network/networkWatchers" -and $_.Location -eq "WestCentralUS" } 
$networkWatcher = Get-AzNetworkWatcher -Name $nw.Name -ResourceGroupName $nw.ResourceGroupName 

$storageAccount = Get-AzStorageAccount -ResourceGroupName contosoResourceGroup -Name contosostorage123

$instance1 = $vmssInstance1.Name
$instance2 = $vmssInstance2.Name
$scope = New-AzPacketCaptureScopeConfig -Exclude $instance1, $instance2

New-AzNetworkWatcherPacketCaptureV2 -NetworkWatcher $networkWatcher -TargetId $vmss.Id -TargetType "azurevmss" -Scope $scope -PacketCaptureName "PacketCaptureTest" -StorageAccountId $storageAccount.id -TimeLimitInSecond 60
```

In this example we create a packet capture named "PacketCaptureTest" with multiple VMSS Instances in Exclude Scope - meaning that apart from these provided Instance, Packet Capture would be working on all other instances and a time limit.
Once the session is complete, it will be saved to the specified storage account. 
Note: The Azure Network Watcher extension must be installed on the target virtual machine to create packet captures.

## PARAMETERS

### -DefaultProfile
The credentials, account, tenant, and subscription used for communication with Azure.

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

### -Exclude
Machines to be Excluded in Scope

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Include
Machines to be Included in Scope

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### System.String[]
## OUTPUTS

### Microsoft.Azure.Commands.Network.Models.PSPacketCaptureMachineScope
## NOTES

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

