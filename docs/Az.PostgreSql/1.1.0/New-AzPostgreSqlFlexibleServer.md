---
external help file: Az.PostgreSql-help.xml
Module Name: Az.PostgreSql
online version: https://docs.microsoft.com/powershell/module/az.postgresql/new-azpostgresqlflexibleserver
schema: 2.0.0
---

# New-AzPostgreSqlFlexibleServer

## SYNOPSIS
Creates a new server.

## SYNTAX

```
New-AzPostgreSqlFlexibleServer [-Name <String>] [-ResourceGroupName <String>] [-SubscriptionId <String>]
 [-Zone <String>] [-Location <String>] [-AdministratorUserName <String>]
 [-AdministratorLoginPassword <SecureString>] [-Sku <String>] [-SkuTier <String>] [-BackupRetentionDay <Int32>]
 [-StorageInMb <Int32>] [-HaEnabled <String>] [-Tag <Hashtable>] [-Version <ServerVersion>]
 [-PrivateDnsZone <String>] [-SubnetPrefix <String>] [-Subnet <String>] [-VnetPrefix <String>] [-Vnet <String>]
 [-PublicAccess <String>] [-DefaultProfile <PSObject>] [-AsJob] [-Break]
 [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-NoWait] [-Proxy <Uri>]
 [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
Creates a new server.

## EXAMPLES

### EXAMPLE 1
```
New-AzPostgreSqlFlexibleServer -Name postgresql-test -ResourceGroupName PowershellPostgreSqlTest \
-Location eastus -AdministratorUserName postgresqltest -AdministratorLoginPassword $password -Sku Standard_D2s_v3 -SkuTier GeneralPurpose -Version 12 -StorageInMb 131072 -PublicAccess none
```

### EXAMPLE 2
```
$server = New-AzPostgreSqlFlexibleServer
```

### EXAMPLE 3
```
$Subnet = '/subscriptions/00000000-0000-0000-0000-0000000000/resourceGroups/PowershellPostgreSqlTest/providers/Microsoft.Network/virtualNetworks/vnetname/subnets/subnetname'
$DnsZone = '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/postgresqltest/providers/Microsoft.Network/privateDnsZones/testserver.private.postgres.database.azure.com'
New-AzPostgreSqlFlexibleServer  -ResourceGroupName postgresqltest -ServerName testserver -Subnet $Subnet -PrivateDnsZone $DnsZone
```

### EXAMPLE 4
```
New-AzPostgreSqlFlexibleServer -Name postgresql-test -ResourceGroupName PowershellPostgreSqlTest -Vnet postgresql-vnet -Subnet postgresql-subnet -VnetPrefix 10.0.0.0/16 -SubnetPrefix 10.0.0.0/24 -PrivateDnsZone /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/PowershellPostgreSqlTest/providers/Microsoft.Network/privateDnsZones/postgresql-test.private.postgres.database.azure.com
```

### EXAMPLE 5
```
$Vnet = 'vnetname'
New-AzPostgreSqlFlexibleServer -ResourceGroupName PowershellPostgreSqlTest -Vnet $Vnet -PrivateDnsZone /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/PowershellPostgreSqlTest/providers/Microsoft.Network/privateDnsZones/testserver.private.postgres.database.azure.com
```

or

$Vnet = '/subscriptions/00000000-0000-0000-0000-0000000000/resourceGroups/PowershellPostgreSqlTest/providers/Microsoft.Network/virtualNetworks/vnetname'
New-AzPostgreSqlFlexibleServer  -ResourceGroupName PowershellPostgreSqlTest -Vnet $Vnet -PrivateDnsZone /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/PowershellPostgreSqlTest/providers/Microsoft.Network/privateDnsZones/testserver.private.postgres.database.azure.com

### EXAMPLE 6
```
New-AzPostgreSqlFlexibleServer -Name postgresql-test -ResourceGroupName PowershellPostgreSqlTest -PublicAccess All
```

### EXAMPLE 7
```
New-AzPostgreSqlFlexibleServer -Name postgresql-test -ResourceGroupName PowershellPostgreSqlTest -PublicAccess 10.10.10.10-10.10.10.12
```

## PARAMETERS

### -Name
The name of the server.

```yaml
Type: String
Parameter Sets: (All)
Aliases: ServerName

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ResourceGroupName
The name of the resource group that contains the resource, You can obtain this value from the Azure Resource Manager API or the portal.

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

### -SubscriptionId
The subscription ID that identifies an Azure subscription.

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

### -Zone
Availability zone into which to provision the resource.

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

### -Location
The location the resource resides in.

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

### -AdministratorLoginPassword
The password of the administrator.
Minimum 8 characters and maximum 128 characters.
Password must contain characters from three of the following categories: English uppercase letters, English lowercase letters, numbers, and non-alphanumeric characters.

```yaml
Type: SecureString
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Sku
The name of the sku, typically, tier + family + cores, e.g.
Standard_B1ms, Standard_D2s_v3.

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

### -SkuTier
Compute tier of the server.
Accepted values: Burstable, GeneralPurpose, Memory Optimized.
Default: Burstable.

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

### -BackupRetentionDay
Backup retention days for the server.
Day count is between 7 and 35.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -StorageInMb
Max storage allowed for a server.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -HaEnabled
Enable or disable high availability feature.
Allowed values: Enabled, Disabled

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

### -Tag
Application-specific metadata in the form of key-value pairs.

```yaml
Type: Hashtable
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Version
Server version.

```yaml
Type: ServerVersion
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PrivateDnsZone
The id of an existing private dns zone.
You can use the
        private dns zone from same resource group, different resource group, or
        different subscription.
The suffix of dns zone has to be same as that of fully qualified domain of the server.

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

### -SubnetPrefix
The subnet IP address prefix to use when creating a new vnet in CIDR format.
Default value is 10.0.0.0/24.

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

### -Subnet
The Name or Id of an existing Subnet or name of a new one to create.
Please note that the subnet will be delegated to Microsoft.DBforPostgreSQL/flexibleServers.
After delegation, this subnet cannot be used for any other type of Azure resources.

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

### -VnetPrefix
The IP address prefix to use when creating a new vnet in CIDR format.
Default value is 10.0.0.0/16.

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

### -Vnet
The Name or Id of an existing virtual network or name of a new one to create.
The name must be between 2 to 64 characters.
The name must begin with a letter or number, end with a letter, number or underscore, and may contain only letters, numbers, underscores, periods, or hyphens.

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

### -PublicAccess
Determines the public access.
Enter single or range of IP addresses to be 
            included in the allowed list of IPs.
IP address ranges must be dash-
            separated and not contain any spaces.
Specifying 0.0.0.0 allows public
            access from any resources deployed within Azure to access your server.
            Specifying no IP address sets the server in public access mode but does
            not create a firewall rule.

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
Run the command as a job.

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

### -NoWait
Run the command asynchronously.

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

### Microsoft.Azure.PowerShell.Cmdlets.PostgreSql.Models.Api20210601.IServerAutoGenerated
## NOTES

## RELATED LINKS

[https://docs.microsoft.com/powershell/module/az.postgresql/new-azpostgresqlflexibleserver](https://docs.microsoft.com/powershell/module/az.postgresql/new-azpostgresqlflexibleserver)

