function Unregister-ScriptCopPatrol
{
    <#
    .Synopsis
        Unregisters a script cop patrol
    .Description
        Unregisters a script cop patrol (rule group).
    .Example
        Unregister-ScriptCopPatrol -Name Test-Documentation
    .Link
        Register-ScriptCopPatrol
    #>
    param(
    # The name of the patrol
    [Parameter(ParameterSetName='Name',Mandatory=$true)]
    [string]$Name    
    )
    
    begin {
        # Create the scriptcoppatrols structue if it does not exist
        if (-not ($script:ScriptCopPatrols)) {
            $script:ScriptCopPatrols = @{}            
        }
    }
    
    process {
        #region Remove by name
        if ($psCmdlet.ParameterSetName -eq 'Name') {
            if ($script:ScriptCopPatrols.Contains($Name)) {
                $script:ScriptCopPatrols.Remove($name)
            }               
        }         
        #endregion
        
    }
} 
