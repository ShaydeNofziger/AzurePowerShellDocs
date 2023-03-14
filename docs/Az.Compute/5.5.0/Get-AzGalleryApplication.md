---
external help file: Az.Compute-help.xml
Module Name: Az.Compute
online version: https://learn.microsoft.com/powershell/module/az.compute/get-azgalleryapplication
schema: 2.0.0
---

# Get-AzGalleryApplication

## SYNOPSIS
Retrieves information about a gallery Application Definition.

## SYNTAX

### List (Default)
```
Get-AzGalleryApplication -GalleryName <String> -ResourceGroupName <String> [-SubscriptionId <String[]>]
 [-DefaultProfile <PSObject>] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] [<CommonParameters>]
```

### Get
```
Get-AzGalleryApplication -GalleryName <String> -Name <String> -ResourceGroupName <String>
 [-SubscriptionId <String[]>] [-DefaultProfile <PSObject>] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] [<CommonParameters>]
```

### GetViaIdentity
```
Get-AzGalleryApplication -InputObject <IComputeIdentity> [-DefaultProfile <PSObject>] [-Break]
 [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>]
 [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [<CommonParameters>]
```

## DESCRIPTION
Retrieves information about a gallery Application Definition.

## EXAMPLES

### EXAMPLE 1
```
Get-AzGalleryApplication -ResourceGroupName $rgName -GalleryName $galleryName -name $galleryAppName
```

### EXAMPLE 2
```
Get-AzGalleryApplication -GalleryName $GalleryName -ResourceGroupName $rgName
```

## PARAMETERS

### -GalleryName
The name of the Shared Application Gallery from which the Application Definitions are to be retrieved.

```yaml
Type: String
Parameter Sets: List, Get
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Name
The name of the gallery Application Definition to be retrieved.

```yaml
Type: String
Parameter Sets: Get
Aliases: GalleryApplicationName

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ResourceGroupName
The name of the resource group.

```yaml
Type: String
Parameter Sets: List, Get
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SubscriptionId
Subscription credentials which uniquely identify Microsoft Azure subscription.
The subscription ID forms part of the URI for every service call.

```yaml
Type: String[]
Parameter Sets: List, Get
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -InputObject
Identity Parameter
To construct, see NOTES section for INPUTOBJECT properties and create a hash table.

```yaml
Type: IComputeIdentity
Parameter Sets: GetViaIdentity
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -DefaultProfile
The credentials, account, tenant, and subscription used for communication with Azure.

```yaml
Type: PSObject
Parameter Sets: (All)
Aliases: AzureRMContext, AzureCredential

Required: False
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### Microsoft.Azure.PowerShell.Cmdlets.Compute.Models.IComputeIdentity
## OUTPUTS

### Microsoft.Azure.PowerShell.Cmdlets.Compute.Models.Api20220103.IGalleryApplication
## NOTES
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties.
For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT \<IComputeIdentity\>: Identity Parameter
  \[CommandId \<String\>\]: The command id.
  \[GalleryApplicationName \<String\>\]: The name of the gallery Application Definition to be created or updated.
The allowed characters are alphabets and numbers with dots, dashes, and periods allowed in the middle.
The maximum length is 80 characters.
  \[GalleryApplicationVersionName \<String\>\]: The name of the gallery Application Version to be created.
Needs to follow semantic version name pattern: The allowed characters are digit and period.
Digits must be within the range of a 32-bit integer.
Format: \<MajorVersion\>.\<MinorVersion\>.\<Patch\>
  \[GalleryImageName \<String\>\]: The name of the gallery image definition to be created or updated.
The allowed characters are alphabets and numbers with dots, dashes, and periods allowed in the middle.
The maximum length is 80 characters.
  \[GalleryImageVersionName \<String\>\]: The name of the gallery image version to be created.
Needs to follow semantic version name pattern: The allowed characters are digit and period.
Digits must be within the range of a 32-bit integer.
Format: \<MajorVersion\>.\<MinorVersion\>.\<Patch\>
  \[GalleryName \<String\>\]: The name of the Shared Image Gallery.
The allowed characters are alphabets and numbers with dots and periods allowed in the middle.
The maximum length is 80 characters.
  \[Id \<String\>\]: Resource identity path
  \[InstanceId \<String\>\]: The instance ID of the virtual machine.
  \[Location \<String\>\]: The location upon which run commands is queried.
  \[ResourceGroupName \<String\>\]: The name of the resource group.
  \[RunCommandName \<String\>\]: The name of the virtual machine run command.
  \[SubscriptionId \<String\>\]: Subscription credentials which uniquely identify Microsoft Azure subscription.
The subscription ID forms part of the URI for every service call.
  \[VMName \<String\>\]: The name of the virtual machine where the run command should be created or updated.
  \[VMScaleSetName \<String\>\]: The name of the VM scale set.

## RELATED LINKS

[https://learn.microsoft.com/powershell/module/az.compute/get-azgalleryapplication](https://learn.microsoft.com/powershell/module/az.compute/get-azgalleryapplication)

