---
external help file: Az.SecurityInsights-help.xml
Module Name: Az.SecurityInsights
online version: https://learn.microsoft.com/powershell/module/az.securityinsights/update-azsentineldataconnector
schema: 2.0.0
---

# Update-AzSentinelDataConnector

## SYNOPSIS
Updates the data connector.

## SYNTAX

### UpdateAADAATP (Default)
```
Update-AzSentinelDataConnector -ResourceGroupName <String> -WorkspaceName <String> -Id <String>
 [-SubscriptionId <String>] [-TenantId <String>] [-Alerts <String>] [-DefaultProfile <PSObject>]
 [-AzureADorAATP] [-AsJob] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-NoWait] [-Proxy <Uri>] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### UpdateAmazonWebServicesCloudTrail
```
Update-AzSentinelDataConnector -ResourceGroupName <String> -WorkspaceName <String> -Id <String>
 [-SubscriptionId <String>] [-AWSRoleArn <String>] [-Log <String>] [-DefaultProfile <PSObject>] [-AsJob]
 [-Break] [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-NoWait]
 [-Proxy <Uri>] [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [-AWSCloudTrail] [-WhatIf]
 [-Confirm] [<CommonParameters>]
```

### UpdateAmazonWebServicesS3
```
Update-AzSentinelDataConnector -ResourceGroupName <String> -WorkspaceName <String> -Id <String>
 [-SubscriptionId <String>] [-AWSRoleArn <String>] [-Log <String>] [-SQSURL <String[]>]
 [-DetinationTable <String>] [-DefaultProfile <PSObject>] [-AsJob] [-Break]
 [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-NoWait] [-Proxy <Uri>]
 [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [-AWSS3] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

### UpdateAzureSecurityCenter
```
Update-AzSentinelDataConnector -ResourceGroupName <String> -WorkspaceName <String> -Id <String>
 [-SubscriptionId <String>] [-Alerts <String>] [-ASCSubscriptionId <String>] [-DefaultProfile <PSObject>]
 [-AsJob] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-NoWait]
 [-Proxy <Uri>] [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [-AzureSecurityCenter]
 [-WhatIf] [-Confirm] [<CommonParameters>]
```

### UpdateDynamics365
```
Update-AzSentinelDataConnector -ResourceGroupName <String> -WorkspaceName <String> -Id <String>
 [-SubscriptionId <String>] [-TenantId <String>] [-CommonDataServiceActivity <String>]
 [-DefaultProfile <PSObject>] [-AsJob] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-NoWait] [-Proxy <Uri>] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] [-Dynamics365] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### UpdateMicrosoftCloudAppSecurity
```
Update-AzSentinelDataConnector -ResourceGroupName <String> -WorkspaceName <String> -Id <String>
 [-SubscriptionId <String>] [-TenantId <String>] [-Alerts <String>] [-DiscoveryLog <String>]
 [-DefaultProfile <PSObject>] [-AsJob] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-NoWait] [-Proxy <Uri>] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] [-CloudAppSecurity] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### UpdateMicrosoftDefenderAdvancedThreatProtection
```
Update-AzSentinelDataConnector -ResourceGroupName <String> -WorkspaceName <String> -Id <String>
 [-SubscriptionId <String>] [-TenantId <String>] [-Alerts <String>] [-DefaultProfile <PSObject>] [-AsJob]
 [-Break] [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-NoWait]
 [-Proxy <Uri>] [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [-DefenderATP] [-WhatIf]
 [-Confirm] [<CommonParameters>]
```

### UpdateMicrosoftThreatIntelligence
```
Update-AzSentinelDataConnector -ResourceGroupName <String> -WorkspaceName <String> -Id <String>
 [-SubscriptionId <String>] [-TenantId <String>] [-BingSafetyPhishinURL <String>]
 [-BingSafetyPhishingUrlLookbackPeriod <String>] [-MicrosoftEmergingThreatFeed <String>]
 [-MicrosoftEmergingThreatFeedLookbackPeriod <String>] [-DefaultProfile <PSObject>] [-AsJob] [-Break]
 [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-NoWait] [-Proxy <Uri>]
 [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [-MicrosoftTI] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

### UpdateMicrosoftThreatProtection
```
Update-AzSentinelDataConnector -ResourceGroupName <String> -WorkspaceName <String> -Id <String>
 [-SubscriptionId <String>] [-TenantId <String>] [-Incident <String>] [-DefaultProfile <PSObject>] [-AsJob]
 [-Break] [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-NoWait]
 [-Proxy <Uri>] [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [-MicrosoftThreatProtection]
 [-WhatIf] [-Confirm] [<CommonParameters>]
```

### UpdateOffice365
```
Update-AzSentinelDataConnector -ResourceGroupName <String> -WorkspaceName <String> -Id <String>
 [-SubscriptionId <String>] [-TenantId <String>] [-Exchange <String>] [-SharePoint <String>] [-Teams <String>]
 [-DefaultProfile <PSObject>] [-AsJob] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-NoWait] [-Proxy <Uri>] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] [-Office365] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### UpdateOfficeATP
