---
external help file: Az.Resources-help.xml
Module Name: Az.Resources
online version: https://learn.microsoft.com/powershell/module/az.resources/remove-azadapppermission
schema: 2.0.0
---

# Remove-AzADAppPermission

## SYNOPSIS
Removes an API permission.

## SYNTAX

### ObjectIdParameterSet (Default)
```
Remove-AzADAppPermission -PermissionId <Guid> -ObjectId <Guid> [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] [-DefaultProfile <PSObject>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### AppIdParameterSet
```
Remove-AzADAppPermission -PermissionId <Guid> [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] -ApplicationId <Guid> [-DefaultProfile <PSObject>] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

## DESCRIPTION
Removes an API permission.

## EXAMPLES

### EXAMPLE 1
```
Remove-AzADAppPermission -ObjectId 9cc74d5e-1162-4b90-8696-65f3d6a3f7d0 -PermissionId 5f8c59db-677d-491f-a6b8-5f174b11ec1d
```

## PARAMETERS

### -PermissionId
The unique identifier for one of the oauth2PermissionScopes or appRole instances that the resource application exposes.

```yaml
Type: Guid
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ObjectId
The unique identifier in Azure AD.

```yaml
Type: Guid
Parameter Sets: ObjectIdParameterSet
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Break
Wait for .NET debugger to attach

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

### -HttpPipelineAppend
SendAsync Pipeline Steps to be appended to the front of the pipeline

```yaml
Type: SendAsyncStep[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -HttpPipelinePrepend
SendAsync Pipeline Steps to be prepended to the front of the pipeline

```yaml
Type: SendAsyncStep[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Proxy
The URI for the proxy server to use

```yaml
Type: Uri
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ProxyCredential
Credentials for a proxy server to use for the remote call

```yaml
Type: PSCredential
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ProxyUseDefaultCredentials
Use the default credentials for the proxy

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

### -ApplicationId
The unique identifier for the application that is assigned by Azure AD.

```yaml
Type: Guid
Parameter Sets: AppIdParameterSet
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DefaultProfile
The credentials, account, tenant, and subscription used for communication with Azure.

```yaml
Type: PSObject
Parameter Sets: (All)
Aliases: AzContext, AzureRmContext, AzureCredential

Required: False
Position: Named
Default value: None
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
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### System.Boolean
## NOTES

## RELATED LINKS

[https://learn.microsoft.com/powershell/module/az.resources/remove-azadapppermission](https://learn.microsoft.com/powershell/module/az.resources/remove-azadapppermission)

