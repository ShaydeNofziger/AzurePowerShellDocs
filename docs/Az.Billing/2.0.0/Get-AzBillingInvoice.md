---
external help file: Microsoft.Azure.PowerShell.Cmdlets.Billing.dll-Help.xml
Module Name: Az.Billing
online version: https://docs.microsoft.com/en-us/powershell/module/az.billing/get-azbillinginvoice
schema: 2.0.0
---

# Get-AzBillingInvoice

## SYNOPSIS
Get billing invoices of the subscription.
Get billing invoices of a billing account and billing profile

## SYNTAX

### List (Default)
```
Get-AzBillingInvoice [-MaxCount <Int32>] [-GenerateDownloadUrl] [-BillingAccountName <String>]
 [-BillingProfileName <String>] [-PeriodStartDate <DateTime>] [-PeriodEndDate <DateTime>]
 [-DefaultProfile <IAzureContextContainer>] [<CommonParameters>]
```

### Latest
```
Get-AzBillingInvoice [-Latest] [-GenerateDownloadUrl] [-BillingAccountName <String>]
 [-BillingProfileName <String>] [-PeriodStartDate <DateTime>] [-PeriodEndDate <DateTime>]
 [-DefaultProfile <IAzureContextContainer>] [<CommonParameters>]
```

### Single
```
Get-AzBillingInvoice -Name <System.Collections.Generic.List`1[System.String]> [-GenerateDownloadUrl]
 [-BillingAccountName <String>] [-BillingProfileName <String>] [-PeriodStartDate <DateTime>]
 [-PeriodEndDate <DateTime>] [-DefaultProfile <IAzureContextContainer>] [<CommonParameters>]
```

## DESCRIPTION
The Get-AzBillingInvoice cmdlet gets billing invoices of the subscription.

## EXAMPLES

### Example 1
```
PS C:\> Get-AzBillingInvoice -Latest
```

Get the latest invoice of the subscription.

### Example 2
```
PS C:\> Get-AzBillingInvoice -Name 2017-02-18-432543543
```

Get the invoice of the subscription with the specified name.

### Example 3
```
PS C:\> Get-AzBillingInvoice
```

Get all available invoices of the subscription in reverse chronological order beginning with the most recent invoice without download Url.

### Example 4
```
PS C:\> Get-AzBillingInvoice -GenerateDownloadUrl -MaxCount 10
```

Get most recent 10 invoices of the subscription and include the download Url in the result.

### Example 5
```
PS C:\> Get-AzBillingInvoice -Name 2017-02-18-432543543 -GenerateDownloadUrl
```

Get the specific invoice by name and include download url in the result.

### Example 6
```
PS C:\> Get-AzBillingInvoice -BillingAccountName 00000000-0000-0000-0000-000000000000:00000000-0000-0000-0000-000000000000_0000-00-00 -GenerateDownloadUrl
```

Get invoices by billing account name and include download url for each invoice in the result.

### Example 7
```
PS C:\> Get-AzBillingInvoice Get-AzBillingInvoice -Name 0000000000 -BillingAccountName 00000000-0000-0000-0000-000000000000:00000000-0000-0000-0000-000000000000_0000-00-00 -GenerateDownloadUrl
```

Get specific invoice by invoice name and billing account name and include download url for each invoice in the result.

### Example 8
```
PS C:\> Get-AzBillingInvoice -Latest -BillingAccountName 00000000-0000-0000-0000-000000000000:00000000-0000-0000-0000-000000000000_0000-00-00 -GenerateDownloadUrl
```

Get latest invoice by billing account name and include download url for invoice in the result.

### Example 9
```
PS C:\> Get-AzBillingInvoice -GenerateDownloadUrl -BillingAccountName 00000000-0000-0000-0000-000000000000:00000000-0000-0000-0000-000000000000_0000-00-00 -BillingProfileName 0000-0000-000-000 -MaxCount 10
```

Get most recent 10 invoices of the specific billing account and specific billing profile and include the download Url in the result.

### Example 10
```
PS C:\> Get-AzBillingInvoice -Latest -GenerateDownloadUrl -BillingAccountName 00000000-0000-0000-0000-000000000000:00000000-0000-0000-0000-000000000000_0000-00-00 -BillingProfileName 0000-0000-000-000
```

Get latest invoice by billing account name and billing profile name and include download url for invoice in the result.

### Example 10
```
PS C:\> Get-AzBillingInvoice -BillingAccountName 00000000-0000-0000-0000-000000000000:00000000-0000-0000-0000-000000000000_0000-00-00 -BillingProfileName 0000-0000-000-000 -PeriodStartDate 0000-00-00 -PeriodEndDate 0000-00-00
```

Get invoices by billing account name and billing profile name for a billing period specified by perioStart date and periodEnd date.

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

### -GenerateDownloadUrl
Generate the download url of the invoices.

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

### -Latest
Get the latest invoice.

```yaml
Type: SwitchParameter
Parameter Sets: Latest
Aliases:

Required: True
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -MaxCount
Determines the maximum number of records to return.

```yaml
Type: Int32
Parameter Sets: List
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Name
Name of a specific invoice to get or the most recent if not specified.

```yaml
Type: System.Collections.Generic.List`1[System.String]
Parameter Sets: Single
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -BillingAccountName
Name of a specific billing account to get invoices for.

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

### -BillingProfileName
Name of a specific billing profile to get invoices for.

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

### -PeriodStartDate
Start date for invoice.

```yaml
Type: DateTime
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PeriodEndDate
End date for invoice.

```yaml
Type: DateTime
Parameter Sets: (All)
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

### None
## OUTPUTS

### Microsoft.Azure.Commands.Billing.Models.PSInvoice
## NOTES

## RELATED LINKS