```
Update-AzSentinelDataConnector -ResourceGroupName <String> -WorkspaceName <String> -Id <String>
 [-SubscriptionId <String>] [-TenantId <String>] [-Alerts <String>] [-DefaultProfile <PSObject>] [-AsJob]
 [-Break] [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-NoWait]
 [-Proxy <Uri>] [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [-OfficeATP] [-WhatIf]
 [-Confirm] [<CommonParameters>]
```

### UpdateOfficeIRM
```
Update-AzSentinelDataConnector -ResourceGroupName <String> -WorkspaceName <String> -Id <String>
 [-SubscriptionId <String>] [-TenantId <String>] [-Alerts <String>] [-DefaultProfile <PSObject>] [-AsJob]
 [-Break] [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-NoWait]
 [-Proxy <Uri>] [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [-OfficeIRM] [-WhatIf]
 [-Confirm] [<CommonParameters>]
```

### UpdateThreatIntelligence
```
Update-AzSentinelDataConnector -ResourceGroupName <String> -WorkspaceName <String> -Id <String>
 [-SubscriptionId <String>] [-TenantId <String>] [-Indicator <String>] [-DefaultProfile <PSObject>] [-AsJob]
 [-Break] [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-NoWait]
 [-Proxy <Uri>] [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [-ThreatIntelligence] [-WhatIf]
 [-Confirm] [<CommonParameters>]
```

### UpdateThreatIntelligenceTaxii
```
Update-AzSentinelDataConnector -ResourceGroupName <String> -WorkspaceName <String> -Id <String>
 [-SubscriptionId <String>] [-TenantId <String>] -APIRootURL <String> [-WorkspaceId <String>]
 [-FriendlyName <String>] [-CollectionId <String>] [-UserName <String>] [-Password <String>]
 [-TaxiiLookbackPeriod <String>] [-PollingFrequency <PollingFrequency>] [-DefaultProfile <PSObject>] [-AsJob]
 [-Break] [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-NoWait]
 [-Proxy <Uri>] [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [-ThreatIntelligenceTaxii]
 [-WhatIf] [-Confirm] [<CommonParameters>]
```

### UpdateViaIdentityAmazonWebServicesCloudTrail
```
Update-AzSentinelDataConnector -InputObject <ISecurityInsightsIdentity> [-TenantId <String>]
 [-AWSRoleArn <String>] [-Log <String>] [-DefaultProfile <PSObject>] [-AsJob] [-Break]
 [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-NoWait] [-Proxy <Uri>]
 [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [-AWSCloudTrail] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

### UpdateViaIdentityAmazonWebServicesS3
```
Update-AzSentinelDataConnector -InputObject <ISecurityInsightsIdentity> [-TenantId <String>]
 [-AWSRoleArn <String>] [-Log <String>] [-SQSURL <String[]>] [-DetinationTable <String>]
 [-DefaultProfile <PSObject>] [-AsJob] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-NoWait] [-Proxy <Uri>] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] [-AWSS3] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### UpdateViaIdentityAADAATP
