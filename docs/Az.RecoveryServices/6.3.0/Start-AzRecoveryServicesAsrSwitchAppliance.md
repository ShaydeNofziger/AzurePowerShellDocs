---
external help file: Microsoft.Azure.PowerShell.Cmdlets.RecoveryServices.SiteRecovery.dll-Help.xml
Module Name: Az.RecoveryServices
online version: https://learn.microsoft.com/powershell/module/az.recoveryservices/start-azrecoveryservicesasrswitchappliance
schema: 2.0.0
---

# Start-AzRecoveryServicesAsrSwitchAppliance

## SYNOPSIS
Starts the switch appliance action for a Site Recovery object.

## SYNTAX

```
Start-AzRecoveryServicesAsrSwitchAppliance -Fabric <ASRFabric>
 -ReplicationProtectedItem <ASRReplicationProtectedItem> -TargetApplianceName <String>
 [-CredentialsToAccessVm <String>] [-DefaultProfile <IAzureContextContainer>] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

## DESCRIPTION
The Start-AzRecoveryServicesAsrSwitchAppliance cmdlet starts the switch appliance process for an Azure Site Recovery object.

## EXAMPLES

### Example 1
```
$currentJob = Start-AzRecoveryServicesAsrSwitchAppliance -Fabric $Fabric `
-ReplicationProtectedItem $RPI -TargetApplianceName $TargetApplianceName
```

Starts the switch appliance for the specified replicated protected item and returns the ASR job used to track the operation.

## PARAMETERS

### -CredentialsToAccessVm
Specifies the name of credentials to be used to push install the Mobility service on source machine if needed.

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
Type: IAzureContextContainer
Parameter Sets: (All)
Aliases: AzContext, AzureRmContext, AzureCredential

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Fabric
Specifies the ASR Fabric object.

```yaml
Type: ASRFabric
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ReplicationProtectedItem
Specifies an ASR replication protected item object to be switched to new appliance.

```yaml
Type: ASRReplicationProtectedItem
Parameter Sets: (All)
Aliases: ReplicatedItem

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TargetApplianceName
Specifies the name of appliance to be used to replicate this machine.

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

### None
## OUTPUTS

### Microsoft.Azure.Commands.RecoveryServices.SiteRecovery.ASRJob
## NOTES

## RELATED LINKS
