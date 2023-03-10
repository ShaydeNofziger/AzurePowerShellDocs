---
external help file: Microsoft.Azure.PowerShell.Cmdlets.Network.dll-Help.xml
Module Name: Az.Network
online version: https://learn.microsoft.com/powershell/module/az.network/new-azfirewallpolicy
schema: 2.0.0
---

# New-AzFirewallPolicy

## SYNOPSIS
Creates a new Azure Firewall Policy

## SYNTAX

```
New-AzFirewallPolicy -Name <String> -ResourceGroupName <String> -Location <String> [-ThreatIntelMode <String>]
 [-ThreatIntelWhitelist <PSAzureFirewallPolicyThreatIntelWhitelist>] [-BasePolicy <String>]
 [-DnsSetting <PSAzureFirewallPolicyDnsSettings>] [-SqlSetting <PSAzureFirewallPolicySqlSetting>]
 [-Tag <Hashtable>] [-Force] [-AsJob] [-IntrusionDetection <PSAzureFirewallPolicyIntrusionDetection>]
 [-TransportSecurityName <String>] [-TransportSecurityKeyVaultSecretId <String>] [-SkuTier <String>]
 [-UserAssignedIdentityId <String>] [-Identity <PSManagedServiceIdentity>] [-PrivateRange <String[]>]
 [-ExplicitProxy <PSAzureFirewallPolicyExplicitProxy>] [-Snat <PSAzureFirewallPolicySNAT>]
 [-DefaultProfile <IAzureContextContainer>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
The New-AzFirewallPolicy cmdlet creates an Azure Firewall Policy.

## EXAMPLES

### Example 1: Create an empty policy
```
New-AzFirewallPolicy -Name fp1 -ResourceGroupName TestRg
```

This example creates an azure firewall policy

### Example 2: Create an empty policy with ThreatIntel Mode
```
New-AzFirewallPolicy -Name fp1 -ResourceGroupName TestRg -ThreatIntelMode "Deny"
```

This example creates an azure firewall policy with a threat intel mode

### Example 3: Create an empty policy with ThreatIntel Whitelist
```
$threatIntelWhitelist = New-AzFirewallPolicyThreatIntelWhitelist -IpAddress 23.46.72.91,192.79.236.79 -FQDN microsoft.com
New-AzFirewallPolicy -Name fp1 -ResourceGroupName TestRg -ThreatIntelWhitelist $threatIntelWhitelist
```

This example creates an azure firewall policy with a threat intel whitelist

### Example 4: Create policy with intrusion detection, identity and transport security
```
$bypass = New-AzFirewallPolicyIntrusionDetectionBypassTraffic -Name "bypass-setting" -Protocol "TCP" -DestinationPort "80" -SourceAddress "10.0.0.0" -DestinationAddress "*"
$signatureOverride = New-AzFirewallPolicyIntrusionDetectionSignatureOverride -Id "123456798" -Mode "Deny"
$intrusionDetection = New-AzFirewallPolicyIntrusionDetection -Mode "Alert" -SignatureOverride $signatureOverride -BypassTraffic $bypass
$userAssignedIdentity = '/subscriptions/9e223dbe-3399-4e19-88eb-0975f02ac87f/resourcegroups/TestRg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/user-assign-identity'
New-AzFirewallPolicy -Name fp1 -Location "westus2" -ResourceGroupName TestRg -SkuTier "Premium" -IntrusionDetection $intrusionDetection -TransportSecurityName tsName -TransportSecurityKeyVaultSecretId "https://<keyvaultname>.vault.azure.net/secrets/cacert"  -UserAssignedIdentityId $userAssignedIdentity
```

This example creates an azure firewall policy with a intrusion detection in mode alert, user assigned identity and transport security

### Example 5: Create an empty Firewall Policy with customized private range setup
```
New-AzFirewallPolicy -Name fp1 -ResourceGroupName TestRg -PrivateRange @("99.99.99.0/24", "66.66.0.0/16")
```

This example creates a Firewall that treats "99.99.99.0/24" and "66.66.0.0/16" as private ip ranges and won't snat traffic to those addresses

### Example 6: Create an empty Firewall Policy with Explicit Proxy Settings
```
$exProxy = New-AzFirewallPolicyExplicitProxy -EnableExplicitProxy  -HttpPort 100 -HttpsPort 101 -EnablePacFile  -PacFilePort 130 -PacFile "sampleurlfortesting.blob.core.windowsnet/nothing"
New-AzFirewallPolicy -Name fp1 -ResourceGroupName TestRg -ExplicitProxy $exProxy

