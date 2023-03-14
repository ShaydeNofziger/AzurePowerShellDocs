---
external help file: Microsoft.Azure.PowerShell.Cmdlets.Accounts.dll-Help.xml
Module Name: Az.Accounts
online version: https://learn.microsoft.com/powershell/module/az.accounts/connect-azaccount
schema: 2.0.0
---

# Connect-AzAccount

## SYNOPSIS
Connect to Azure with an authenticated account for use with cmdlets from the Az PowerShell modules.

## SYNTAX

### UserWithSubscriptionId (Default)
```
Connect-AzAccount [-Environment <String>] [-Tenant <String>] [-AccountId <String>] [-Subscription <String>]
 [-AuthScope <String>] [-ContextName <String>] [-SkipContextPopulation] [-MaxContextPopulation <Int32>]
 [-UseDeviceAuthentication] [-Force] [-Scope <ContextModificationScope>]
 [-DefaultProfile <IAzureContextContainer>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### ServicePrincipalWithSubscriptionId
```
Connect-AzAccount [-Environment <String>] -Credential <PSCredential> [-ServicePrincipal] -Tenant <String>
 [-Subscription <String>] [-AuthScope <String>] [-ContextName <String>] [-SkipContextPopulation]
 [-MaxContextPopulation <Int32>] [-Force] [-Scope <ContextModificationScope>]
 [-DefaultProfile <IAzureContextContainer>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### UserWithCredential
```
Connect-AzAccount [-Environment <String>] -Credential <PSCredential> [-Tenant <String>]
 [-Subscription <String>] [-AuthScope <String>] [-ContextName <String>] [-SkipContextPopulation]
 [-MaxContextPopulation <Int32>] [-Force] [-Scope <ContextModificationScope>]
 [-DefaultProfile <IAzureContextContainer>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### ServicePrincipalCertificateWithSubscriptionId
```
Connect-AzAccount [-Environment <String>] -CertificateThumbprint <String> -ApplicationId <String>
 [-ServicePrincipal] -Tenant <String> [-Subscription <String>] [-AuthScope <String>] [-ContextName <String>]
 [-SkipContextPopulation] [-MaxContextPopulation <Int32>] [-Force] [-SendCertificateChain]
 [-Scope <ContextModificationScope>] [-DefaultProfile <IAzureContextContainer>] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

### ClientAssertionParameterSet
```
Connect-AzAccount [-Environment <String>] -ApplicationId <String> [-ServicePrincipal] -Tenant <String>
 [-Subscription <String>] [-ContextName <String>] [-SkipContextPopulation] [-MaxContextPopulation <Int32>]
 [-Force] -FederatedToken <String> [-Scope <ContextModificationScope>]
 [-DefaultProfile <IAzureContextContainer>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### ServicePrincipalCertificateFileWithSubscriptionId
```
Connect-AzAccount [-Environment <String>] -ApplicationId <String> [-ServicePrincipal] -Tenant <String>
 [-Subscription <String>] [-ContextName <String>] [-SkipContextPopulation] [-MaxContextPopulation <Int32>]
 [-Force] [-SendCertificateChain] -CertificatePath <String> [-CertificatePassword <SecureString>]
 [-Scope <ContextModificationScope>] [-DefaultProfile <IAzureContextContainer>] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

### AccessTokenWithSubscriptionId
```
Connect-AzAccount [-Environment <String>] [-Tenant <String>] -AccessToken <String> [-GraphAccessToken <String>]
 [-MicrosoftGraphAccessToken <String>] [-KeyVaultAccessToken <String>] -AccountId <String>
 [-Subscription <String>] [-ContextName <String>] [-SkipValidation] [-SkipContextPopulation]
 [-MaxContextPopulation <Int32>] [-Force] [-Scope <ContextModificationScope>]
 [-DefaultProfile <IAzureContextContainer>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### ManagedServiceLogin
```
Connect-AzAccount [-Environment <String>] [-Tenant <String>] [-AccountId <String>] [-Identity]
 [-Subscription <String>] [-AuthScope <String>] [-ContextName <String>] [-SkipContextPopulation]
 [-MaxContextPopulation <Int32>] [-Force] [-Scope <ContextModificationScope>]
 [-DefaultProfile <IAzureContextContainer>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
The \`Connect-AzAccount\` cmdlet connects to Azure with an authenticated account for use with cmdlets from the Az PowerShell modules.
You can use this authenticated account only with Azure Resource Manager requests.
To add an authenticated account for use with Service Management, use the \`Add-AzureAccount\` cmdlet from the Azure PowerShell module.
If no context is found for the current user, the user's context list is populated with a context for each of their first 25 subscriptions.
The list of contexts created for the user can be found by running \`Get-AzContext -ListAvailable\`.
To skip this context population, specify the SkipContextPopulation switch parameter.
After executing this cmdlet, you can disconnect from an Azure account using \`Disconnect-AzAccount\`.

## EXAMPLES

### Example 1: Connect to an Azure account
```
Connect-AzAccount

Account                SubscriptionName TenantId                Environment
-------                ---------------- --------                -----------
azureuser@contoso.com  Subscription1    xxxx-xxxx-xxxx-xxxx     AzureCloud
```

### Example 2: Connect to Azure using organizational ID credentials
```
$Credential = Get-Credential
Connect-AzAccount -Credential $Credential

Account                SubscriptionName TenantId                Environment
-------                ---------------- --------                -----------
azureuser@contoso.com  Subscription1    xxxx-xxxx-xxxx-xxxx     AzureCloud
```

### Example 3: Connect to Azure using a service principal account
```
$Credential = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $ApplicationId, $SecuredPassword
Connect-AzAccount -ServicePrincipal -TenantId $TenantId -Credential $Credential

Account                SubscriptionName TenantId                Environment
-------                ---------------- --------                -----------
xxxx-xxxx-xxxx-xxxx    Subscription1    xxxx-xxxx-xxxx-xxxx     AzureCloud
```

### Example 4: Use an interactive login to connect to a specific tenant and subscription
```
Connect-AzAccount -Tenant 'xxxx-xxxx-xxxx-xxxx' -SubscriptionId 'yyyy-yyyy-yyyy-yyyy'

Account                SubscriptionName TenantId                Environment
-------                ---------------- --------                -----------
azureuser@contoso.com  Subscription1    xxxx-xxxx-xxxx-xxxx     AzureCloud
```

### Example 5: Connect using a Managed Service Identity
```
Connect-AzAccount -Identity
Set-AzContext -Subscription Subscription1

Account                SubscriptionName TenantId                Environment
-------                ---------------- --------                -----------
MSI@50342              Subscription1    xxxx-xxxx-xxxx-xxxx     AzureCloud
```

### Example 6: Connect using Managed Service Identity login and ClientId
```
$identity = Get-AzUserAssignedIdentity -ResourceGroupName 'myResourceGroup' -Name 'myUserAssignedIdentity'
Get-AzVM -ResourceGroupName contoso -Name testvm | Update-AzVM -IdentityType UserAssigned -IdentityId $identity.Id
Connect-AzAccount -Identity -AccountId $identity.ClientId # Run on the virtual machine

Account                SubscriptionName TenantId                Environment
-------                ---------------- --------                -----------
yyyy-yyyy-yyyy-yyyy    Subscription1    xxxx-xxxx-xxxx-xxxx     AzureCloud
```

### Example 7: Connect using certificates
```
$Thumbprint = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
$TenantId = 'yyyyyyyy-yyyy-yyyy-yyyy-yyyyyyy'
$ApplicationId = '00000000-0000-0000-0000-00000000'
Connect-AzAccount -CertificateThumbprint $Thumbprint -ApplicationId $ApplicationId -Tenant $TenantId -ServicePrincipal

Account                      SubscriptionName TenantId                        Environment
-------                      ---------------- --------                        -----------
xxxxxxxx-xxxx-xxxx-xxxxxxxxx Subscription1    yyyyyyyy-yyyy-yyyy-yyyy-yyyyyyy AzureCloud

Account          : xxxxxxxx-xxxx-xxxx-xxxxxxxx
SubscriptionName : MyTestSubscription
SubscriptionId   : zzzzzzzz-zzzz-zzzz-zzzz-zzzzzzzz
TenantId         : yyyyyyyy-yyyy-yyyy-yyyy-yyyyyyy
Environment      : AzureCloud
```

### Example 8: Connect with AuthScope
```
Connect-AzAccount -AuthScope Storage

Account                SubscriptionName TenantId                Environment
-------                ---------------- --------                -----------
yyyy-yyyy-yyyy-yyyy    Subscription1    xxxx-xxxx-xxxx-xxxx     AzureCloud
```

### Example 9: Connect using certificate file
```
$securePassword = $plainPassword | ConvertTo-SecureString -AsPlainText -Force
$TenantId = 'yyyyyyyy-yyyy-yyyy-yyyy-yyyyyyy'
$ApplicationId = 'zzzzzzzz-zzzz-zzzz-zzzz-zzzzzzzz'
Connect-AzAccount -ServicePrincipal -ApplicationId $ApplicationId -TenantId $TenantId -CertificatePath './certificatefortest.pfx' -CertificatePassword $securePassword

Account                     SubscriptionName TenantId                        Environment
-------                     ---------------- --------                        -----------
xxxxxxxx-xxxx-xxxx-xxxxxxxx Subscription1    yyyyyyyy-yyyy-yyyy-yyyy-yyyyyyy AzureCloud
```

### Example 10: Connect interactively using WAM
```
Update-AzConfig -EnableLoginByWam $true
Connect-AzAccount

Account                     SubscriptionName TenantId                        Environment
-------                     ---------------- --------                        -----------
xxxxxxxx-xxxx-xxxx-xxxxxxxx Subscription1    yyyyyyyy-yyyy-yyyy-yyyy-yyyyyyy AzureCloud
```

## PARAMETERS

### -AccessToken
Specifies an access token.

\> \[!CAUTION\] \> Access tokens are a type of credential.
You should take the appropriate security precautions to \> keep them confidential.
Access tokens also timeout and may prevent long running tasks from \> completing.

```yaml
Type: String
Parameter Sets: AccessTokenWithSubscriptionId
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AccountId
Account Id / User Id / User Name to login with in Default (UserWithSubscriptionId) parameter set; Account ID for access token in AccessToken parameter set; Account ID for managed service in ManagedService parameter set.
Can be a managed service resource ID, or the associated client ID.
To use the system assigned identity, leave this field blank.

```yaml
Type: String
Parameter Sets: UserWithSubscriptionId, ManagedServiceLogin
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

```yaml
Type: String
Parameter Sets: AccessTokenWithSubscriptionId
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ApplicationId
Application ID of the service principal.

```yaml
Type: String
Parameter Sets: ServicePrincipalCertificateWithSubscriptionId, ClientAssertionParameterSet, ServicePrincipalCertificateFileWithSubscriptionId
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AuthScope
Optional OAuth scope for login, supported pre-defined values: AadGraph, AnalysisServices, Attestation, Batch, DataLake, KeyVault, OperationalInsights, Storage, Synapse.
It also supports resource id like \`https://storage.azure.com/\`.

```yaml
Type: String
Parameter Sets: UserWithSubscriptionId, ServicePrincipalWithSubscriptionId, UserWithCredential, ServicePrincipalCertificateWithSubscriptionId, ManagedServiceLogin
Aliases: AuthScopeTypeName

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -CertificatePassword
The password required to access the pkcs#12 certificate file.

```yaml
Type: SecureString
Parameter Sets: ServicePrincipalCertificateFileWithSubscriptionId
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -CertificatePath
The path of certficate file in pkcs#12 format.

```yaml
Type: String
Parameter Sets: ServicePrincipalCertificateFileWithSubscriptionId
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -CertificateThumbprint
Certificate Hash or Thumbprint.

```yaml
Type: String
Parameter Sets: ServicePrincipalCertificateWithSubscriptionId
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ContextName
Name of the default Azure context for this login.
For more information about Azure contexts, see Azure PowerShell context objects (/powershell/azure/context-persistence).

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

### -Credential
Specifies a PSCredential object.
For more information about the PSCredential object, type \`Get-Help Get-Credential\`.
The PSCredential object provides the user ID and password for organizational ID credentials, or the application ID and secret for service principal credentials.

```yaml
Type: PSCredential
Parameter Sets: ServicePrincipalWithSubscriptionId, UserWithCredential
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
Type: IAzureContextContainer
Parameter Sets: (All)
Aliases: AzContext, AzureRmContext, AzureCredential

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Environment
Environment containing the Azure account.

```yaml
Type: String
Parameter Sets: (All)
Aliases: EnvironmentName

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -FederatedToken
Specifies a token provided by another identity provider.
The issuer and subject in this token must be first configured to be trusted by the ApplicationId.

\> \[!CAUTION\] \> Federated tokens are a type of credential.
You should take the appropriate security precautions to keep them confidential.
Federated tokens also timeout and may prevent long running tasks from completing.

```yaml
Type: String
Parameter Sets: ClientAssertionParameterSet
Aliases: ClientAssertion

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Force
Overwrite the existing context with the same name without prompting.

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

### -GraphAccessToken
AccessToken for Graph Service.

```yaml
Type: String
Parameter Sets: AccessTokenWithSubscriptionId
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Identity
Login using a Managed Service Identity.

```yaml
Type: SwitchParameter
Parameter Sets: ManagedServiceLogin
Aliases: MSI, ManagedService

Required: True
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -KeyVaultAccessToken
AccessToken for KeyVault Service.

```yaml
Type: String
Parameter Sets: AccessTokenWithSubscriptionId
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MaxContextPopulation
Max subscription number to populate contexts after login.
Default is 25.
To populate all subscriptions to contexts, set to -1.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MicrosoftGraphAccessToken
Access token to Microsoft Graph

```yaml
Type: String
Parameter Sets: AccessTokenWithSubscriptionId
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Scope
Determines the scope of context changes, for example, whether changes apply only to the current process, or to all sessions started by this user.

```yaml
Type: ContextModificationScope
Parameter Sets: (All)
Aliases:
Accepted values: Process, CurrentUser

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SendCertificateChain
Specifies if the x5c claim (public key of the certificate) should be sent to the STS to achieve easy certificate rollover in Azure AD.

```yaml
Type: SwitchParameter
Parameter Sets: ServicePrincipalCertificateWithSubscriptionId, ServicePrincipalCertificateFileWithSubscriptionId
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -ServicePrincipal
Indicates that this account authenticates by providing service principal credentials.

```yaml
Type: SwitchParameter
Parameter Sets: ServicePrincipalWithSubscriptionId
Aliases:

Required: True
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

```yaml
Type: SwitchParameter
Parameter Sets: ServicePrincipalCertificateWithSubscriptionId, ClientAssertionParameterSet, ServicePrincipalCertificateFileWithSubscriptionId
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -SkipContextPopulation
Skips context population if no contexts are found.

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

### -SkipValidation
Skip validation for access token.

```yaml
Type: SwitchParameter
Parameter Sets: AccessTokenWithSubscriptionId
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Subscription
Subscription Name or ID.

```yaml
Type: String
Parameter Sets: (All)
Aliases: SubscriptionName, SubscriptionId

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Tenant
Optional tenant name or ID.

\> \[!NOTE\] \> Due to limitations of the current API, you must use a tenant ID instead of a tenant name when \> connecting with a business-to-business (B2B) account.

```yaml
Type: String
Parameter Sets: UserWithSubscriptionId, UserWithCredential, AccessTokenWithSubscriptionId, ManagedServiceLogin
Aliases: Domain, TenantId

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

```yaml
Type: String
Parameter Sets: ServicePrincipalWithSubscriptionId, ServicePrincipalCertificateWithSubscriptionId, ClientAssertionParameterSet, ServicePrincipalCertificateFileWithSubscriptionId
Aliases: Domain, TenantId

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UseDeviceAuthentication
Use device code authentication instead of a browser control.

```yaml
Type: SwitchParameter
Parameter Sets: UserWithSubscriptionId
Aliases: DeviceCode, DeviceAuth, Device

Required: False
Position: Named
Default value: False
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
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### System.String
## OUTPUTS

### Microsoft.Azure.Commands.Profile.Models.Core.PSAzureProfile
## NOTES

## RELATED LINKS
