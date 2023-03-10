---
external help file: Microsoft.Azure.PowerShell.Cmdlets.Media.dll-Help.xml
Module Name: Az.Media
online version: https://docs.microsoft.com/en-us/powershell/module/az.media/get-azmediaservicenameavailability
schema: 2.0.0
---

# Get-AzMediaServiceNameAvailability

## SYNOPSIS
Checks whether a media service name is available.
Media service names are globally unique.

## SYNTAX

```
Get-AzMediaServiceNameAvailability [-DefaultProfile <IAzureContextContainer>] [-AccountName] <String>
 [<CommonParameters>]
```

## DESCRIPTION
The Get-AzMediaServiceNameAvailability cmdlet checks whether a media service name is available.
Media service names are globally unique.

## EXAMPLES

### Example 1: Check whether a Media Service name is available
```
PS C:\>Get-AzMediaServiceNameAvailability -AccountName "MediaService1"
```

This command checks if the name MediaService1 is available.

## PARAMETERS

### -AccountName
Specifies the name of the media service that this cmdlet gets.

```yaml
Type: String
Parameter Sets: (All)
Aliases: Name, ResourceName

Required: True
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None
## OUTPUTS

### Microsoft.Azure.Commands.Media.Models.PSCheckNameAvailabilityOutput
## NOTES

## RELATED LINKS

[Get-AzMediaService]()

[New-AzMediaService]()

[Remove-AzMediaService]()

[Set-AzMediaService]()

