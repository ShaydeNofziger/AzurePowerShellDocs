﻿---
external help file: Microsoft.Azure.PowerShell.Cmdlets.ServiceFabric.dll-Help.xml
Module Name: Az.ServiceFabric
online version: https://learn.microsoft.com/powershell/module/az.servicefabric/get-azservicefabricapplication
schema: 2.0.0
---

# Get-AzServiceFabricApplication

## SYNOPSIS
Get Service Fabric application details.
Only supports ARM deployed applications.

## SYNTAX

### ByResourceGroupAndCluster (Default)
```
Get-AzServiceFabricApplication [-ResourceGroupName] <String> [-ClusterName] <String>
 [-DefaultProfile <IAzureContextContainer>] [<CommonParameters>]
```

### ByName
```
Get-AzServiceFabricApplication [-ResourceGroupName] <String> [-ClusterName] <String> [-Name] <String>
 [-DefaultProfile <IAzureContextContainer>] [<CommonParameters>]
```

### ByResourceId
```
Get-AzServiceFabricApplication -ResourceId <String> [-DefaultProfile <IAzureContextContainer>]
 [<CommonParameters>]
```

## DESCRIPTION
This cmdlet gets the application details in the specified resource group and cluster.

## EXAMPLES

### Example 1
```
$resourceGroupName = "testRG"
$clusterName = "testCluster"
$appName = "testApp"
Get-AzServiceFabricApplication -ResourceGroupName $resourceGroupName -ClusterName $clusterName -Name $appName
```

This example gets the application resource details for the application "testApp".

### Example 2
```
$resourceGroupName = "testRG"
$clusterName = "testCluster"
Get-AzServiceFabricApplication -ResourceGroupName $resourceGroupName -ClusterName $clusterName
```

This example gets a list of the applications under the cluster "testCluster".

## PARAMETERS

### -ClusterName
Specify the name of the cluster.

```yaml
Type: String
Parameter Sets: ByResourceGroupAndCluster, ByName
Aliases:

Required: True
Position: 1
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

### -Name
Specify the name of the application.

```yaml
Type: String
Parameter Sets: ByName
Aliases: ApplicationName

Required: True
Position: 2
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ResourceGroupName
Specify the name of the resource group.

```yaml
Type: String
Parameter Sets: ByResourceGroupAndCluster, ByName
Aliases:

Required: True
Position: 0
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ResourceId
Arm ResourceId of the application.

```yaml
Type: String
Parameter Sets: ByResourceId
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### System.String
## OUTPUTS

### Microsoft.Azure.Commands.ServiceFabric.Models.PSApplication
## NOTES

## RELATED LINKS