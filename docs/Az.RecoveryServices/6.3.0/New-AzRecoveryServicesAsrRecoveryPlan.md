---
external help file: Microsoft.Azure.PowerShell.Cmdlets.RecoveryServices.SiteRecovery.dll-Help.xml
Module Name: Az.RecoveryServices
online version: https://learn.microsoft.com/powershell/module/az.recoveryservices/new-azrecoveryservicesasrrecoveryplan
schema: 2.0.0
---

# New-AzRecoveryServicesAsrRecoveryPlan

## SYNOPSIS
Creates an ASR recovery plan.

## SYNTAX

### EnterpriseToEnterprise (Default)
```
New-AzRecoveryServicesAsrRecoveryPlan -Name <String> -PrimaryFabric <ASRFabric> -RecoveryFabric <ASRFabric>
 -ReplicationProtectedItem <ASRReplicationProtectedItem[]> [-DefaultProfile <IAzureContextContainer>] [-WhatIf]
 [-Confirm] [<CommonParameters>]
```

### EnterpriseToAzure
```
New-AzRecoveryServicesAsrRecoveryPlan -Name <String> -PrimaryFabric <ASRFabric> [-Azure]
 -FailoverDeploymentModel <String> -ReplicationProtectedItem <ASRReplicationProtectedItem[]>
 [-DefaultProfile <IAzureContextContainer>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### AzureZoneToZone
```
New-AzRecoveryServicesAsrRecoveryPlan -Name <String> -PrimaryFabric <ASRFabric> -PrimaryZone <String>
 -RecoveryZone <String> [-PrimaryEdgeZone <String>] [-RecoveryEdgeZone <String>] [-AzureZoneToZone]
 -ReplicationProtectedItem <ASRReplicationProtectedItem[]> [-DefaultProfile <IAzureContextContainer>] [-WhatIf]
 [-Confirm] [<CommonParameters>]
