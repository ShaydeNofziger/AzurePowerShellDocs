---
external help file: Microsoft.Azure.PowerShell.Cmdlets.ApiManagement.ServiceManagement.dll-Help.xml
Module Name: Az.ApiManagement
online version: https://docs.microsoft.com/powershell/module/az.apimanagement/get-azapimanagementsubscriptionkey
schema: 2.0.0
---

# Get-AzApiManagementSubscriptionKey

## SYNOPSIS
Gets subscription keys.

## SYNTAX

```
Get-AzApiManagementSubscriptionKey -Context <PsApiManagementContext> -SubscriptionId <String>
 [-DefaultProfile <IAzureContextContainer>] [<CommonParameters>]
```

## DESCRIPTION
The Get-AzApiManagementSubscriptionKey cmdlet gets a keys of a specified subscription.

## EXAMPLES

### Example 1: Get a subscription keys with a specified ID
```
$apimContext = New-AzApiManagementContext -ResourceGroupName "Api-Default-East-US" -ServiceName "contoso"
Get-AzApiManagementSubscriptionKey -Context $apimContext -SubscriptionId "0123456789"

PrimaryKey        : 5e48532634114fe999a6979ce0d63a64
SecondaryKey      : 0a8efaf85a664aa0a412241015c7c8f6
```

This command gets a subscription by ID.

## PARAMETERS

### -Context
Specifies a PsApiManagementContext object.

```yaml
Type: PsApiManagementContext
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

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

### -SubscriptionId
Specifies a subscription identifier.
If specified, this cmdlet finds subscription by the identifier.

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

### Microsoft.Azure.Commands.ApiManagement.ServiceManagement.Models.PsApiManagementContext
### System.String
## OUTPUTS

### Microsoft.Azure.Commands.ApiManagement.ServiceManagement.Models.PsApiManagementSubscriptionKey
## NOTES

## RELATED LINKS

[New-AzApiManagementSubscription]()

[New-AzApiManagementSubscription]()

[Remove-AzApiManagementSubscription]()

[Set-AzApiManagementSubscription]()