```
Update-AzSentinelDataConnector -InputObject <ISecurityInsightsIdentity> [-TenantId <String>] [-Alerts <String>]
 [-DefaultProfile <PSObject>] [-AzureADorAATP] [-AsJob] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-NoWait] [-Proxy <Uri>] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### UpdateViaIdentityAzureSecurityCenter
```
Update-AzSentinelDataConnector -InputObject <ISecurityInsightsIdentity> [-TenantId <String>] [-Alerts <String>]
 [-ASCSubscriptionId <String>] [-DefaultProfile <PSObject>] [-AsJob] [-Break]
 [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-NoWait] [-Proxy <Uri>]
 [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [-AzureSecurityCenter] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

### UpdateViaIdentityDynamics365
```
Update-AzSentinelDataConnector -InputObject <ISecurityInsightsIdentity> [-TenantId <String>]
 [-CommonDataServiceActivity <String>] [-DefaultProfile <PSObject>] [-AsJob] [-Break]
 [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-NoWait] [-Proxy <Uri>]
 [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [-Dynamics365] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

### UpdateViaIdentityMicrosoftCloudAppSecurity
```
Update-AzSentinelDataConnector -InputObject <ISecurityInsightsIdentity> [-TenantId <String>] [-Alerts <String>]
 [-DiscoveryLog <String>] [-DefaultProfile <PSObject>] [-AsJob] [-Break]
 [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-NoWait] [-Proxy <Uri>]
 [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [-CloudAppSecurity] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

### UpdateViaIdentityMicrosoftDefenderAdvancedThreatProtection
```
Update-AzSentinelDataConnector -InputObject <ISecurityInsightsIdentity> [-TenantId <String>] [-Alerts <String>]
 [-DefaultProfile <PSObject>] [-AsJob] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-NoWait] [-Proxy <Uri>] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] [-DefenderATP] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### UpdateViaIdentityMicrosoftThreatIntelligence
```
Update-AzSentinelDataConnector -InputObject <ISecurityInsightsIdentity> [-TenantId <String>]
 [-BingSafetyPhishinURL <String>] [-BingSafetyPhishingUrlLookbackPeriod <String>]
 [-MicrosoftEmergingThreatFeed <String>] [-MicrosoftEmergingThreatFeedLookbackPeriod <String>]
 [-DefaultProfile <PSObject>] [-AsJob] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-NoWait] [-Proxy <Uri>] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] [-MicrosoftTI] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### UpdateViaIdentityMicrosoftThreatProtection
```
Update-AzSentinelDataConnector -InputObject <ISecurityInsightsIdentity> [-TenantId <String>]
 [-Incident <String>] [-DefaultProfile <PSObject>] [-AsJob] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-NoWait] [-Proxy <Uri>] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] [-MicrosoftThreatProtection] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### UpdateViaIdentityOffice365
```
Update-AzSentinelDataConnector -InputObject <ISecurityInsightsIdentity> [-TenantId <String>]
 [-Exchange <String>] [-SharePoint <String>] [-Teams <String>] [-DefaultProfile <PSObject>] [-AsJob] [-Break]
 [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-NoWait] [-Proxy <Uri>]
 [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [-Office365] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

### UpdateViaIdentityOfficeATP
```
Update-AzSentinelDataConnector -InputObject <ISecurityInsightsIdentity> [-TenantId <String>] [-Alerts <String>]
 [-DefaultProfile <PSObject>] [-AsJob] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-NoWait] [-Proxy <Uri>] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] [-OfficeATP] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### UpdateViaIdentityOfficeIRM
```
Update-AzSentinelDataConnector -InputObject <ISecurityInsightsIdentity> [-TenantId <String>] [-Alerts <String>]
 [-DefaultProfile <PSObject>] [-AsJob] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-NoWait] [-Proxy <Uri>] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] [-OfficeIRM] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### UpdateViaIdentityThreatIntelligence
```
Update-AzSentinelDataConnector -InputObject <ISecurityInsightsIdentity> [-TenantId <String>]
 [-Indicator <String>] [-DefaultProfile <PSObject>] [-AsJob] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-NoWait] [-Proxy <Uri>] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] [-ThreatIntelligence] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### UpdateViaIdentityThreatIntelligenceTaxii
```
Update-AzSentinelDataConnector -InputObject <ISecurityInsightsIdentity> [-TenantId <String>]
 [-WorkspaceId <String>] [-FriendlyName <String>] [-CollectionId <String>] [-UserName <String>]
 [-Password <String>] [-TaxiiLookbackPeriod <String>] [-PollingFrequency <PollingFrequency>]
 [-DefaultProfile <PSObject>] [-AsJob] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-NoWait] [-Proxy <Uri>] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] [-ThreatIntelligenceTaxii] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### UpdateGenericUI
