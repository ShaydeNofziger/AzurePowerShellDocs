---
external help file: Microsoft.Azure.PowerShell.Cmdlets.Compute.dll-Help.xml
Module Name: Az.Compute
online version: https://learn.microsoft.com/powershell/module/az.compute/get-azvmimagepublisher
schema: 2.0.0
---

# Get-AzVMImagePublisher

## SYNOPSIS
Gets the VMImage publishers.

## SYNTAX

```
Get-AzVMImagePublisher -Location <String> [-DefaultProfile <IAzureContextContainer>] [<CommonParameters>]
```

## DESCRIPTION
The Get-AzVMImagePublisher cmdlet gets the VMImage publishers.

## EXAMPLES

### Example 1: Get VMImage publishers for a region
```
Get-AzVMImagePublisher -Location "Central US"
```

This command gets the publishers of VMImage instances for the Central US region within your Azure profile.

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
Specifies the location of the VMImage.

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

### Microsoft.Azure.Commands.Compute.Models.PSVirtualMachineImagePublisher
## NOTES

## RELATED LINKS

[Get-AzVMImage]()

[Get-AzVMImageOffer]()

[Get-AzVMImageSku]()

[Save-AzVMImage]()

