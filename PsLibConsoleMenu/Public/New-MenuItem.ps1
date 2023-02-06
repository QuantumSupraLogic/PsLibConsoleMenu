using module ../Private/MenuItem.psm1
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