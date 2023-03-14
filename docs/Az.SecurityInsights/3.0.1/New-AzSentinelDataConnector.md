---
external help file: Az.SecurityInsights-help.xml
Module Name: Az.SecurityInsights
online version: https://learn.microsoft.com/powershell/module/az.securityinsights/new-azsentineldataconnector
schema: 2.0.0
---

# New-AzSentinelDataConnector

## SYNOPSIS
Creates or updates the data connector.

## SYNTAX

### AADAATP (Default)
```
New-AzSentinelDataConnector -ResourceGroupName <String> -WorkspaceName <String> [-SubscriptionId <String>]
 [-Id <String>] -Kind <DataConnectorKind> [-TenantId <String>] [-Alerts <String>] [-DefaultProfile <PSObject>]
 [-AsJob] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-NoWait]
 [-Proxy <Uri>] [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

### Dynamics365
```
New-AzSentinelDataConnector -ResourceGroupName <String> -WorkspaceName <String> [-SubscriptionId <String>]
 [-Id <String>] -Kind <DataConnectorKind> [-TenantId <String>] [-CommonDataServiceActivity <String>]
 [-DefaultProfile <PSObject>] [-AsJob] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-NoWait] [-Proxy <Uri>] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### MicrosoftCloudAppSecurity
```
New-AzSentinelDataConnector -ResourceGroupName <String> -WorkspaceName <String> [-SubscriptionId <String>]
 [-Id <String>] -Kind <DataConnectorKind> [-TenantId <String>] [-Alerts <String>] [-DiscoveryLog <String>]
 [-DefaultProfile <PSObject>] [-AsJob] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-NoWait] [-Proxy <Uri>] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### MicrosoftDefenderAdvancedThreatProtection
```
New-AzSentinelDataConnector -ResourceGroupName <String> -WorkspaceName <String> [-SubscriptionId <String>]
 [-Id <String>] -Kind <DataConnectorKind> [-TenantId <String>] [-Alerts <String>] [-DefaultProfile <PSObject>]
 [-AsJob] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-NoWait]
 [-Proxy <Uri>] [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

### MicrosoftThreatIntelligence
```
New-AzSentinelDataConnector -ResourceGroupName <String> -WorkspaceName <String> [-SubscriptionId <String>]
 [-Id <String>] -Kind <DataConnectorKind> [-TenantId <String>] [-BingSafetyPhishingURL <String>]
 [-BingSafetyPhishingUrlLookbackPeriod <String>] [-MicrosoftEmergingThreatFeed <String>]
 [-MicrosoftEmergingThreatFeedLookbackPeriod <String>] [-DefaultProfile <PSObject>] [-AsJob] [-Break]
 [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-NoWait] [-Proxy <Uri>]
 [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### MicrosoftThreatProtection
```
New-AzSentinelDataConnector -ResourceGroupName <String> -WorkspaceName <String> [-SubscriptionId <String>]
 [-Id <String>] -Kind <DataConnectorKind> [-TenantId <String>] [-Incident <String>]
 [-DefaultProfile <PSObject>] [-AsJob] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-NoWait] [-Proxy <Uri>] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### Office365
```
New-AzSentinelDataConnector -ResourceGroupName <String> -WorkspaceName <String> [-SubscriptionId <String>]
 [-Id <String>] -Kind <DataConnectorKind> [-TenantId <String>] [-Exchange <String>] [-SharePoint <String>]
 [-Teams <String>] [-DefaultProfile <PSObject>] [-AsJob] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-NoWait] [-Proxy <Uri>] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### OfficeATP
```
New-AzSentinelDataConnector -ResourceGroupName <String> -WorkspaceName <String> [-SubscriptionId <String>]
 [-Id <String>] -Kind <DataConnectorKind> [-TenantId <String>] [-Alerts <String>] [-DefaultProfile <PSObject>]
 [-AsJob] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-NoWait]
 [-Proxy <Uri>] [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

### OfficeIRM
```
New-AzSentinelDataConnector -ResourceGroupName <String> -WorkspaceName <String> [-SubscriptionId <String>]
 [-Id <String>] -Kind <DataConnectorKind> [-TenantId <String>] [-Alerts <String>] [-DefaultProfile <PSObject>]
 [-AsJob] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-NoWait]
 [-Proxy <Uri>] [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

### ThreatIntelligence
```
New-AzSentinelDataConnector -ResourceGroupName <String> -WorkspaceName <String> [-SubscriptionId <String>]
 [-Id <String>] -Kind <DataConnectorKind> [-TenantId <String>] [-Indicator <String>]
 [-DefaultProfile <PSObject>] [-AsJob] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-NoWait] [-Proxy <Uri>] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### ThreatIntelligenceTaxii
