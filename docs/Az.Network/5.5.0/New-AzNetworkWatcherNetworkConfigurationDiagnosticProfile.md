---
external help file: Microsoft.Azure.PowerShell.Cmdlets.Network.dll-Help.xml
Module Name: Az.Network
online version: https://learn.microsoft.com/powershell/module/az.network/new-aznetworkwatchernetworkconfigurationdiagnosticprofile
schema: 2.0.0
---

# New-AzNetworkWatcherNetworkConfigurationDiagnosticProfile

## SYNOPSIS
Creates a new network configuration diagnostic profile object. 
This object is used to restrict the network configuration during a diagnostic session using the specified criteria.

## SYNTAX

```
New-AzNetworkWatcherNetworkConfigurationDiagnosticProfile -Direction <String> -Protocol <String>
 -Source <String> -Destination <String> -DestinationPort <String> [-DefaultProfile <IAzureContextContainer>]
 [<CommonParameters>]
```

## DESCRIPTION
The New-AzNetworkWatcherNetworkConfigurationDiagnosticProfile cmdlet creates a new diagnostic profile object. 
This object is used to restrict the network configuration during a network configuration diagnostic session using the specified criteria.

## EXAMPLES

### Example 1: Invoke network configuration diagnostic session for VM and specified network profile
```
$profile = New-AzNetworkWatcherNetworkConfigurationDiagnosticProfile -Direction Inbound -Protocol Tcp -Source 10.1.1.4 -Destination * -DestinationPort 50
Invoke-AzNetworkWatcherNetworkConfigurationDiagnostic -Location eastus -TargetResourceId /subscriptions/61cc8a98-a8be-4bfe-a04e-0b461f93fe35/resourceGroups/NwRgEastUS/providers/Microsoft.Compute/virtualMachines/vm1 -Profile $profile

Results : [
            {
              "Profile": {
                "Direction": "Inbound",
                "Protocol": "Tcp",
                "Source": "10.1.1.4",
                "Destination": "*",
                "DestinationPort": "50"
              },
              "NetworkSecurityGroupResult": {
                "SecurityRuleAccessResult": "Allow",
                "EvaluatedNetworkSecurityGroups": [
                  {
                    "NetworkSecurityGroupId": "/subscriptions/61cc8a98-a8be-4bfe-a04e-0b461f93fe35/resourceGroups/clean
          upservice/providers/Microsoft.Network/networkSecurityGroups/rg-cleanupservice-nsg1",
                    "MatchedRule": {
                      "RuleName": "UserRule_Cleanuptool-Allow-4001",
                      "Action": "Allow"
                    },
                    "RulesEvaluationResult": [
                      {
                        "Name": "UserRule_Cleanuptool-Allow-100",
                        "ProtocolMatched": true,
                        "SourceMatched": false,
                        "SourcePortMatched": true,
                        "DestinationMatched": true,
                        "DestinationPortMatched": false
                      },
```

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

### -Destination
Traffic destination.
Accepted values are: '*', IP Address/CIDR, Service Tag.

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

### -DestinationPort
Traffic destination port.
Accepted values are '*', port (for example, 3389) and port range (for example, 80-100).

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

### -Direction
The direction of the traffic.
Accepted values are 'Inbound' and 'Outbound'

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Protocol
Protocol to be verified on.
Accepted values are '*', TCP, UDP.

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

### -Source
Traffic source.
Accepted values are '*', IP Address/CIDR, Service Tag.

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

### System.String
## OUTPUTS

### Microsoft.Azure.Commands.Network.Models.PSNetworkConfigurationDiagnosticProfile
## NOTES
Keywords: azure, azurerm, arm, resource, management, manager, network, networking, watcher, diagnostic, profile

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