```
Update-AzSentinelDataConnector [-UiConfigTitle <String>] [-UiConfigPublisher <String>]
 [-UiConfigDescriptionMarkdown <String>] [-UiConfigCustomImage <String>]
 [-UiConfigGraphQueriesTableName <String>] [-UiConfigGraphQuery <GraphQueries[]>]
 [-UiConfigSampleQuery <SampleQueries[]>] [-UiConfigDataType <LastDataReceivedDataType[]>]
 [-UiConfigConnectivityCriterion <ConnectivityCriteria[]>] [-AvailabilityIsPreview <Boolean>]
 [-AvailabilityStatus <Int32>] [-PermissionResourceProvider <PermissionsResourceProviderItem[]>]
 [-PermissionCustom <PermissionsCustomsItem[]>] [-UiConfigInstructionStep <InstructionSteps[]>]
 [-DefaultProfile <PSObject>] [-AsJob] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-NoWait] [-Proxy <Uri>] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### UpdateViaIdentityGenericUI
```
Update-AzSentinelDataConnector [-UiConfigTitle <String>] [-UiConfigPublisher <String>]
 [-UiConfigDescriptionMarkdown <String>] [-UiConfigCustomImage <String>]
 [-UiConfigGraphQueriesTableName <String>] [-UiConfigGraphQuery <GraphQueries[]>]
 [-UiConfigSampleQuery <SampleQueries[]>] [-UiConfigDataType <LastDataReceivedDataType[]>]
 [-UiConfigConnectivityCriterion <ConnectivityCriteria[]>] [-AvailabilityIsPreview <Boolean>]
 [-AvailabilityStatus <Int32>] [-PermissionResourceProvider <PermissionsResourceProviderItem[]>]
 [-PermissionCustom <PermissionsCustomsItem[]>] [-UiConfigInstructionStep <InstructionSteps[]>]
 [-DefaultProfile <PSObject>] [-AsJob] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-NoWait] [-Proxy <Uri>] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
Updates the data connector.

## EXAMPLES

### EXAMPLE 1
```
Update-AzSentinelDataConnector -ResourceGroupName "myResourceGroupName" -workspaceName "myWorkspaceName" -Id  3bd6c555-1412-4103-9b9d-2b0b40cda6b6 -SharePoint "Enabled"
```

## PARAMETERS

### -ResourceGroupName
\[Parameter(ParameterSetName = 'UpdateGenericUI', Mandatory)\]
 The Resource Group Name.

```yaml
Type: String
Parameter Sets: UpdateAADAATP, UpdateAmazonWebServicesCloudTrail, UpdateAmazonWebServicesS3, UpdateAzureSecurityCenter, UpdateDynamics365, UpdateMicrosoftCloudAppSecurity, UpdateMicrosoftDefenderAdvancedThreatProtection, UpdateMicrosoftThreatIntelligence, UpdateMicrosoftThreatProtection, UpdateOffice365, UpdateOfficeATP, UpdateOfficeIRM, UpdateThreatIntelligence, UpdateThreatIntelligenceTaxii
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -WorkspaceName
\[Parameter(ParameterSetName = 'UpdateGenericUI', Mandatory)\]
 The name of the workspace.

```yaml
Type: String
Parameter Sets: UpdateAADAATP, UpdateAmazonWebServicesCloudTrail, UpdateAmazonWebServicesS3, UpdateAzureSecurityCenter, UpdateDynamics365, UpdateMicrosoftCloudAppSecurity, UpdateMicrosoftDefenderAdvancedThreatProtection, UpdateMicrosoftThreatIntelligence, UpdateMicrosoftThreatProtection, UpdateOffice365, UpdateOfficeATP, UpdateOfficeIRM, UpdateThreatIntelligence, UpdateThreatIntelligenceTaxii
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Id
\[Parameter(ParameterSetName = 'UpdateGenericUI', Mandatory)\]
 The Id of the Data Connector.

```yaml
Type: String
Parameter Sets: UpdateAADAATP, UpdateAmazonWebServicesCloudTrail, UpdateAmazonWebServicesS3, UpdateAzureSecurityCenter, UpdateDynamics365, UpdateMicrosoftCloudAppSecurity, UpdateMicrosoftDefenderAdvancedThreatProtection, UpdateMicrosoftThreatIntelligence, UpdateMicrosoftThreatProtection, UpdateOffice365, UpdateOfficeATP, UpdateOfficeIRM, UpdateThreatIntelligence, UpdateThreatIntelligenceTaxii
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SubscriptionId
\[Parameter(ParameterSetName = 'UpdateGenericUI')\]
 Gets subscription credentials which uniquely identify Microsoft Azure subscription.
 The subscription ID forms part of the URI for every service call.

```yaml
Type: String
Parameter Sets: UpdateAADAATP, UpdateAmazonWebServicesCloudTrail, UpdateAmazonWebServicesS3, UpdateAzureSecurityCenter, UpdateDynamics365, UpdateMicrosoftCloudAppSecurity, UpdateMicrosoftDefenderAdvancedThreatProtection, UpdateMicrosoftThreatIntelligence, UpdateMicrosoftThreatProtection, UpdateOffice365, UpdateOfficeATP, UpdateOfficeIRM, UpdateThreatIntelligence, UpdateThreatIntelligenceTaxii
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -InputObject
\[Parameter(ParameterSetName = 'UpdateViaIdentityGenericUI', Mandatory, ValueFromPipeline)\]
 Identity Parameter