BasePolicy	                : null	
		DnsSettings  	            : null	
		Etag	                    : null	
		ExplicitProxy	
			EnableExplicitProxy	    : true	
			EnablePacFile	        : true	
			HttpPort	            : 100	
			HttpsPort	            : 101	
			PacFile                 : "sampleurlfortesting.blob.core.windowsnet/nothing"
			PacFilePort	            : 130	
		Id	                        : null	
		Identity	                : null	
		IntrusionDetection	        : null	
		Location	                : "westus2"	
		Name	                    : "fp1"	
		PrivateRange	            : null
		PrivateRangeText	        : "[]"
		ProvisioningState	        : null	
		ResourceGroupName	        : "TestRg"	
		ResourceGuid	            : null	
		RuleCollectionGroups	    : null	
		Sku	
			Tier	                : "Standard"	
		Snat	
			AutoLearnPrivateRanges	: null	
			PrivateRanges	        : null	
		SqlSetting	                : null	
		Tag	                        : null	
		TagsTable	                : null	
		ThreatIntelMode	            : "Alert"	
		ThreatIntelWhitelist	    : null	
		TransportSecurity	        : null	
		Type	                    : null
```

This example creates a firewall policy with explicit proxy settings

## PARAMETERS

### -AsJob
Run cmdlet in the background

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

### -BasePolicy
The base policy to inherit from

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
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

### -DefaultProfile
The credentials, account, tenant, and subscription used for communication with Azure.

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

### -DnsSetting
The DNS Setting

```yaml
Type: PSAzureFirewallPolicyDnsSettings
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ExplicitProxy
The Explicit Proxy Settings

```yaml
Type: PSAzureFirewallPolicyExplicitProxy
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Force
Do not ask for confirmation if you want to overwrite a resource

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

### -Identity
Firewall Policy Identity to be assigned to Firewall Policy.

```yaml
Type: PSManagedServiceIdentity
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -IntrusionDetection
The Intrusion Detection Setting

```yaml
Type: PSAzureFirewallPolicyIntrusionDetection
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Location
location.

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

### -Name
The resource name.

```yaml
Type: String
Parameter Sets: (All)
Aliases: ResourceName

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -PrivateRange
The private IP ranges to which traffic won't be SNAT'ed

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

### -ResourceGroupName
The resource group name.

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

### -SkuTier
Firewall policy sku tier

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: Standard, Premium, Basic

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Snat
The private IP addresses/IP ranges to which traffic will not be SNAT in Firewall Policy.

```yaml
Type: PSAzureFirewallPolicySNAT
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SqlSetting
The SQL related setting

```yaml
Type: PSAzureFirewallPolicySqlSetting
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Tag
A hashtable which represents resource tags.

```yaml
Type: Hashtable
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ThreatIntelMode
The operation mode for Threat Intelligence.

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: Alert, Deny, Off

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ThreatIntelWhitelist
The whitelist for Threat Intelligence

```yaml
Type: PSAzureFirewallPolicyThreatIntelWhitelist
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TransportSecurityKeyVaultSecretId
Secret Id of (base-64 encoded unencrypted pfx) 'Secret' or 'Certificate' object stored in KeyVault

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

### -TransportSecurityName
Transport security name

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

### -UserAssignedIdentityId
ResourceId of the user assigned identity to be assigned to Firewall Policy.

```yaml
Type: String
Parameter Sets: (All)
Aliases: UserAssignedIdentity

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
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### System.String
### System.Collections.Hashtable
## OUTPUTS

### Microsoft.Azure.Commands.Network.Models.PSAzureFirewall
## NOTES

## RELATED LINKS

[New-AzFirewallPolicyExplicitProxy]()

[New-AzFirewallPolicySnat]()

