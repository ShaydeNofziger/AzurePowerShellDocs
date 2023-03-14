---
external help file: Microsoft.Azure.PowerShell.Cmdlets.Synapse.dll-Help.xml
Module Name: Az.Synapse
online version: https://learn.microsoft.com/powershell/module/az.synapse/new-azsynapseworkspace
schema: 2.0.0
---

# New-AzSynapseWorkspace

## SYNOPSIS
Creates a Synapse Analytics workspace.

## SYNTAX

```
New-AzSynapseWorkspace -ResourceGroupName <String> -Name <String> -Location <String> [-Tag <Hashtable>]
 -DefaultDataLakeStorageAccountName <String> -DefaultDataLakeStorageFilesystem <String>
 -SqlAdministratorLoginCredential <PSCredential> [-ManagedVirtualNetwork <PSManagedVirtualNetworkSettings>]
 [-EncryptionKeyName <String>] [-EncryptionKeyIdentifier <String>] [-UserAssignedIdentityInEncryption <String>]
 [-UseSystemAssignedIdentityInEncryption <Object>] [-AsJob] [-ManagedResourceGroupName <String>]
 [-GitRepository <PSWorkspaceRepositoryConfiguration>] [-EnablePublicNetworkAccess <Boolean>]
 [-UserAssignedIdentityId <System.Collections.Generic.List`1[System.String]>]
 [-DefaultProfile <IAzureContextContainer>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
The New-AzSynapseWorkspace cmdlet creates an Azure Synapse Analytics workspace.

## EXAMPLES

### Example 1
```
$password = ConvertTo-SecureString "Password123!" -AsPlainText -Force
$creds = New-Object System.Management.Automation.PSCredential ("ContosoUser", $password)
New-AzSynapseWorkspace -ResourceGroupName ContosoResourceGroup -Name ContosoWorkspace -Location northeurope -DefaultDataLakeStorageAccountName ContosoAdlGen2Storage -DefaultDataLakeStorageFilesystem ContosoFileSystem -SqlAdministratorLoginCredential $creds
```

This command creates a Synapse Analytics workspace named ContosoWorkspace that uses the ContosoAdlGenStorage Data Store, in the resource group named ContosoResourceGroup.

### Example 2
```
$config = New-AzSynapseManagedVirtualNetworkConfig -PreventDataExfiltration -AllowedAadTenantIdsForLinking ContosoTenantId
$password = ConvertTo-SecureString "Password123!" -AsPlainText -Force
$creds = New-Object System.Management.Automation.PSCredential ("ContosoUser", $password)
New-AzSynapseWorkspace -ResourceGroupName ContosoResourceGroup -Name ContosoWorkspace -Location northeurope -DefaultDataLakeStorageAccountName ContosoAdlGen2Storage -DefaultDataLakeStorageFilesystem ContosoFileSystem -SqlAdministratorLoginCredential $creds -ManagedVirtualNetwork $config
```

The first command creates a managed virtual network configuration.
Then the rest methods uses the configuration to creates a new Synapse workspace.

### Example 3
```
$config = New-AzSynapseManagedVirtualNetworkConfig -PreventDataExfiltration -AllowedAadTenantIdsForLinking ContosoTenantId
$password = ConvertTo-SecureString "Password123!" -AsPlainText -Force
$creds = New-Object System.Management.Automation.PSCredential ("ContosoUser", $password)
New-AzSynapseWorkspace -ResourceGroupName ContosoResourceGroup -Name ContosoWorkspace -Location northeurope -DefaultDataLakeStorageAccountName ContosoAdlGen2Storage -DefaultDataLakeStorageFilesystem ContosoFileSystem -SqlAdministratorLoginCredential $creds -ManagedVirtualNetwork $config -EnablePublicNetworkAccess $True
```

The first command creates a managed virtual network configuration.
Then the rest methods uses the configuration to creates a new Synapse workspace with enabled managed virtual network and enabled public network access.

### Example 4
```
$password = ConvertTo-SecureString "Password123!" -AsPlainText -Force
$creds = New-Object System.Management.Automation.PSCredential ("ContosoUser", $password)
$config = New-AzSynapseGitRepositoryConfig -RepositoryType GitHub -AccountName ContosoAccount -RepositoryName ContosoRepo -CollaborationBranch main
New-AzSynapseWorkspace -ResourceGroupName ContosoResourceGroup -Name ContosoWorkspace -Location northeurope -DefaultDataLakeStorageAccountName ContosoAdlGen2Storage -DefaultDataLakeStorageFilesystem ContosoFileSystem -SqlAdministratorLoginCredential $creds -GitRepository $config
```

This command creates a Synapse Analytics workspace named ContosoWorkspace that uses the ContosoAdlGenStorage Data Store, in the resource group named ContosoResourceGroup.
And the workspace is connected to a Git Repository called ContosoRepo.

### Example 5
```
$password = ConvertTo-SecureString "Password123!" -AsPlainText -Force
$creds = New-Object System.Management.Automation.PSCredential ("ContosoUser", $password)
$uamis = Get-AzUserAssignedIdentity -ResourceGroupName ContosoResourceGroup
$uamilist = New-Object System.Collections.Generic.List[string]
foreach($uami in $uamis){
	$uamilist.Add($uami.Id)
}
New-AzSynapseWorkspace -ResourceGroupName ContosoResourceGroup -Name ContosoWorkspace -Location northeurope -DefaultDataLakeStorageAccountName ContosoAdlGen2Storage -DefaultDataLakeStorageFilesystem ContosoFileSystem -SqlAdministratorLoginCredential $creds -UserAssignedIdentityId $uamilist
```

This command creates a Synapse Analytics workspace named ContosoWorkspace that uses the ContosoAdlGenStorage Data Store, in the resource group named ContosoResourceGroup, and add user assigned managed identities that get from ResourceGroup ContosoResourceGroup to workspace.

### Example 6
```
New-AzSynapseWorkspace -ResourceGroupName ContosoResourceGroup -Name ContosoWorkspace -Location northeurope -DefaultDataLakeStorageAccountName ContosoAdlGen2Storage -DefaultDataLakeStorageFilesystem ContosoFileSystem -SqlAdministratorLoginCredential $creds -EncryptionKeyIdentifier $identifier -UseSystemAssignedIdentityInEncryption $true
$ws = Get-AzSynapseWorkspace -name ContosoWorkspace
$ws.Encryption.CustomerManagedKeyDetails.Key

Name    KeyVaultUrl
----    -----------
default https://contosoKeyValut.vault.azure.net/keys/testkey

$ws = Get-AzSynapseWorkspace -name ContosoWorkspace
$ws.Encryption.CustomerManagedKeyDetails.KekIdentity

UserAssignedIdentity UseSystemAssignedIdentity
-------------------- -------------------------
                                          True
```

This command creates a Synapse Analytics workspace named ContosoWorkspace that uses the ContosoAdlGenStorage Data Store, in the resource group named ContosoResourceGroup, and enable double encryption with customer-managed key with specified key identifier and set Managed Identity as System Assigned.
After creation, we can call \`Get-AzSynapseWorkspace\` to get Encryption properties of workspace.

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

### -DefaultDataLakeStorageAccountName
The default ADLS Gen2 storage account name.

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

### -DefaultDataLakeStorageFilesystem
The default ADLS Gen2 file system.

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

### -EnablePublicNetworkAccess
Enable or Disable public network access to workspace.
Possible values include: 'Enabled', 'Disabled'

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -EncryptionKeyIdentifier
Key identifier should be in the format of: https://{keyvaultname}.vault.azure.net/keys/{keyname}.

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

### -EncryptionKeyName
The workspace encryption key name.

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

### -GitRepository
Git Repository Settings.
Connect workspace to the repository for source control and collaboration for work on your workspace pipelines

```yaml
Type: PSWorkspaceRepositoryConfiguration
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Location
Azure region where the resource should be created.

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

### -ManagedResourceGroupName
A container that holds ancillary resources.
Created by default while the name can be specified.
Note that this field must not be the same with ResourceGroupName

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

### -ManagedVirtualNetwork
Name of a Synapse-managed virtual network dedicated for the Azure Synapse workspace.

```yaml
Type: PSManagedVirtualNetworkSettings
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Name
Name of Synapse workspace.

```yaml
Type: String
Parameter Sets: (All)
Aliases: WorkspaceName

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ResourceGroupName
Resource group name.

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

### -SqlAdministratorLoginCredential
SQL administrator credentials.

```yaml
Type: PSCredential
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Tag
A string,string dictionary of tags associated with the resource.

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

### -UserAssignedIdentityId
User assigned managed identity Id for workspace.

```yaml
Type: System.Collections.Generic.List`1[System.String]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UserAssignedIdentityInEncryption
User assigned identity resource Id used in Workspace Encryption

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

### -UseSystemAssignedIdentityInEncryption
specifying whether to use system assigned identity in Workspace Encryption or not

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

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
### System.Collections.Hashtable
### System.Management.Automation.PSCredential
## OUTPUTS

### Microsoft.Azure.Commands.Synapse.Models.PSSynapseWorkspace
## NOTES

## RELATED LINKS