To construct, see NOTES section for INPUTOBJECT properties and create a hash table.

```yaml
Type: ISecurityInsightsIdentity
Parameter Sets: UpdateViaIdentityAmazonWebServicesCloudTrail, UpdateViaIdentityAmazonWebServicesS3, UpdateViaIdentityAADAATP, UpdateViaIdentityAzureSecurityCenter, UpdateViaIdentityDynamics365, UpdateViaIdentityMicrosoftCloudAppSecurity, UpdateViaIdentityMicrosoftDefenderAdvancedThreatProtection, UpdateViaIdentityMicrosoftThreatIntelligence, UpdateViaIdentityMicrosoftThreatProtection, UpdateViaIdentityOffice365, UpdateViaIdentityOfficeATP, UpdateViaIdentityOfficeIRM, UpdateViaIdentityThreatIntelligence, UpdateViaIdentityThreatIntelligenceTaxii
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -TenantId
\[Parameter(ParameterSetName = 'UpdateViaIdentityGenericUI')\]
 The TenantId.

```yaml
Type: String
Parameter Sets: UpdateAADAATP, UpdateDynamics365, UpdateMicrosoftCloudAppSecurity, UpdateMicrosoftDefenderAdvancedThreatProtection, UpdateMicrosoftThreatIntelligence, UpdateMicrosoftThreatProtection, UpdateOffice365, UpdateOfficeATP, UpdateOfficeIRM, UpdateThreatIntelligence, UpdateThreatIntelligenceTaxii, UpdateViaIdentityAmazonWebServicesCloudTrail, UpdateViaIdentityAmazonWebServicesS3, UpdateViaIdentityAADAATP, UpdateViaIdentityAzureSecurityCenter, UpdateViaIdentityDynamics365, UpdateViaIdentityMicrosoftCloudAppSecurity, UpdateViaIdentityMicrosoftDefenderAdvancedThreatProtection, UpdateViaIdentityMicrosoftThreatIntelligence, UpdateViaIdentityMicrosoftThreatProtection, UpdateViaIdentityOffice365, UpdateViaIdentityOfficeATP, UpdateViaIdentityOfficeIRM, UpdateViaIdentityThreatIntelligence, UpdateViaIdentityThreatIntelligenceTaxii
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
Parameter Sets: UpdateAADAATP, UpdateAzureSecurityCenter, UpdateMicrosoftCloudAppSecurity, UpdateMicrosoftDefenderAdvancedThreatProtection, UpdateOfficeATP, UpdateOfficeIRM, UpdateViaIdentityAADAATP, UpdateViaIdentityAzureSecurityCenter, UpdateViaIdentityMicrosoftCloudAppSecurity, UpdateViaIdentityMicrosoftDefenderAdvancedThreatProtection, UpdateViaIdentityOfficeATP, UpdateViaIdentityOfficeIRM
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -APIRootURL
{{ Fill APIRootURL Description }}

```yaml
Type: String
Parameter Sets: UpdateThreatIntelligenceTaxii
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -WorkspaceId
{{ Fill WorkspaceId Description }}

```yaml
Type: String
Parameter Sets: UpdateThreatIntelligenceTaxii, UpdateViaIdentityThreatIntelligenceTaxii
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -FriendlyName
{{ Fill FriendlyName Description }}

```yaml
Type: String
Parameter Sets: UpdateThreatIntelligenceTaxii, UpdateViaIdentityThreatIntelligenceTaxii
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -CollectionId
{{ Fill CollectionId Description }}

```yaml
Type: String
Parameter Sets: UpdateThreatIntelligenceTaxii, UpdateViaIdentityThreatIntelligenceTaxii
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UserName
{{ Fill UserName Description }}

```yaml
Type: String
Parameter Sets: UpdateThreatIntelligenceTaxii, UpdateViaIdentityThreatIntelligenceTaxii
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
Parameter Sets: UpdateThreatIntelligenceTaxii, UpdateViaIdentityThreatIntelligenceTaxii
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
Parameter Sets: UpdateThreatIntelligenceTaxii, UpdateViaIdentityThreatIntelligenceTaxii
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PollingFrequency
{{ Fill PollingFrequency Description }}

```yaml
Type: PollingFrequency
Parameter Sets: UpdateThreatIntelligenceTaxii, UpdateViaIdentityThreatIntelligenceTaxii
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
Parameter Sets: UpdateThreatIntelligence, UpdateViaIdentityThreatIntelligence
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
Parameter Sets: UpdateOffice365, UpdateViaIdentityOffice365
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
Parameter Sets: UpdateOffice365, UpdateViaIdentityOffice365
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
Parameter Sets: UpdateOffice365, UpdateViaIdentityOffice365
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
Parameter Sets: UpdateMicrosoftThreatProtection, UpdateViaIdentityMicrosoftThreatProtection
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -BingSafetyPhishinURL
{{ Fill BingSafetyPhishinURL Description }}

