---
external help file: Microsoft.Azure.PowerShell.Cmdlets.Network.dll-Help.xml
Module Name: Az.Network
online version: https://learn.microsoft.com/powershell/module/az.network/get-aznetworkwatchersecuritygroupview
schema: 2.0.0
---

# Get-AzNetworkWatcherSecurityGroupView

## SYNOPSIS
View the configured and effective network security group rules applied on a VM.

## SYNTAX

### SetByResource (Default)
```
Get-AzNetworkWatcherSecurityGroupView -NetworkWatcher <PSNetworkWatcher> -TargetVirtualMachineId <String>
 [-AsJob] [-DefaultProfile <IAzureContextContainer>] [<CommonParameters>]
```

### SetByName
```
Get-AzNetworkWatcherSecurityGroupView -NetworkWatcherName <String> -ResourceGroupName <String>
 -TargetVirtualMachineId <String> [-AsJob] [-DefaultProfile <IAzureContextContainer>] [<CommonParameters>]
```

### SetByLocation
```
Get-AzNetworkWatcherSecurityGroupView -Location <String> -TargetVirtualMachineId <String> [-AsJob]
 [-DefaultProfile <IAzureContextContainer>] [<CommonParameters>]
```

## DESCRIPTION
The Get-AzNetworkWatcherSecurityGroupView enables you to view the configured and effective network security group rules applied on a VM.

## EXAMPLES

### Example 1: Make a Security Group View call on a VM
```
$nw = Get-AzResource | Where-Object {$_.ResourceType -eq "Microsoft.Network/networkWatchers" -and $_.Location -eq "WestCentralUS" } 
$networkWatcher = Get-AzNetworkWatcher -Name $nw.Name -ResourceGroupName $nw.ResourceGroupName 
$VM = Get-AzVM -ResourceGroupName ContosoResourceGroup -Name VM0 
Get-AzNetworkWatcherSecurityGroupView -NetworkWatcher $networkWatcher -TargetVirtualMachineId $VM.Id
```

In the above example, we first get the regional Network Watcher, then a VM in the region. 
Then we make a Security Group View call on the specified VM.

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

### -NetworkWatcherName
The name of network watcher.

```yaml
Type: String
Parameter Sets: SetByName
Aliases: Name

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -ResourceGroupName
The name of the network watcher resource group.

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

### -TargetVirtualMachineId
The target VM Id

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### Microsoft.Azure.Commands.Network.Models.PSNetworkWatcher
### System.String
## OUTPUTS

### Microsoft.Azure.Commands.Network.Models.PSSecurityGroupViewResult
## NOTES
Keywords: azure, azurerm, arm, resource, management, manager, network, networking, network watcher, flow, ip

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

