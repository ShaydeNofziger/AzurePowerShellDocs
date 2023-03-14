---
external help file: Microsoft.Azure.PowerShell.Cmdlets.Network.dll-Help.xml
Module Name: Az.Network
online version: https://learn.microsoft.com/powershell/module/az.network/set-azapplicationgatewayauthenticationcertificate
schema: 2.0.0
---

# Set-AzApplicationGatewayAuthenticationCertificate

## SYNOPSIS
Updates an authentication certificate for an application gateway.

## SYNTAX

```
Set-AzApplicationGatewayAuthenticationCertificate -ApplicationGateway <PSApplicationGateway> -Name <String>
 -CertificateFile <String> [-DefaultProfile <IAzureContextContainer>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
The Set-AzApplicationGatewayAuthenticationCertificate cmdlet updates an authentication certificate for an Azure application gateway.

## EXAMPLES

### Example 1: Update an authentication certificate
```
$appgw = Get-AzApplicationGateway -ResourceGroupName "rg" -Name "appGwName"
$appgw = Set-AzApplicationGatewayAuthenticationCertificate -ApplicationGateway $appgw -Name "cert01" -CertificateFile "C:\cert2.cer"
$appgw = Set-AzApplicationGateway -ApplicationGateway $appgw
```

The first command gets the application gateway named appGwName and stores the result in the $appgw variable.
The second command updates the authentication certificate named cert01 in the application gateway.
The third command updates the application gateway.

## PARAMETERS

### -ApplicationGateway
Specifies the name of application gateway for which this cmdlet updates an authentication certificate.

```yaml
Type: PSApplicationGateway
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -CertificateFile
Specifies the path of the authentication certificate file with which this cmdlet updates the certificate.

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

### -Name
Specifies the name of the authentication certificate that this cmdlet updates.

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

### Microsoft.Azure.Commands.Network.Models.PSApplicationGateway
## OUTPUTS

### Microsoft.Azure.Commands.Network.Models.PSApplicationGateway
## NOTES
* Keywords: azure, azurerm, arm, resource, management, manager, network, networking

## RELATED LINKS

[Add-AzApplicationGatewayAuthenticationCertificate]()

[Get-AzApplicationGatewayAuthenticationCertificate]()

[New-AzApplicationGatewayAuthenticationCertificate]()

[Remove-AzApplicationGatewayAuthenticationCertificate]()