```yaml
Type: String
Parameter Sets: UpdateMicrosoftThreatIntelligence, UpdateViaIdentityMicrosoftThreatIntelligence
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
Parameter Sets: UpdateMicrosoftThreatIntelligence, UpdateViaIdentityMicrosoftThreatIntelligence
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
Parameter Sets: UpdateMicrosoftThreatIntelligence, UpdateViaIdentityMicrosoftThreatIntelligence
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
Parameter Sets: UpdateMicrosoftThreatIntelligence, UpdateViaIdentityMicrosoftThreatIntelligence
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
Parameter Sets: UpdateMicrosoftCloudAppSecurity, UpdateViaIdentityMicrosoftCloudAppSecurity
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
Parameter Sets: UpdateDynamics365, UpdateViaIdentityDynamics365
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
Parameter Sets: UpdateAzureSecurityCenter, UpdateViaIdentityAzureSecurityCenter
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AWSRoleArn
{{ Fill AWSRoleArn Description }}

```yaml
Type: String
Parameter Sets: UpdateAmazonWebServicesCloudTrail, UpdateAmazonWebServicesS3, UpdateViaIdentityAmazonWebServicesCloudTrail, UpdateViaIdentityAmazonWebServicesS3
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Log
{{ Fill Log Description }}

```yaml
Type: String
Parameter Sets: UpdateAmazonWebServicesCloudTrail, UpdateAmazonWebServicesS3, UpdateViaIdentityAmazonWebServicesCloudTrail, UpdateViaIdentityAmazonWebServicesS3
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SQSURL
{{ Fill SQSURL Description }}

```yaml
Type: String[]
Parameter Sets: UpdateAmazonWebServicesS3, UpdateViaIdentityAmazonWebServicesS3
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DetinationTable
{{ Fill DetinationTable Description }}

```yaml
Type: String
Parameter Sets: UpdateAmazonWebServicesS3, UpdateViaIdentityAmazonWebServicesS3
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UiConfigTitle
{{ Fill UiConfigTitle Description }}

```yaml
Type: String
Parameter Sets: UpdateGenericUI, UpdateViaIdentityGenericUI
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UiConfigPublisher
{{ Fill UiConfigPublisher Description }}

```yaml
Type: String
Parameter Sets: UpdateGenericUI, UpdateViaIdentityGenericUI
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UiConfigDescriptionMarkdown
{{ Fill UiConfigDescriptionMarkdown Description }}

```yaml
Type: String
Parameter Sets: UpdateGenericUI, UpdateViaIdentityGenericUI
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UiConfigCustomImage
{{ Fill UiConfigCustomImage Description }}

```yaml
Type: String
Parameter Sets: UpdateGenericUI, UpdateViaIdentityGenericUI
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UiConfigGraphQueriesTableName
{{ Fill UiConfigGraphQueriesTableName Description }}

```yaml
Type: String
Parameter Sets: UpdateGenericUI, UpdateViaIdentityGenericUI
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UiConfigGraphQuery
To construct, see NOTES section for UICONFIGGRAPHQUERY properties and create a hash table.

```yaml
Type: GraphQueries[]
Parameter Sets: UpdateGenericUI, UpdateViaIdentityGenericUI
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UiConfigSampleQuery
To construct, see NOTES section for UICONFIGSAMPLEQUERY properties and create a hash table.

```yaml
Type: SampleQueries[]
Parameter Sets: UpdateGenericUI, UpdateViaIdentityGenericUI
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UiConfigDataType
To construct, see NOTES section for UICONFIGDATATYPE properties and create a hash table.

```yaml
Type: LastDataReceivedDataType[]
Parameter Sets: UpdateGenericUI, UpdateViaIdentityGenericUI
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UiConfigConnectivityCriterion
To construct, see NOTES section for UICONFIGCONNECTIVITYCRITERION properties and create a hash table.

```yaml
Type: ConnectivityCriteria[]
Parameter Sets: UpdateGenericUI, UpdateViaIdentityGenericUI
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AvailabilityIsPreview
{{ Fill AvailabilityIsPreview Description }}

