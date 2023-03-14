---
external help file: Az.Compute-help.xml
Module Name: Az.Compute
online version: https://learn.microsoft.com/powershell/module/az.compute/set-azvmssvmruncommand
schema: 2.0.0
---

# Set-AzVmssVMRunCommand

## SYNOPSIS
The operation to create or update the VMSS VM run command.

## SYNTAX

### UpdateExpanded (Default)
```
Set-AzVmssVMRunCommand -InstanceId <String> -ResourceGroupName <String> -RunCommandName <String>
 -VMScaleSetName <String> [-SubscriptionId <String>] -Location <String> [-AsyncExecution]
 [-ErrorBlobUri <String>] [-OutputBlobUri <String>] [-Parameter <IRunCommandInputParameter[]>]
 [-ProtectedParameter <IRunCommandInputParameter[]>] [-RunAsPassword <String>] [-RunAsUser <String>]
 [-SourceCommandId <String>] [-SourceScript <String>] [-SourceScriptUri <String>] [-Tag <Hashtable>]
 [-TimeoutInSecond <Int32>] [-DefaultProfile <PSObject>] [-AsJob] [-Break]
 [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-NoWait] [-Proxy <Uri>]
 [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### ScriptLocalPath
```
Set-AzVmssVMRunCommand -InstanceId <String> -ResourceGroupName <String> -RunCommandName <String>
 -VMScaleSetName <String> [-SubscriptionId <String>] -Location <String> [-AsyncExecution]
 [-ErrorBlobUri <String>] [-OutputBlobUri <String>] [-Parameter <IRunCommandInputParameter[]>]
 [-ProtectedParameter <IRunCommandInputParameter[]>] [-RunAsPassword <String>] [-RunAsUser <String>]
 [-Tag <Hashtable>] [-TimeoutInSecond <Int32>] -ScriptLocalPath <String> [-DefaultProfile <PSObject>] [-AsJob]
 [-Break] [-HttpPipelineAppend <SendAsyncStep[]>] [-HttpPipelinePrepend <SendAsyncStep[]>] [-NoWait]
 [-Proxy <Uri>] [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

## DESCRIPTION
The operation to create or update the VMSS VM run command.

## EXAMPLES

### EXAMPLE 1
```
Set-AzVmssVMRunCommand -ResourceGroupName MyRG0 -VMScaleSetName MyVMSS -InstanceId 0 -RunCommandName MyRunCommand -Location EastUS2EUAP -SourceScriptUri "https://myst.blob.core.windows.net/mycontainer/myscript.ps1?sp=r&st=2022-10-27T21:02:35Z&se=2022-10-28T05:02:35Z&spr=https&sv=2021-06-08&sr=b&sig=0I%2FIiYayRwHasfasasfdasdfasdeTsQjLnpZjA%3D"
```

### EXAMPLE 2
```
Set-AzVmssVMRunCommand -ResourceGroupName MyRG0 -VMScaleSetName MyVMSS -InstanceId 0 -RunCommandName MyRunCommand -Location EastUS2EUAP -ScriptLocalPath "C:\MyScriptsDir\MyScript.ps1"
```

### EXAMPLE 3
```
Set-AzVmssVMRunCommand -ResourceGroupName MyRG0 -VMScaleSetName MyVMSSL -InstanceId 1 -RunCommandName MyRunCommand2 -Location EastUS2EUAP -SourceScript "id; echo HelloWorld"
```

### EXAMPLE 4
```
Set-AzVmssVMRunCommand -ResourceGroupName MyRG0 -VMScaleSetName MyVMSS -InstanceId 0 -RunCommandName MyRunCommand -Location EastUS2EUAP -SourceCommandId DisableWindowsUpdate
```

### EXAMPLE 5
```
Set-AzVmssVMRunCommand -ResourceGroupName MyRG0 -VMScaleSetName MyVMSS -InstanceId 1 -RunCommandName MyRunCommand3 -Location EastUS2EUAP -ScriptLocalPath "C:\MyScriptsDir\MyScript.ps1" -OutputBlobUri "https://vivst.blob.core.windows.net/vivcontainer/output.txt?sp=racw&st=2022-10-27T22:18:36Z&se=2022-10-28T06:18:36Z&spr=https&sv=2021-06-08&sr=b&sig=HQAu3Bl%2BKMofYTjMo8o5hasfadsfasdF4jIkRJra4S5FlEo%3D" -ErrorBlobUri "https://vivst.blob.core.windows.net/vivcontainer/error.txt?sp=racw&st=2022-10-27T22:18:36Z&se=2022-10-28T06:18:36Z&spr=https&sv=2021-06-08&sr=b&sig=HQAu3Bl%2BKMofYTjMo8o5h%asfasdfgdT%2F4jasfasdf5FlEo%3D"
```

### EXAMPLE 6
```
Set-AzVmssVMRunCommand -ResourceGroupName MyRG0 -VMScaleSetName MyVMSS -InstanceId 1 -RunCommandName MyRunCommand -Location EastUS2EUAP -ScriptLocalPath "C:\MyScriptsDir\MyScript.ps1" -RunAsUser myusername -RunAsPassword mypassword
```

## PARAMETERS

### -InstanceId
The instance ID of the virtual machine.

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

### -ResourceGroupName
The name of the resource group.

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

### -RunCommandName
The name of the virtual machine run command.

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

### -VMScaleSetName
The name of the VM scale set.

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

### -SubscriptionId
Subscription credentials which uniquely identify Microsoft Azure subscription.
The subscription ID forms part of the URI for every service call.

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
Resource location

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

### -AsyncExecution
Optional.
If set to true, provisioning will complete as soon as the script starts and will not wait for script to complete.

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

### -ErrorBlobUri
Specifies the Azure storage blob where script error stream will be uploaded.

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

### -OutputBlobUri
Specifies the Azure storage blob where script output stream will be uploaded.

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

### -Parameter
The parameters used by the script.
To construct, see NOTES section for PARAMETER properties and create a hash table.

```yaml
Type: IRunCommandInputParameter[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ProtectedParameter
The parameters used by the script.
To construct, see NOTES section for PROTECTEDPARAMETER properties and create a hash table.

```yaml
Type: IRunCommandInputParameter[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RunAsPassword
Specifies the user account password on the VM when executing the run command.

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

### -RunAsUser
Specifies the user account on the VM when executing the run command.

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

### -SourceCommandId
Specifies a commandId of predefined built-in script.

```yaml
Type: String
Parameter Sets: UpdateExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SourceScript
Specifies the script content to be executed on the VM.

```yaml
Type: String
Parameter Sets: UpdateExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SourceScriptUri
Specifies the script download location.

```yaml
Type: String
Parameter Sets: UpdateExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Tag
Resource tags

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

### -TimeoutInSecond
The timeout in seconds to execute the run command.

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

### -ScriptLocalPath
{{ Fill ScriptLocalPath Description }}

```yaml
Type: String
Parameter Sets: ScriptLocalPath
Aliases:

Required: True
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
Run the command as a job

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
Wait for .NET debugger to attach

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
SendAsync Pipeline Steps to be appended to the front of the pipeline

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
SendAsync Pipeline Steps to be prepended to the front of the pipeline

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
Run the command asynchronously

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
The URI for the proxy server to use

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
Credentials for a proxy server to use for the remote call

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
Use the default credentials for the proxy

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

### Microsoft.Azure.PowerShell.Cmdlets.Compute.Models.Api20210701.IVirtualMachineRunCommand
## NOTES
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties.
For information on hash tables, run Get-Help about_Hash_Tables.

PARAMETER \<IRunCommandInputParameter\[\]\>: The parameters used by the script.
  Name \<String\>: The run command parameter name.
  Value \<String\>: The run command parameter value.

PROTECTEDPARAMETER \<IRunCommandInputParameter\[\]\>: The parameters used by the script.
  Name \<String\>: The run command parameter name.
  Value \<String\>: The run command parameter value.

## RELATED LINKS

[https://learn.microsoft.com/powershell/module/az.compute/set-azvmssvmruncommand](https://learn.microsoft.com/powershell/module/az.compute/set-azvmssvmruncommand)

