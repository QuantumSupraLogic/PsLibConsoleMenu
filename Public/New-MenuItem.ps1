using module ../Private/MenuItem.psm1

Set-StrictMode -Version 3.0

function New-MenuItem {
    [CmdletBinding()]
    param (
        [Parameter()]
        [MenuItem]
        $parent,
        [Parameter()]
        [string]
        $description,
        [Parameter()]
        [string]
        $action
    )
    [MenuItem]::New($parent, $description, $action)
}