```yaml
Type: Boolean
Parameter Sets: UpdateGenericUI, UpdateViaIdentityGenericUI
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -AvailabilityStatus
{{ Fill AvailabilityStatus Description }}

```yaml
Type: Int32
Parameter Sets: UpdateGenericUI, UpdateViaIdentityGenericUI
Aliases:

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -PermissionResourceProvider
To construct, see NOTES section for PERMISSIONRESOURCEPROVIDER properties and create a hash table.

```yaml
Type: PermissionsResourceProviderItem[]
Parameter Sets: UpdateGenericUI, UpdateViaIdentityGenericUI
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PermissionCustom
To construct, see NOTES section for PERMISSIONCUSTOM properties and create a hash table.

```yaml
Type: PermissionsCustomsItem[]
Parameter Sets: UpdateGenericUI, UpdateViaIdentityGenericUI
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UiConfigInstructionStep
To construct, see NOTES section for UICONFIGINSTRUCTIONSTEP properties and create a hash table.

```yaml
Type: InstructionSteps[]
Parameter Sets: UpdateGenericUI, UpdateViaIdentityGenericUI
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

### -AzureADorAATP
{{ Fill AzureADorAATP Description }}

```yaml
Type: SwitchParameter
Parameter Sets: UpdateAADAATP, UpdateViaIdentityAADAATP
Aliases:

Required: True
Position: Named
Default value: False
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

### -ThreatIntelligenceTaxii
{{ Fill ThreatIntelligenceTaxii Description }}

```yaml
Type: SwitchParameter
Parameter Sets: UpdateThreatIntelligenceTaxii, UpdateViaIdentityThreatIntelligenceTaxii
Aliases:

Required: True
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -ThreatIntelligence
{{ Fill ThreatIntelligence Description }}

```yaml
Type: SwitchParameter
Parameter Sets: UpdateThreatIntelligence, UpdateViaIdentityThreatIntelligence
Aliases:

Required: True
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -OfficeIRM
{{ Fill OfficeIRM Description }}

```yaml
Type: SwitchParameter
Parameter Sets: UpdateOfficeIRM, UpdateViaIdentityOfficeIRM
Aliases:

Required: True
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -OfficeATP
{{ Fill OfficeATP Description }}

```yaml
Type: SwitchParameter
Parameter Sets: UpdateOfficeATP, UpdateViaIdentityOfficeATP
Aliases:

Required: True
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Office365
{{ Fill Office365 Description }}

```yaml
Type: SwitchParameter
Parameter Sets: UpdateOffice365, UpdateViaIdentityOffice365
Aliases:

Required: True
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -MicrosoftThreatProtection
{{ Fill MicrosoftThreatProtection Description }}

```yaml
Type: SwitchParameter
Parameter Sets: UpdateMicrosoftThreatProtection, UpdateViaIdentityMicrosoftThreatProtection
Aliases:

Required: True
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -MicrosoftTI
{{ Fill MicrosoftTI Description }}

```yaml
Type: SwitchParameter
Parameter Sets: UpdateMicrosoftThreatIntelligence, UpdateViaIdentityMicrosoftThreatIntelligence
Aliases:

Required: True
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -DefenderATP
{{ Fill DefenderATP Description }}

```yaml
Type: SwitchParameter
Parameter Sets: UpdateMicrosoftDefenderAdvancedThreatProtection, UpdateViaIdentityMicrosoftDefenderAdvancedThreatProtection
Aliases:

