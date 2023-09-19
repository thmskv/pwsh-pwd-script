$ModuleState = @{
    Scripts = @()
    Cache = [System.Collections.Generic.HashSet[string]]@()
}

function Add-PwdScript {
    param(
        [Parameter(Mandatory)]
        [string] $Path,
        [Parameter(Mandatory)]
        [scriptblock] $ScriptBlock,
        [switch] $AsJob,
        [switch] $RunEverytime,
        [string] $Name
    )

    $script:ModuleState.Scripts += @{
        Name = $Name
        Path = $Path
        Script = $ScriptBlock
        AsJob = $AsJob
    }
}

function Test-Path($path) {
    return $pwd.Path.ToLower().StartsWith($_.Path.ToLower())
}

function Test-Cache($name) {
    return $script:ModuleState.Cache.Contains($name)
}

function Invoke-PwdScript {
    $script:ModuleState.Scripts | ForEach-Object {
        $path = $_.Path
        $name = $_.Name ? $_.Name : $path

        if (-not (Test-Path $path)) {
            $script:ModuleState.Cache.Remove($name) | Out-Null
        } elseif (-not (Test-Cache $path) -or $_.RunEverytime) {
            if ($_.AsJob) {
                Start-Job -ScriptBlock $_.Script | Out-Null
            } else {
                Invoke-Command -ScriptBlock $_.Script
            }

            $script:ModuleState.Cache.Add($name) | Out-Null
        }
    }
}

. $PSScriptRoot\SetLocation.ps1

Export-ModuleMember -Function Set-Location
Export-ModuleMember -Function Add-PwdScript
Export-ModuleMember -Function Invoke-PwdScript