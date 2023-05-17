using module ..\PsLibConsoleMenu\Private\ConsoleMenu.psm1
using module ..\PsLibConsoleMenu\Private\MenuItem.psm1
using module ..\PsLibConsoleMenu\Private\MenuTreeNode.psm1

$rootitem = [MenuItem]::New('root', '')
$item1 = [MenuItem]::New('foo', 'bar')
$item2 = [MenuItem]::New('roo', 'far')
$item3 = [MenuItem]::New('noo', 'tar')


$root = [MenuTreeNode]::New($rootitem)
$a1 = $root.AddChild($item1)
$a2 = $root.AddChild($item2)
$b1 = $a2.AddChild($item3)

$men = [ConsoleMenu]::New($root)

Write-Host "done"