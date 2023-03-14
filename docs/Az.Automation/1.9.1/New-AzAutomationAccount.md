---
external help file: Microsoft.Azure.PowerShell.Cmdlets.Automation.dll-Help.xml
Module Name: Az.Automation
online version: https://learn.microsoft.com/powershell/module/az.automation/new-azautomationaccount
schema: 2.0.0
---

# New-AzAutomationAccount

## SYNOPSIS
Creates an Automation account.

## SYNTAX

### AutomationServicesEncryption (Default)
```
New-AzAutomationAccount [-ResourceGroupName] <String> [-Name] <String> [-Location] <String> [-Plan <String>]
 [-Tags <IDictionary>] [-AssignSystemIdentity] [-AssignUserIdentity <String[]>] [-AutomationServicesEncryption]
 [-DisablePublicNetworkAccess] [-DefaultProfile <IAzureContextContainer>] [<CommonParameters>]
```

### KeyVaultEncryption
```
New-AzAutomationAccount [-ResourceGroupName] <String> [-Name] <String> [-Location] <String> [-Plan <String>]
 [-Tags <IDictionary>] [-AssignSystemIdentity] [-AssignUserIdentity <String[]>] [-KeyVaultEncryption]
 -KeyName <String> -KeyVersion <String> -KeyVaultUri <String> [-UserIdentityEncryption <String>]
 [-DisablePublicNetworkAccess] [-DefaultProfile <IAzureContextContainer>] [<CommonParameters>]
```

## DESCRIPTION
The New-AzAutomationAccount cmdlet creates an Azure Automation account in a resource group.
An Automation account is a container for Automation resources that is isolated from the resources of other Automation accounts.
Automation resources include runbooks, Desired State Configuration (DSC) configurations, jobs, and assets.

## EXAMPLES

### Example 1: Create an automation account
```
New-AzAutomationAccount -Name "ContosoAutomationAccount" -Location "East US" -ResourceGroupName "ResourceGroup01"
```

This command creates a new automation account named ContosoAutomationAccount in the East US region.

### Example 2
```
New-AzAutomationAccount -Location 'East US' -Name 'ContosoAutomationAccount' -ResourceGroupName 'ResourceGroup01' -Tags <IDictionary>
```

## PARAMETERS

### -DefaultProfile
The credentials, account, tenant, and subscription used for communication with azure

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

### -Location
Specifies the location in which this cmdlet creates the Automation account.
To obtain valid locations, use the Get-AzLocation cmdlet.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Name
Specifies a name for the Automation account.

```yaml
Type: String
Parameter Sets: (All)
Aliases: AutomationAccountName

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Plan
Specifies the plan for the Automation account.
Valid values are: - Basic

- Free

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: Free, Basic

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ResourceGroupName
Specifies the name of a resource group to which this cmdlet adds an Automation account.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 0
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Tags
Key-value pairs in the form of a hash table.
For example: @{key0="value0";key1=$null;key2="value2"}

```yaml
Type: IDictionary
Parameter Sets: (All)
Aliases: Tag

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -AssignSystemIdentity
Generate and assign a new System Identity for this automation account

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AssignUserIdentity
Assign the User Assigned Identities to this automation account

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

### -AutomationServicesEncryption
Specify whether set Automation Account KeySource to Microsoft.Automation or not.

```yaml
Type: SwitchParameter
Parameter Sets: AutomationServicesEncryption
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DisablePublicNetworkAccess
Whether to disable traffic on the non-ARM endpoints (Webhook/Agent) from the public internet

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -KeyName
CMK KeyName

```yaml
Type: String
Parameter Sets: KeyVaultEncryption
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -KeyVaultEncryption
Specifiy whether set Automation Account KeySource to Microsoft.KeyVault (enable CMK) or not.

```yaml
Type: SwitchParameter
Parameter Sets: KeyVaultEncryption
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -KeyVaultUri
CMK KeyVaultUri

```yaml
Type: String
Parameter Sets: KeyVaultEncryption
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -KeyVersion
CMK KeyVersion

```yaml
Type: String
Parameter Sets: KeyVaultEncryption
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UserIdentityEncryption
User Assigned Identity used for encryption

```yaml
Type: String
Parameter Sets: KeyVaultEncryption
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

### System.String
### System.Collections.IDictionary
## OUTPUTS

### Microsoft.Azure.Commands.Automation.Model.AutomationAccount
## NOTES

## RELATED LINKS

[Get-AzAutomationAccount]()

[Remove-AzAutomationAccount]()

[Set-AzAutomationAccount]()

