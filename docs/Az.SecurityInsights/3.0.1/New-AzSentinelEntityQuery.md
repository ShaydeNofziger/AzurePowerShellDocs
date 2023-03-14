---
external help file: Az.SecurityInsights-help.xml
Module Name: Az.SecurityInsights
online version: https://learn.microsoft.com/powershell/module/az.securityinsights/new-azsentinelentityquery
schema: 2.0.0
---

# New-AzSentinelEntityQuery

## SYNOPSIS
Creates or updates the entity query.

## SYNTAX

```
New-AzSentinelEntityQuery -ResourceGroupName <String> -WorkspaceName <String> [-SubscriptionId <String>]
 [-Id <String>] -Kind <EntityQueryKind> -Title <String> -Content <String> -Description <String>
 -QueryDefinitionQuery <String> -InputEntityType <EntityType> [-RequiredInputFieldsSet <String[]>]
 [-EntitiesFilter <ActivityEntityQueriesPropertiesEntitiesFilter>] [-TemplateName <String>]
 [-DefaultProfile <PSObject>] [-AsJob] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-NoWait] [-Proxy <Uri>] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
Creates or updates the entity query.

## EXAMPLES

### EXAMPLE 1
```
$template = Get-AzSentinelEntityQueryTemplate -ResourceGroupName "myResourceGroupName" -workspaceName "myWorkspaceName" -Id "myEntityQueryTemplateId"
New-AzSentinelEntityQuery -ResourceGroupName "myResourceGroupName" -workspaceName "myWorkspaceName" -Kind Activity -Title ($template.title) -InputEntityType ($template.inputEntityType) -TemplateName ($template.Name)
```

### EXAMPLE 2
```
New-AzSentinelEntityQuery -ResourceGroupName "myResourceGroupName" -workspaceName "myWorkspaceName" -Id ((New-Guid).Guid) -Kind Activity -Title 'An account was deleted on this host' -InputEntityType 'Host' -Content "On 'SomeCompute' the account 'SomeAccount' was deleted by 'SomeUser'" -Description "Account deleted on host" -QueryDefinitionQuery 'let GetAccountActions = (v_Host_Name:string, v_Host_NTDomain:string, v_Host_DnsDomain:string, v_Host_AzureID:string, v_Host_OMSAgentID:string){\nSecurityEvent\n| where EventID in (4725, 4726, 4767, 4720, 4722, 4723, 4724)\n// parsing for Host to handle variety of conventions coming from data\n| extend Host_HostName = case(\nComputer has ''@'', tostring(split(Computer, ''@'')[0]),\nComputer has ''\\'', tostring(split(Computer, ''\\'')[1]),\nComputer has ''.'', tostring(split(Computer, ''.'')[0]),\nComputer\n)\n| extend Host_NTDomain = case(\nComputer has ''\\'', tostring(split(Computer, ''\\'')[0]), \nComputer has ''.'', tostring(split(Computer, ''.'')[-2]), \nComputer\n)\n| extend Host_DnsDomain = case(\nComputer has ''\\'', tostring(split(Computer, ''\\'')[0]), \nComputer has ''.'', strcat_array(array_slice(split(Computer,''.''),-2,-1),''.''), \nComputer\n)\n| where (Host_HostName =~ v_Host_Name and Host_NTDomain =~ v_Host_NTDomain) \nor (Host_HostName =~ v_Host_Name and Host_DnsDomain =~ v_Host_DnsDomain) \nor v_Host_AzureID =~ _ResourceId \nor v_Host_OMSAgentID == SourceComputerId\n| project TimeGenerated, EventID, Activity, Computer, TargetAccount, TargetUserName, TargetDomainName, TargetSid, SubjectUserName, SubjectUserSid, _ResourceId, SourceComputerId\n| extend AddedBy = SubjectUserName\n// Future support for Activities\n| extend timestamp = TimeGenerated, HostCustomEntity = Computer, AccountCustomEntity = TargetAccount\n};\nGetAccountActions(''someHost'', ''SomeNTDomain'', ''SomeDNSDomain'', ''SomeID'', ''SomeOMSAgentID'')\n \n| where EventID == 4726' -RequiredInputFieldsSet @(@("Host_HostName","Host_NTDomain"),@("Host_HostName","Host_DnsDomain"),@("Host_AzureID"),@("Host_OMSAgentID")) -EntitiesFilter @{"Host_OsFamily" = @("Windows")}
```

## PARAMETERS

### -ResourceGroupName
The Resource Group Name.

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

### -WorkspaceName
\[Alias('DataConnectionName')\]
 The name of the workspace.

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

### -SubscriptionId
Gets subscription credentials which uniquely identify Microsoft Azure subscription.
The subscription ID forms part of the URI for every service call.

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

### -Id
The Id of the Entity Query.

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

### -Kind
Kind of the the Entity Query

```yaml
Type: EntityQueryKind
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Title
{{ Fill Title Description }}

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

### -Content
{{ Fill Content Description }}

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

### -Description
{{ Fill Description Description }}

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

### -QueryDefinitionQuery
{{ Fill QueryDefinitionQuery Description }}

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

### -InputEntityType
{{ Fill InputEntityType Description }}

```yaml
Type: EntityType
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RequiredInputFieldsSet
{{ Fill RequiredInputFieldsSet Description }}

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -EntitiesFilter
To construct, see NOTES section for ENTITIESFILTER properties and create a hash table.

```yaml
Type: ActivityEntityQueriesPropertiesEntitiesFilter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TemplateName
{{ Fill TemplateName Description }}

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

### -AsJob
Run the command as a job

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

### -NoWait
Run the command asynchronously

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

### Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Models.Api20210901Preview.CustomEntityQuery
## NOTES
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties.
For information on hash tables, run Get-Help about_Hash_Tables.

ENTITIESFILTER \<ActivityEntityQueriesPropertiesEntitiesFilter\>: 
  \[(Any) \<String\[\]\>\]: This indicates any property can be added to this object.

## RELATED LINKS

[https://learn.microsoft.com/powershell/module/az.securityinsights/new-azsentinelentityquery](https://learn.microsoft.com/powershell/module/az.securityinsights/new-azsentinelentityquery)

