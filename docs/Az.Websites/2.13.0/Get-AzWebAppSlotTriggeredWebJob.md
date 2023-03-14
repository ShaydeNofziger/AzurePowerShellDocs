---
external help file: Az.Websites-help.xml
Module Name: Az.Websites
online version: https://learn.microsoft.com/powershell/module/az.websites/get-azwebappslottriggeredwebjob
schema: 2.0.0
---

# Get-AzWebAppSlotTriggeredWebJob

## SYNOPSIS
Get or list triggered web for a deployment slot.

## SYNTAX

### List (Default)
```
Get-AzWebAppSlotTriggeredWebJob -AppName <String> -ResourceGroupName <String> -SlotName <String>
 [-SubscriptionId <String[]>] [-DefaultProfile <PSObject>] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] [<CommonParameters>]
```

### Get
```
Get-AzWebAppSlotTriggeredWebJob -AppName <String> -Name <String> -ResourceGroupName <String> -SlotName <String>
 [-SubscriptionId <String[]>] [-DefaultProfile <PSObject>] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-PassThru] [-Proxy <Uri>] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] [<CommonParameters>]
```

### GetViaIdentity
```
Get-AzWebAppSlotTriggeredWebJob -InputObject <IWebsitesIdentity> [-DefaultProfile <PSObject>] [-Break]
 [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-PassThru] [-Proxy <Uri>]
 [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [<CommonParameters>]
```

## DESCRIPTION
Get or list triggered web for a deployment slot.

## EXAMPLES

### EXAMPLE 1
```
Get-AzWebAppSlotTriggeredWebJob -ResourceGroupName webjob-rg-test -AppName appService-test01 -SlotName slot01
```

Name                                         Kind WebJobType ResourceGroupName
----                                         ---- ---------- -----------------
appService-test01/slot01/slottriggeredjob-03                 webjob-rg-test
appService-test01/slot01/slottriggeredjob-04                 webjob-rg-test

### EXAMPLE 2
```
Get-AzWebAppSlotTriggeredWebJob -ResourceGroupName webjob-rg-test -AppName appService-test01 -SlotName slot01 -Name slottriggeredjob-03
```

Name                                         Kind WebJobType ResourceGroupName
----                                         ---- ---------- -----------------
appService-test01/slot01/slottriggeredjob-03                 webjob-rg-test

### EXAMPLE 3
```
$webjob = Get-AzWebAppSlotTriggeredWebJob -ResourceGroupName webjob-rg-test -AppName appService-test01 -SlotName slot01 -Name slottriggeredjob-03
PS C:\> Start-AzWebAppSlotTriggeredWebJob -ResourceGroupName webjob-rg-test -AppName appService-test01 -SlotName slot01 -Name slottriggeredjob-03
PS C:\> $webjob.Id | Get-AzWebAppSlotTriggeredWebJob
```

Name                                         Kind WebJobType ResourceGroupName
----                                         ---- ---------- -----------------
appService-test01/slot01/slottriggeredjob-03                 webjob-rg-test

## PARAMETERS

### -AppName
Site name.

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
Name of Web Job.

```yaml
Type: String
Parameter Sets: Get
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ResourceGroupName
Name of the resource group to which the resource belongs.

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

### -SlotName
Name of the deployment slot.
If a slot is not specified, the API uses the production slot.

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
Your Azure subscription ID.
This is a GUID-formatted string (e.g.
00000000-0000-0000-0000-000000000000).

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
Type: IWebsitesIdentity
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

### -PassThru
Returns true when the command succeeds

```yaml
Type: SwitchParameter
Parameter Sets: Get, GetViaIdentity
Aliases:

Required: False
Position: Named
Default value: False
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

### Microsoft.Azure.PowerShell.Cmdlets.Websites.Models.IWebsitesIdentity
## OUTPUTS

### Microsoft.Azure.PowerShell.Cmdlets.Websites.Models.Api20210201.ITriggeredWebJob
## NOTES
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties.
For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT \<IWebsitesIdentity\>: Identity Parameter
  \[Authprovider \<String\>\]: The auth provider for the users.
  \[DomainName \<String\>\]: The custom domain name.
  \[EnvironmentName \<String\>\]: The stage site identifier.
  \[FunctionAppName \<String\>\]: Name of the function app registered with the static site build.
  \[Id \<String\>\]: Resource identity path
  \[JobHistoryId \<String\>\]: History ID.
  \[Location \<String\>\]: Location where you plan to create the static site.
  \[Name \<String\>\]: Name of the static site.
  \[PrivateEndpointConnectionName \<String\>\]: Name of the private endpoint connection.
  \[ResourceGroupName \<String\>\]: Name of the resource group to which the resource belongs.
  \[Slot \<String\>\]: Name of the deployment slot.
If a slot is not specified, the API deletes a deployment for the production slot.
  \[SubscriptionId \<String\>\]: Your Azure subscription ID.
This is a GUID-formatted string (e.g.
00000000-0000-0000-0000-000000000000).
  \[Userid \<String\>\]: The user id of the user.
  \[WebJobName \<String\>\]: Name of Web Job.

## RELATED LINKS

[https://learn.microsoft.com/powershell/module/az.websites/get-azwebappslottriggeredwebjob](https://learn.microsoft.com/powershell/module/az.websites/get-azwebappslottriggeredwebjob)