```

### EdgeZoneToAzure
```
New-AzRecoveryServicesAsrRecoveryPlan -Name <String> -PrimaryFabric <ASRFabric> -PrimaryEdgeZone <String>
 [-EdgeZoneToAzure] -ReplicationProtectedItem <ASRReplicationProtectedItem[]>
 [-DefaultProfile <IAzureContextContainer>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### AzureToEdgeZone
```
New-AzRecoveryServicesAsrRecoveryPlan -Name <String> -PrimaryFabric <ASRFabric> -RecoveryEdgeZone <String>
 [-AzureToEdgeZone] -ReplicationProtectedItem <ASRReplicationProtectedItem[]>
 [-DefaultProfile <IAzureContextContainer>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### EdgeZoneToEdgeZone
```
New-AzRecoveryServicesAsrRecoveryPlan -Name <String> -PrimaryFabric <ASRFabric> -PrimaryEdgeZone <String>
 -RecoveryEdgeZone <String> [-EdgeZoneToEdgeZone] -ReplicationProtectedItem <ASRReplicationProtectedItem[]>
 [-DefaultProfile <IAzureContextContainer>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### ByRPFile
```
New-AzRecoveryServicesAsrRecoveryPlan -Path <String> [-DefaultProfile <IAzureContextContainer>] [-WhatIf]
 [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
The New-AzRecoveryServicesAsrRecoveryPlan cmdlet creates an Azure Site Recovery, recovery plan in the Recovery Services vault.

A recovery plan gathers virtual machines belonging to an application into a unit to allow them to be recovered together.

## EXAMPLES

### Example 1
```
$currentJob = New-AzRecoveryServicesAsrRecoveryPlan -Name $RPName -PrimaryFabric $PrimaryFabric -RecoveryFabric $RecoveryFabric -ReplicationProtectedItem $RPI
```

Starts the recovery plan creation operation with the specified parameters and returns the ASR job used to track the operation.

### Example 2
```
$currentJob = New-AzRecoveryServicesAsrRecoveryPlan -Name $RPName -PrimaryFabric $PrimaryFabric -PrimaryZone $pZone -RecoveryZone $rZone -ReplicationProtectedItem $RPI
```

Starts the recovery plan creation operation for Azure zone to zone replicated items and returns the ASR job used to track the operation.

### Example 3
```
$currentJob = New-AzRecoveryServicesAsrRecoveryPlan -Name $RPName -PrimaryFabric $PrimaryFabric -PrimaryEdgeZone $pEdgeZone -RecoveryZone $rZone -ReplicationProtectedItem $RPI
```

Starts the recovery plan creation operation for Azure EdgeZone to Availability Zone replicated items and returns the ASR job used to track the operation.

## PARAMETERS

### -Azure
Switch parameter specifies the scenario for azure to azure disaster recovery, recovery plan creation.

```yaml
Type: SwitchParameter
Parameter Sets: EnterpriseToAzure
Aliases:

Required: True
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -AzureToEdgeZone
Switch parameter specifies creating the replicated item in Azure to EdgeZone scenario.

```yaml
Type: SwitchParameter
Parameter Sets: AzureToEdgeZone
Aliases:

Required: True
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -AzureZoneToZone
Switch parameter specifies creating the replicated item in azure zone to zone scenario.

```yaml
Type: SwitchParameter
Parameter Sets: AzureZoneToZone
Aliases:

Required: True
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

### -EdgeZoneToAzure
Switch parameter specifies creating the replicated item in EdgeZone to Azure scenario.

```yaml
Type: SwitchParameter
Parameter Sets: EdgeZoneToAzure
Aliases:

Required: True
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -EdgeZoneToEdgeZone
Switch parameter specifies creating the replicated item EdgeZone to EdgeZone scenario.

```yaml
Type: SwitchParameter
Parameter Sets: EdgeZoneToEdgeZone
Aliases:

Required: True
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -FailoverDeploymentModel
Specifies the failover deployment model (Classic or Resource Manager) of the replication protected items that will be part of this recovery plan.

```yaml
Type: String
Parameter Sets: EnterpriseToAzure
Aliases:
Accepted values: Classic, ResourceManager

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Name
Name of the recovery plan.

```yaml
Type: String
Parameter Sets: EnterpriseToEnterprise, EnterpriseToAzure, AzureZoneToZone, EdgeZoneToAzure, AzureToEdgeZone, EdgeZoneToEdgeZone
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Path
Specifies the path to the recovery plan definition json file.
A recovery plan definition json can be used to create the recovery plan.

```yaml
Type: String
Parameter Sets: ByRPFile
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PrimaryEdgeZone
Specifies the primary edge zone of the replication protected items that will be part of this recovery plan.

```yaml
Type: String
Parameter Sets: AzureZoneToZone
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

```yaml
Type: String
Parameter Sets: EdgeZoneToAzure, EdgeZoneToEdgeZone
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PrimaryFabric
Specifies the ASR fabric object for the primary ASR fabric of the replication protected items that will be part of this recovery plan.

```yaml
Type: ASRFabric
Parameter Sets: EnterpriseToEnterprise, EnterpriseToAzure, AzureZoneToZone, EdgeZoneToAzure, AzureToEdgeZone, EdgeZoneToEdgeZone
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PrimaryZone
Specifies the primary Availabilty zone of the replication protected items that will be part of this recovery plan.

```yaml
Type: String
Parameter Sets: AzureZoneToZone
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RecoveryEdgeZone
Specifies the recovery edge zone of the replication protected items that will be part of this recovery plan.

```yaml
Type: String
Parameter Sets: AzureZoneToZone
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

```yaml
Type: String
Parameter Sets: AzureToEdgeZone, EdgeZoneToEdgeZone
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RecoveryFabric
Specifies the ASR fabric object for the recovery ASR fabric of the replication protected items that will be part of this recovery plan.

```yaml
Type: ASRFabric
Parameter Sets: EnterpriseToEnterprise
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RecoveryZone
Specifies the primary Availabilty zone of the replication protected items that will be part of this recovery plan.

```yaml
Type: String
Parameter Sets: AzureZoneToZone
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ReplicationProtectedItem
The list of replication protected items to add to the first group of the recovery plan.

```yaml
Type: ASRReplicationProtectedItem[]
Parameter Sets: EnterpriseToEnterprise, EnterpriseToAzure
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

```yaml
Type: ASRReplicationProtectedItem[]
Parameter Sets: AzureZoneToZone, EdgeZoneToAzure, AzureToEdgeZone, EdgeZoneToEdgeZone
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
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

### Microsoft.Azure.Commands.RecoveryServices.SiteRecovery.ASRReplicationProtectedItem[]
## OUTPUTS

### Microsoft.Azure.Commands.RecoveryServices.SiteRecovery.ASRJob
## NOTES

## RELATED LINKS

[Get-AzRecoveryServicesAsrRecoveryPlan]()

[Remove-AzRecoveryServicesAsrRecoveryPlan]()

[Update-AzRecoveryServicesAsrRecoveryPlan]()

