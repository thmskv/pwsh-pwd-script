@{

# Script module or binary module file associated with this manifest.
RootModule = 'PwdScript.psm1'

# Version number of this module.
ModuleVersion = '1.0.0'

# ID used to uniquely identify this module
GUID = 'e9860589-ae2b-494c-83cb-ddd3b530cb31'

# Author of this module
Author = 'Thomas Skov'

# Company or vendor of this module
CompanyName = 'AC Dancode'

# Copyright statement for this module
Copyright = '(c) AC Dancode. All rights reserved.'

# Description of the functionality provided by this module
# Description = ''

# Minimum version of the PowerShell engine required by this module
PowerShellVersion = '7.0'

# Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
FunctionsToExport = @(
    "Add-PwdScript",
    "Invoke-PwdScript"
)

# Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
CmdletsToExport = @()

# Variables to export from this module
VariablesToExport = '*'

# Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
AliasesToExport = @()

# Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
PrivateData = @{
    PSData = @{

        # Tags applied to this module. These help with module discovery in online galleries.
        Tags = @("environment", "location", "directory", "pwd", "automation")

        # A URL to the license for this module.
        LicenseUri = 'https://github.com/thmskv/pwsh-pwd-script/LICENSE.txt'

        # A URL to the main website for this project.
        ProjectUri = 'https://github.com/thmskv/pwsh-pwd-script'

        # ReleaseNotes of this module
        ReleaseNotes = 'https://github.com/thmskv/pwsh-pwd-script/CHANGELOG.md'

    } # End of PSData hashtable

} # End of PrivateData hashtable

# HelpInfo URI of this module
# HelpInfoURI = ''

# Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
# DefaultCommandPrefix = ''

}