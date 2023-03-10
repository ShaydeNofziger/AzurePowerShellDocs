---
external help file: Microsoft.Azure.PowerShell.Cmdlets.Network.dll-Help.xml
Module Name: Az.Network
online version: https://learn.microsoft.com/powershell/module/az.network/get-azvpnserverconfiguration
schema: 2.0.0
---

# Get-AzVpnServerConfigurationPolicyGroup

## SYNOPSIS
{{ Fill in the Synopsis }}

## SYNTAX

### ByVpnServerConfigurationName (Default)
```
Get-AzVpnServerConfigurationPolicyGroup -ResourceGroupName <String> -ServerConfigurationName <String>
 [-Name <String>] [-DefaultProfile <IAzureContextContainer>] [<CommonParameters>]
```

### ByVpnServerConfigurationObject
```
Get-AzVpnServerConfigurationPolicyGroup [-Name <String>] -ServerConfigurationObject <PSVpnServerConfiguration>
 [-DefaultProfile <IAzureContextContainer>] [<CommonParameters>]
```

### ByVpnServerConfigurationResourceId
```
Get-AzVpnServerConfigurationPolicyGroup [-Name <String>] -ServerConfigurationResourceId <String>
 [-DefaultProfile <IAzureContextContainer>] [<CommonParameters>]
```

## DESCRIPTION
{{ Fill in the Description }}

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

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

### -Name
The resource name.

```yaml
Type: String
Parameter Sets: (All)
Aliases: ResourceName, VpnServerConfigurationPolicyGroupName

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
Parameter Sets: ByVpnServerConfigurationName
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ServerConfigurationName
The parent resource name.

```yaml
Type: String
Parameter Sets: ByVpnServerConfigurationName
Aliases: ParentVpnServerConfigurationName, VpnServerConfigurationName

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ServerConfigurationObject
The parent VpnServerConfiguration for this VpnServerConfigurationPolicyGroup.

```yaml
Type: PSVpnServerConfiguration
Parameter Sets: ByVpnServerConfigurationObject
Aliases: ParentVpnServerConfiguration, VpnServerConfiguration

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -ServerConfigurationResourceId
The resource id of the parent VpnServerConfiguration for this VpnServerConfigurationPolicyGroup.

```yaml
Type: String
Parameter Sets: ByVpnServerConfigurationResourceId
Aliases: ParentVpnServerConfigurationId, VpnServerConfigurationId

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### Microsoft.Azure.Commands.Network.Models.PSVpnServerConfiguration
### System.String
## OUTPUTS

### Microsoft.Azure.Commands.Network.Models.PSVpnServerConfigurationPolicyGroup
## NOTES

## RELATED LINKS