```
New-AzSentinelDataConnector -ResourceGroupName <String> -WorkspaceName <String> [-SubscriptionId <String>]
 [-Id <String>] -Kind <DataConnectorKind> [-TenantId <String>] -WorkspaceId <String> -FriendlyName <String>
 -APIRootURL <String> -CollectionId <String> -PollingFrequency <PollingFrequency> [-UserName <String>]
 [-Password <String>] [-TaxiiLookbackPeriod <String>] [-DefaultProfile <PSObject>] [-AsJob] [-Break]
 [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-NoWait] [-Proxy <Uri>]
 [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### AzureSecurityCenter
```
New-AzSentinelDataConnector -ResourceGroupName <String> -WorkspaceName <String> [-SubscriptionId <String>]
 [-Id <String>] -Kind <DataConnectorKind> [-Alerts <String>] -ASCSubscriptionId <String>
 [-DefaultProfile <PSObject>] [-AsJob] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-NoWait] [-Proxy <Uri>] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### AmazonWebServicesCloudTrail
```
New-AzSentinelDataConnector -ResourceGroupName <String> -WorkspaceName <String> [-SubscriptionId <String>]
 [-Id <String>] -Kind <DataConnectorKind> -AWSRoleArn <String> [-Log <String>] [-DefaultProfile <PSObject>]
 [-AsJob] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-NoWait]
 [-Proxy <Uri>] [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

### AmazonWebServicesS3
```
New-AzSentinelDataConnector -ResourceGroupName <String> -WorkspaceName <String> [-SubscriptionId <String>]
 [-Id <String>] -Kind <DataConnectorKind> -AWSRoleArn <String> -Log <String> -SQSURL <String[]>
 -DetinationTable <String> [-DefaultProfile <PSObject>] [-AsJob] [-Break]
 [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-NoWait] [-Proxy <Uri>]
 [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### GenericUI
```
New-AzSentinelDataConnector -ResourceGroupName <String> -WorkspaceName <String> [-SubscriptionId <String>]
 [-Id <String>] -Kind <DataConnectorKind> -UiConfigTitle <String> -UiConfigPublisher <String>
 -UiConfigDescriptionMarkdown <String> -UiConfigGraphQueriesTableName <String>
 -UiConfigGraphQuery <GraphQueries[]> -UiConfigSampleQuery <SampleQueries[]>
 -UiConfigDataType <LastDataReceivedDataType[]> -UiConfigConnectivityCriterion <ConnectivityCriteria[]>
 -AvailabilityIsPreview <Boolean> -UiConfigInstructionStep <InstructionSteps[]> [-UiConfigCustomImage <String>]
 [-AvailabilityStatus <Int32>] [-PermissionResourceProvider <PermissionsResourceProviderItem[]>]
 [-PermissionCustom <PermissionsCustomsItem[]>] [-DefaultProfile <PSObject>] [-AsJob] [-Break]
 [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-NoWait] [-Proxy <Uri>]
 [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
Creates or updates the data connector.

## EXAMPLES

### EXAMPLE 1
```
New-AzSentinelDataConnector -ResourceGroupName "myResourceGroupName" -WorkspaceName "myWorkspaceName" -Kind 'MicrosoftThreatIntelligence' -BingSafetyPhishingURL Enabled -BingSafetyPhishingUrlLookbackPeriod All  -MicrosoftEmergingThreatFeed Enabled -MicrosoftEmergingThreatFeedLookbackPeriod All
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
The Id of the Data Connector.

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
Kind of the the data connection

```yaml
Type: DataConnectorKind
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TenantId
The TenantId.

```yaml
Type: String
Parameter Sets: AADAATP, Dynamics365, MicrosoftCloudAppSecurity, MicrosoftDefenderAdvancedThreatProtection, MicrosoftThreatIntelligence, MicrosoftThreatProtection, Office365, OfficeATP, OfficeIRM, ThreatIntelligence, ThreatIntelligenceTaxii
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Alerts
{{ Fill Alerts Description }}

```yaml
Type: String
Parameter Sets: AADAATP, MicrosoftCloudAppSecurity, MicrosoftDefenderAdvancedThreatProtection, OfficeATP, OfficeIRM, AzureSecurityCenter
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -WorkspaceId
{{ Fill WorkspaceId Description }}

```yaml
Type: String
Parameter Sets: ThreatIntelligenceTaxii
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -FriendlyName
{{ Fill FriendlyName Description }}

```yaml
Type: String
Parameter Sets: ThreatIntelligenceTaxii
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -APIRootURL
{{ Fill APIRootURL Description }}

```yaml
Type: String
Parameter Sets: ThreatIntelligenceTaxii
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -CollectionId
{{ Fill CollectionId Description }}

```yaml
Type: String
Parameter Sets: ThreatIntelligenceTaxii
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PollingFrequency
{{ Fill PollingFrequency Description }}

```yaml
Type: PollingFrequency
Parameter Sets: ThreatIntelligenceTaxii
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UserName
{{ Fill UserName Description }}

```yaml
Type: String
Parameter Sets: ThreatIntelligenceTaxii
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Password
{{ Fill Password Description }}

```yaml
Type: String
Parameter Sets: ThreatIntelligenceTaxii
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TaxiiLookbackPeriod
{{ Fill TaxiiLookbackPeriod Description }}

```yaml
Type: String
Parameter Sets: ThreatIntelligenceTaxii
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Indicator
{{ Fill Indicator Description }}

```yaml
Type: String
Parameter Sets: ThreatIntelligence
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Exchange
{{ Fill Exchange Description }}

```yaml
Type: String
Parameter Sets: Office365
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SharePoint
{{ Fill SharePoint Description }}

```yaml
Type: String
Parameter Sets: Office365
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Teams
{{ Fill Teams Description }}

```yaml
Type: String
Parameter Sets: Office365
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Incident
{{ Fill Incident Description }}

```yaml
Type: String
Parameter Sets: MicrosoftThreatProtection
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -BingSafetyPhishingURL
{{ Fill BingSafetyPhishingURL Description }}

```yaml
Type: String
Parameter Sets: MicrosoftThreatIntelligence
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -BingSafetyPhishingUrlLookbackPeriod
{{ Fill BingSafetyPhishingUrlLookbackPeriod Description }}

```yaml
Type: String
Parameter Sets: MicrosoftThreatIntelligence
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MicrosoftEmergingThreatFeed
{{ Fill MicrosoftEmergingThreatFeed Description }}

```yaml
Type: String
Parameter Sets: MicrosoftThreatIntelligence
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MicrosoftEmergingThreatFeedLookbackPeriod
{{ Fill MicrosoftEmergingThreatFeedLookbackPeriod Description }}

```yaml
Type: String
Parameter Sets: MicrosoftThreatIntelligence
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DiscoveryLog
{{ Fill DiscoveryLog Description }}

```yaml
Type: String
Parameter Sets: MicrosoftCloudAppSecurity
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -CommonDataServiceActivity
{{ Fill CommonDataServiceActivity Description }}

```yaml
Type: String
Parameter Sets: Dynamics365
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ASCSubscriptionId
ASC Subscription Id.

```yaml
Type: String
Parameter Sets: AzureSecurityCenter
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AWSRoleArn
{{ Fill AWSRoleArn Description }}

```yaml
Type: String
Parameter Sets: AmazonWebServicesCloudTrail, AmazonWebServicesS3
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Log
{{ Fill Log Description }}

```yaml
Type: String
Parameter Sets: AmazonWebServicesCloudTrail
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

```yaml
Type: String
Parameter Sets: AmazonWebServicesS3
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SQSURL
{{ Fill SQSURL Description }}

```yaml
Type: String[]
Parameter Sets: AmazonWebServicesS3
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DetinationTable
{{ Fill DetinationTable Description }}

```yaml
Type: String
Parameter Sets: AmazonWebServicesS3
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UiConfigTitle
\[Parameter(ParameterSetName = 'APIPolling', Mandatory)\]

```yaml
Type: String
Parameter Sets: GenericUI
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UiConfigPublisher
\[Parameter(ParameterSetName = 'APIPolling', Mandatory)\]

```yaml
Type: String
Parameter Sets: GenericUI
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UiConfigDescriptionMarkdown
\[Parameter(ParameterSetName = 'APIPolling', Mandatory)\]

```yaml
Type: String
Parameter Sets: GenericUI
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UiConfigGraphQueriesTableName
\[Parameter(ParameterSetName = 'APIPolling', Mandatory)\]

```yaml
Type: String
Parameter Sets: GenericUI
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UiConfigGraphQuery
\[Parameter(ParameterSetName = 'APIPolling', Mandatory)\]
To construct, see NOTES section for UICONFIGGRAPHQUERY properties and create a hash table.

```yaml
Type: GraphQueries[]
Parameter Sets: GenericUI
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UiConfigSampleQuery
\[Parameter(ParameterSetName = 'APIPolling', Mandatory)\]
To construct, see NOTES section for UICONFIGSAMPLEQUERY properties and create a hash table.

```yaml
Type: SampleQueries[]
Parameter Sets: GenericUI
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UiConfigDataType
\[Parameter(ParameterSetName = 'APIPolling', Mandatory)\]
To construct, see NOTES section for UICONFIGDATATYPE properties and create a hash table.

```yaml
Type: LastDataReceivedDataType[]
Parameter Sets: GenericUI
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UiConfigConnectivityCriterion
\[Parameter(ParameterSetName = 'APIPolling', Mandatory)\]
To construct, see NOTES section for UICONFIGCONNECTIVITYCRITERION properties and create a hash table.

```yaml
Type: ConnectivityCriteria[]
Parameter Sets: GenericUI
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AvailabilityIsPreview
\[Parameter(ParameterSetName = 'APIPolling', Mandatory)\]

```yaml
Type: Boolean
Parameter Sets: GenericUI
Aliases:

Required: True
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -UiConfigInstructionStep
\[Parameter(ParameterSetName = 'APIPolling', Mandatory)\]
To construct, see NOTES section for UICONFIGINSTRUCTIONSTEP properties and create a hash table.

```yaml
Type: InstructionSteps[]
Parameter Sets: GenericUI
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UiConfigCustomImage
\[Parameter(ParameterSetName = 'APIPolling')\]

```yaml
Type: String
Parameter Sets: GenericUI
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AvailabilityStatus
\[Parameter(ParameterSetName = 'APIPolling')\]

```yaml
Type: Int32
Parameter Sets: GenericUI
Aliases:

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -PermissionResourceProvider
\[Parameter(ParameterSetName = 'APIPolling')\]
To construct, see NOTES section for PERMISSIONRESOURCEPROVIDER properties and create a hash table.

```yaml
Type: PermissionsResourceProviderItem[]
Parameter Sets: GenericUI
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PermissionCustom
\[Parameter(ParameterSetName = 'APIPolling')\]
To construct, see NOTES section for PERMISSIONCUSTOM properties and create a hash table.

```yaml
Type: PermissionsCustomsItem[]
Parameter Sets: GenericUI
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

### Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Models.Api20210901Preview.DataConnector
## NOTES
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties.
For information on hash tables, run Get-Help about_Hash_Tables.

PERMISSIONCUSTOM \<PermissionsCustomsItem\[\]\>: \[Parameter(ParameterSetName = 'APIPolling')\]
  \[Description \<String\>\]: Customs permissions description
  \[Name \<String\>\]: Customs permissions name

PERMISSIONRESOURCEPROVIDER \<PermissionsResourceProviderItem\[\]\>: \[Parameter(ParameterSetName = 'APIPolling')\]
  \[PermissionsDisplayText \<String\>\]: Permission description text
  \[Provider \<ProviderName?\>\]: Provider name
  \[ProviderDisplayName \<String\>\]: Permission provider display name
  \[RequiredPermissionAction \<Boolean?\>\]: action permission
  \[RequiredPermissionDelete \<Boolean?\>\]: delete permission
  \[RequiredPermissionRead \<Boolean?\>\]: read permission
  \[RequiredPermissionWrite \<Boolean?\>\]: write permission
  \[Scope \<PermissionProviderScope?\>\]: Permission provider scope

UICONFIGCONNECTIVITYCRITERION \<ConnectivityCriteria\[\]\>: \[Parameter(ParameterSetName = 'APIPolling', Mandatory)\]
  \[Type \<ConnectivityType?\>\]: type of connectivity
  \[Value \<String\[\]\>\]: Queries for checking connectivity

UICONFIGDATATYPE \<LastDataReceivedDataType\[\]\>: \[Parameter(ParameterSetName = 'APIPolling', Mandatory)\]
  \[LastDataReceivedQuery \<String\>\]: Query for indicate last data received
  \[Name \<String\>\]: Name of the data type to show in the graph.
can be use with {{graphQueriesTableName}} placeholder

UICONFIGGRAPHQUERY \<GraphQueries\[\]\>: \[Parameter(ParameterSetName = 'APIPolling', Mandatory)\]
  \[BaseQuery \<String\>\]: The base query for the graph
  \[Legend \<String\>\]: The legend for the graph
  \[MetricName \<String\>\]: the metric that the query is checking

UICONFIGINSTRUCTIONSTEP \<InstructionSteps\[\]\>: \[Parameter(ParameterSetName = 'APIPolling', Mandatory)\]
  \[Description \<String\>\]: Instruction step description
  \[Instruction \<IConnectorInstructionModelBase\[\]\>\]: Instruction step details
    Type \<SettingType\>: The kind of the setting
    \[Parameter \<IAny\>\]: The parameters for the setting
  \[Title \<String\>\]: Instruction step title

UICONFIGSAMPLEQUERY \<SampleQueries\[\]\>: \[Parameter(ParameterSetName = 'APIPolling', Mandatory)\]
  \[Description \<String\>\]: The sample query description
  \[Query \<String\>\]: the sample query

## RELATED LINKS

[https://learn.microsoft.com/powershell/module/az.securityinsights/new-azsentineldataconnector](https://learn.microsoft.com/powershell/module/az.securityinsights/new-azsentineldataconnector)

