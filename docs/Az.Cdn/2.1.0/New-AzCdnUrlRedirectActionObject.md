---
external help file: Az.Cdn-help.xml
Module Name: Az.Cdn
online version: https://docs.microsoft.com/powershell/module/az.Cdn/new-AzCdnUrlRedirectActionObject
schema: 2.0.0
---

# New-AzCdnUrlRedirectActionObject

## SYNOPSIS
Create an in-memory object for UrlRedirectAction.

## SYNTAX

```
New-AzCdnUrlRedirectActionObject -ParameterRedirectType <RedirectType> -Name <DeliveryRuleAction>
 [-ParameterCustomFragment <String>] [-ParameterCustomHostname <String>] [-ParameterCustomPath <String>]
 [-ParameterCustomQueryString <String>] [-ParameterDestinationProtocol <DestinationProtocol>]
 [<CommonParameters>]
```

## DESCRIPTION
Create an in-memory object for UrlRedirectAction.

## EXAMPLES

### EXAMPLE 1
```
{{ Add code here }}
```

### EXAMPLE 2
```
{{ Add code here }}
```

## PARAMETERS

### -ParameterRedirectType
The redirect type the rule will use when redirecting traffic.

```yaml
Type: RedirectType
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Name
The name of the action for the delivery rule.

```yaml
Type: DeliveryRuleAction
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ParameterCustomFragment
Fragment to add to the redirect URL.
Fragment is the part of the URL that comes after #.
Do not include the #.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ParameterCustomHostname
Host to redirect.
Leave empty to use the incoming host as the destination host.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ParameterCustomPath
The full path to redirect.
Path cannot be empty and must start with /.
Leave empty to use the incoming path as destination path.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ParameterCustomQueryString
The set of query strings to be placed in the redirect URL.
Setting this value would replace any existing query string; leave empty to preserve the incoming query string.
Query string must be in \<key\>=\<value\> format.
?
and & will be added automatically so do not include them.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ParameterDestinationProtocol
Protocol to use for the redirect.
The default value is MatchRequest.

```yaml
Type: DestinationProtocol
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Microsoft.Azure.PowerShell.Cmdlets.Cdn.Models.Api20210601.UrlRedirectAction
## NOTES

## RELATED LINKS

[https://docs.microsoft.com/powershell/module/az.Cdn/new-AzCdnUrlRedirectActionObject](https://docs.microsoft.com/powershell/module/az.Cdn/new-AzCdnUrlRedirectActionObject)