Required: True
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -CloudAppSecurity
\[Parameter(ParameterSetName = 'UpdateGenericUI', Mandatory)\]
\[Parameter(ParameterSetName = 'UpdateViaIdentityGenericUI', Mandatory)\]
\[Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Runtime')\]
\[System.Management.Automation.SwitchParameter\]
${GenericUI},

```yaml
Type: SwitchParameter
Parameter Sets: UpdateMicrosoftCloudAppSecurity, UpdateViaIdentityMicrosoftCloudAppSecurity
Aliases:

Required: True
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Dynamics365
{{ Fill Dynamics365 Description }}

```yaml
Type: SwitchParameter
Parameter Sets: UpdateDynamics365, UpdateViaIdentityDynamics365
Aliases:

Required: True
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -AzureSecurityCenter
{{ Fill AzureSecurityCenter Description }}

```yaml
Type: SwitchParameter
Parameter Sets: UpdateAzureSecurityCenter, UpdateViaIdentityAzureSecurityCenter
Aliases:

Required: True
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -AWSS3
{{ Fill AWSS3 Description }}

```yaml
Type: SwitchParameter
Parameter Sets: UpdateAmazonWebServicesS3, UpdateViaIdentityAmazonWebServicesS3
Aliases:

Required: True
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -AWSCloudTrail
{{ Fill AWSCloudTrail Description }}

```yaml
Type: SwitchParameter
Parameter Sets: UpdateAmazonWebServicesCloudTrail, UpdateViaIdentityAmazonWebServicesCloudTrail
Aliases:

Required: True
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

### Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Models.ISecurityInsightsIdentity
## OUTPUTS

### Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Models.Api20210901Preview.DataConnector
## NOTES
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties.
For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT \<ISecurityInsightsIdentity\>: \[Parameter(ParameterSetName = 'UpdateViaIdentityGenericUI', Mandatory, ValueFromPipeline)\]  Identity Parameter 
  \[ActionId \<String\>\]: Action ID
  \[AlertRuleTemplateId \<String\>\]: Alert rule template ID
  \[AutomationRuleId \<String\>\]: Automation rule ID
  \[BookmarkId \<String\>\]: Bookmark ID
  \[ConsentId \<String\>\]: consent ID
  \[DataConnectorId \<String\>\]: Connector ID
  \[EntityId \<String\>\]: entity ID
  \[EntityQueryId \<String\>\]: entity query ID
  \[EntityQueryTemplateId \<String\>\]: entity query template ID
  \[Id \<String\>\]: Resource identity path
  \[IncidentCommentId \<String\>\]: Incident comment ID
  \[IncidentId \<String\>\]: Incident ID
  \[MetadataName \<String\>\]: The Metadata name.
  \[Name \<String\>\]: Threat intelligence indicator name field.
  \[RelationName \<String\>\]: Relation Name
  \[ResourceGroupName \<String\>\]: The name of the resource group.
The name is case insensitive.
  \[RuleId \<String\>\]: Alert rule ID
  \[SentinelOnboardingStateName \<String\>\]: The Sentinel onboarding state name.
Supports - default
  \[SettingsName \<String\>\]: The setting name.
Supports - Anomalies, EyesOn, EntityAnalytics, Ueba
  \[SourceControlId \<String\>\]: Source control Id
  \[SubscriptionId \<String\>\]: The ID of the target subscription.
  \[WorkspaceName \<String\>\]: The name of the workspace.

PERMISSIONCUSTOM \<PermissionsCustomsItem\[\]\>: 
  \[Description \<String\>\]: Customs permissions description
  \[Name \<String\>\]: Customs permissions name

PERMISSIONRESOURCEPROVIDER \<PermissionsResourceProviderItem\[\]\>: 
  \[PermissionsDisplayText \<String\>\]: Permission description text
  \[Provider \<ProviderName?\>\]: Provider name
  \[ProviderDisplayName \<String\>\]: Permission provider display name
  \[RequiredPermissionAction \<Boolean?\>\]: action permission
  \[RequiredPermissionDelete \<Boolean?\>\]: delete permission
  \[RequiredPermissionRead \<Boolean?\>\]: read permission
  \[RequiredPermissionWrite \<Boolean?\>\]: write permission
  \[Scope \<PermissionProviderScope?\>\]: Permission provider scope

UICONFIGCONNECTIVITYCRITERION \<ConnectivityCriteria\[\]\>: 
  \[Type \<ConnectivityType?\>\]: type of connectivity
  \[Value \<String\[\]\>\]: Queries for checking connectivity

UICONFIGDATATYPE \<LastDataReceivedDataType\[\]\>: 
  \[LastDataReceivedQuery \<String\>\]: Query for indicate last data received
  \[Name \<String\>\]: Name of the data type to show in the graph.
can be use with {{graphQueriesTableName}} placeholder

UICONFIGGRAPHQUERY \<GraphQueries\[\]\>: 
  \[BaseQuery \<String\>\]: The base query for the graph
  \[Legend \<String\>\]: The legend for the graph
  \[MetricName \<String\>\]: the metric that the query is checking

UICONFIGINSTRUCTIONSTEP \<InstructionSteps\[\]\>: 
  \[Description \<String\>\]: Instruction step description
  \[Instruction \<IConnectorInstructionModelBase\[\]\>\]: Instruction step details
    Type \<SettingType\>: The kind of the setting
    \[Parameter \<IAny\>\]: The parameters for the setting
  \[Title \<String\>\]: Instruction step title

UICONFIGSAMPLEQUERY \<SampleQueries\[\]\>: 
  \[Description \<String\>\]: The sample query description
  \[Query \<String\>\]: the sample query

## RELATED LINKS

[https://learn.microsoft.com/powershell/module/az.securityinsights/update-azsentineldataconnector](https://learn.microsoft.com/powershell/module/az.securityinsights/update-azsentineldataconnector)

