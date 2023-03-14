---
external help file: Microsoft.Azure.PowerShell.Cmdlets.Storage.dll-Help.xml
Module Name: Az.Storage
online version: https://learn.microsoft.com/powershell/module/az.storage/get-azdatalakegen2deleteditem
schema: 2.0.0
---

# Get-AzDataLakeGen2DeletedItem

## SYNOPSIS
List all deleted files or directories from a directory or filesystem root.

## SYNTAX

```
Get-AzDataLakeGen2DeletedItem [-FileSystem] <String> [[-Path] <String>] [-MaxCount <Int32>]
 [-ContinuationToken <String>] [-AsJob] [-Context <IStorageContext>] [-DefaultProfile <IAzureContextContainer>]
 [<CommonParameters>]
```

## DESCRIPTION
The Get-AzDataLakeGen2DeletedItem cmdlet lists all deleted files or directories from a directory or filesystem in an Azure storage account.
This cmdlet only works if Hierarchical Namespace is enabled for the Storage account.
This kind of account can be created by run "New-AzStorageAccount" cmdlet with "-EnableHierarchicalNamespace $true".

## EXAMPLES

### Example 1: List all deleted files or directories from a Filesystem
```
Get-AzDataLakeGen2DeletedItem -FileSystem "filesystem1"

FileSystem Name: filesystem1

Path                 DeletionId           DeletedOn            RemainingRetentionDays
----                 ----------           ---------            ----------------------
dir0/dir1/file1      132658816156507617   2021-05-19 07:06:55Z 3                     
dir0/dir2            132658834541610122   2021-05-19 07:37:34Z 3                    
dir0/dir2/file3      132658834534174806   2021-05-19 07:37:33Z 3
```

This command lists all deleted files or directories from a Filesystem.

### Example 2: List all deleted files or directories from a directory
```
Get-AzDataLakeGen2DeletedItem -FileSystem "filesystem1" -Path dir0/dir2

FileSystem Name: filesystem1

Path                 DeletionId           DeletedOn            RemainingRetentionDays
----                 ----------           ---------            ----------------------
dir0/dir2            132658834541610122   2021-05-19 07:37:34Z 3                     
dir0/dir2/file3      132658834534174806   2021-05-19 07:37:33Z 3
```

This command lists all deleted files or directories from a directory.

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

### -Context
Azure Storage Context Object

```yaml
Type: IStorageContext
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -ContinuationToken
Continuation Token.

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
Aliases: AzureRmContext, AzureCredential

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -FileSystem
FileSystem name

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 0
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -MaxCount
The max count of the blobs that can return.

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

### -Path
The path in the specified FileSystem that should be retrieved.
Can be a directory In the format 'directory1/directory2/', Skip set this parameter to list items from root directory of the Filesystem.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### System.String
### Microsoft.Azure.Commands.Common.Authentication.Abstractions.IStorageContext
## OUTPUTS

### Microsoft.WindowsAzure.Commands.Common.Storage.ResourceModel.AzureDataLakeGen2DeletedItem
## NOTES

## RELATED LINKS
