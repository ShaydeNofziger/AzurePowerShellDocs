﻿---
external help file: Microsoft.Azure.PowerShell.Cmdlets.IotHub.dll-Help.xml
Module Name: Az.IotHub
online version: https://learn.microsoft.com/powershell/module/az.iothub/get-aziothubconnectionstring
schema: 2.0.0
---

# Get-AzIotHubConnectionString

## SYNOPSIS
Gets the IotHub connectionstrings.

## SYNTAX

```
Get-AzIotHubConnectionString [-ResourceGroupName] <String> [-Name] <String> [[-KeyName] <String>]
 [-DefaultProfile <IAzureContextContainer>] [<CommonParameters>]
```

## DESCRIPTION
Gets the IotHub connectionstrings.
You can either get connectionstrings for all the keys or filter them by a specific key name.

## EXAMPLES

### Example 1 Get All IotHub connectionstrings
```
Get-AzIotHubConnectionString -ResourceGroupName "myresourcegroup" -Name "myiothub"
```

Gets the connectionstrings for all keys for the iothub named "myiothub"

### Example 2 Get the IotHub connectionstrings for a specific key
```
Get-AzIotHubConnectionString -ResourceGroupName "myresourcegroup" -Name "myiothub" -KeyName "mykey"
```

Gets the connectionstrings for the key named "mykey" for the iothub named "myiothub"

## PARAMETERS

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

### -KeyName
Name of the Key

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Name
Name of the IotHub

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

### -ResourceGroupName
Resource Group Name

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

### Microsoft.Azure.Commands.Management.IotHub.Models.PSSharedAccessSignatureAuthorizationRule
## NOTES

## RELATED LINKS