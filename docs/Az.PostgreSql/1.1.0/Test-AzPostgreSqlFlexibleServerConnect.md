---
external help file: Az.PostgreSql-help.xml
Module Name: Az.PostgreSql
online version: https://docs.microsoft.com/powershell/module/az.postgresql/test-azpostgresqlflexibleserverconnect
schema: 2.0.0
---

# Test-AzPostgreSqlFlexibleServerConnect

## SYNOPSIS
Test out the connection to the database server

## SYNTAX

### Test (Default)
```
Test-AzPostgreSqlFlexibleServerConnect -Name <String> -ResourceGroupName <String> [-DatabaseName <String>]
 -AdministratorLoginPassword <SecureString> [-AdministratorUserName <String>] [-DefaultProfile <PSObject>]
 [-Break] [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>]
 [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [<CommonParameters>]
```

### TestAndQuery
```
Test-AzPostgreSqlFlexibleServerConnect -Name <String> -ResourceGroupName <String> [-DatabaseName <String>]
 -QueryText <String> -AdministratorLoginPassword <SecureString> [-AdministratorUserName <String>]
 [-DefaultProfile <PSObject>] [-Break] [-HttpPipelineAppend <SendAsyncStep[]>]
 [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>] [-ProxyCredential <PSCredential>]
 [-ProxyUseDefaultCredentials] [<CommonParameters>]
```

### TestViaIdentityAndQuery
```
Test-AzPostgreSqlFlexibleServerConnect [-DatabaseName <String>] -QueryText <String>
 -AdministratorLoginPassword <SecureString> [-AdministratorUserName <String>]
 -InputObject <IPostgreSqlIdentity> [-DefaultProfile <PSObject>] [-Break]
 [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>]
 [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [<CommonParameters>]
```

### TestViaIdentity
```
Test-AzPostgreSqlFlexibleServerConnect [-DatabaseName <String>] -AdministratorLoginPassword <SecureString>
 [-AdministratorUserName <String>] -InputObject <IPostgreSqlIdentity> [-DefaultProfile <PSObject>] [-Break]
 [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-Proxy <Uri>]
 [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [<CommonParameters>]
```

## DESCRIPTION
Test out the connection to the database server

## EXAMPLES

### EXAMPLE 1
```
-AsPlainText
Get-AzPostgreSqlFlexibleServerConnect -ResourceGroupName PowershellPostgreSqlTest -Name postgresql-test -AdministratorLoginPassword $password
```

### EXAMPLE 2
```
-AsPlainText
Get-AzPostgreSqlFlexibleServer -ResourceGroupName PowershellPostgreSqlTest -ServerName postgresql-test | Test-AzPostgreSqlFlexibleServerConnect -AdministratorLoginPassword $password
```

### EXAMPLE 3
```
-AsPlainText
Test-AzPostgreSqlFlexibleServerConnect -ResourceGroupName PowershellPostgreSqlTest -Name postgresql-test -AdministratorLoginPassword $password -Query "SELECT * FROM test"
```

### EXAMPLE 4
```
Get-AzPostgreSqlFlexibleServer -ResourceGroupName PowershellPostgreSqlTest -ServerName postgresql-test | Test-AzPostgreSqlFlexibleServerConnect -Query "SELECT * FROM test" -AdministratorLoginPassword $password
```

## PARAMETERS

### -Name
The name of the server to connect.

```yaml
Type: String
Parameter Sets: Test, TestAndQuery
Aliases: ServerName

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ResourceGroupName
The name of the resource group that contains the resource, You can obtain this value from the Azure Resource Manager API or the portal.

```yaml
Type: String
Parameter Sets: Test, TestAndQuery
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DatabaseName
The database name to connect.

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

### -QueryText
The query for the database to test

```yaml
Type: String
Parameter Sets: TestAndQuery, TestViaIdentityAndQuery
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AdministratorLoginPassword
The password of the administrator.
Minimum 8 characters and maximum 128 characters.
Password must contain characters from three of the following categories: English uppercase letters, English lowercase letters, numbers, and non-alphanumeric characters.

```yaml
Type: SecureString
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AdministratorUserName
Administrator username for the server.
Once set, it cannot be changed.

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

### -InputObject
The server to connect.
To construct, see NOTES section for INPUTOBJECT properties and create a hash table.

```yaml
Type: IPostgreSqlIdentity
Parameter Sets: TestViaIdentityAndQuery, TestViaIdentity
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
Wait for .NET debugger to attach.

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
{{ Fill HttpPipelineAppend Description }}

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
{{ Fill HttpPipelinePrepend Description }}

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
{{ Fill Proxy Description }}

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
{{ Fill ProxyCredential Description }}

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
{{ Fill ProxyUseDefaultCredentials Description }}

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

### Microsoft.Azure.PowerShell.Cmdlets.PostgreSql.Models.IPostgreSqlIdentity
## OUTPUTS

### System.String
## NOTES
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties.
For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT \<IPostgreSqlIdentity\>: The server to connect.
  \[ConfigurationName \<String\>\]: The name of the server configuration.
  \[DatabaseName \<String\>\]: The name of the database.
  \[FirewallRuleName \<String\>\]: The name of the server firewall rule.
  \[Id \<String\>\]: Resource identity path
  \[LocationName \<String\>\]: The name of the location.
  \[ResourceGroupName \<String\>\]: The name of the resource group.
The name is case insensitive.
  \[SecurityAlertPolicyName \<SecurityAlertPolicyName?\>\]: The name of the security alert policy.
  \[ServerName \<String\>\]: The name of the server.
  \[SubscriptionId \<String\>\]: The ID of the target subscription.
  \[VirtualNetworkRuleName \<String\>\]: The name of the virtual network rule.

## RELATED LINKS

[https://docs.microsoft.com/powershell/module/az.postgresql/test-azpostgresqlflexibleserverconnect](https://docs.microsoft.com/powershell/module/az.postgresql/test-azpostgresqlflexibleserverconnect)

