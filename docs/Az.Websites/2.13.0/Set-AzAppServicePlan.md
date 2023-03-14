---
external help file: Microsoft.Azure.PowerShell.Cmdlets.Websites.dll-Help.xml
Module Name: Az.Websites
online version: https://learn.microsoft.com/powershell/module/az.websites/set-azappserviceplan
schema: 2.0.0
---

# Set-AzAppServicePlan

## SYNOPSIS
Sets an Azure App Service plan.

## SYNTAX

### S1
```
Set-AzAppServicePlan [[-AdminSiteName] <String>] [[-Tier] <String>] [[-NumberofWorkers] <Int32>]
 [[-WorkerSize] <String>] [-PerSiteScaling <Boolean>] [-AsJob] [-Tag <Hashtable>] [-ResourceGroupName] <String>
 [-Name] <String> [-DefaultProfile <IAzureContextContainer>] [<CommonParameters>]
```

### S2
```
Set-AzAppServicePlan [-AsJob] [-AppServicePlan] <PSAppServicePlan> [-DefaultProfile <IAzureContextContainer>]
 [<CommonParameters>]
```

## DESCRIPTION
The Set-AzAppServicePlan cmdlet sets an Azure App Service plan.

## EXAMPLES

### Example 1: Modify an App Service plan
```
Set-AzAppServicePlan -ResourceGroupName "Default-Web-WestUS" -Name "ContosoASP" -PerSiteScaling $true
```

This command sets the PerSiteScaling option to true on the App Service plan named ContosoASP     that belongs to the resource group named Default-Web-WestUS.

### Example 2
```
Set-AzAppServicePlan -Name 'ContosoASP' -ResourceGroupName 'Default-Web-WestUS' -Tier Free -WorkerSize Small
```

## PARAMETERS

### -AdminSiteName
Admin Site Name

```yaml
Type: String
Parameter Sets: S1
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AppServicePlan
App Service Plan Object

```yaml
Type: PSAppServicePlan
Parameter Sets: S2
Aliases:

Required: True
Position: 0
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

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

### -DefaultProfile
The credentials, account, tenant, and subscription used for communication with azure.

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

### -Name
App Service Plan Name

```yaml
Type: String
Parameter Sets: S1
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -NumberofWorkers
Number Of Workers

```yaml
Type: Int32
Parameter Sets: S1
Aliases:

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PerSiteScaling
Per Site Scaling Boolean

```yaml
Type: Boolean
Parameter Sets: S1
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -ResourceGroupName
Resource Group Name

```yaml
Type: String
Parameter Sets: S1
Aliases:

Required: True
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Tag
Tags are name/value pairs that enable you to categorize resources

```yaml
Type: Hashtable
Parameter Sets: S1
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Tier
Tier

```yaml
Type: String
Parameter Sets: S1
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -WorkerSize
Worker Size

```yaml
Type: String
Parameter Sets: S1
Aliases:

Required: False
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### Microsoft.Azure.Commands.WebApps.Models.WebApp.PSAppServicePlan
## OUTPUTS

### Microsoft.Azure.Commands.WebApps.Models.WebApp.PSAppServicePlan
## NOTES

## RELATED LINKS

[Get-AzWebApp]()

[New-AzWebApp]()

[Remove-AzWebApp]()

[Restart-AzWebApp]()

[Start-AzWebApp]()

[Stop-AzWebApp]()

