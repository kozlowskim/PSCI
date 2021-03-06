function Test-ForPipelineParameter
{
    param(
    [Parameter(ParameterSetName='TestCommandInfo',Mandatory=$true,ValueFromPipeline=$true)]
    [Management.Automation.CommandInfo]
    $CommandInfo
    )
        
    
    process {    
		# Custom OBJ change start: excluded
        <#if ($commandInfo.Parameters.Count) {
            $pipelineParameterExists = $CommandInfo.Parameters.Values | 
                Select-Object -ExpandProperty Attributes | 
                Where-Object { $_.ValueFromPipeline -or $_.ValueFromPipelineByPropertyName } 
                
            if (-not $pipelineParameterExists) {
                Write-Error "The essence of PowerShell is in the Pipeline, by $CommandInfo has no parameters that use it."
                return
            }
        }#>
		# Custom OBJ change end
    }
} 
