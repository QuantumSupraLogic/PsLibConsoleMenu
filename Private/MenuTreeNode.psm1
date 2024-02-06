using namespace System.Collections.Generic
using module .\MenuItem.psm1

Set-StrictMode -Version 3.0

class MenuTreeNode:System.Collections.Generic.List[MenuItem] {
    hidden [MenuItem] $MenuItem
    hidden [List[MenuTreeNode]] $Children 
    hidden [MenuTreeNode] $Parent
   
    MenuTreeNode([MenuItem] $menuItem) {
        $this.MenuItem = $menuItem
        $this.Children = New-Object System.Collections.Generic.List[MenuTreeNode]
    }
    
    [MenuItem] MenuItem() {
        return $this.MenuItem
    }
    
    [MenuTreeNode] Children() {
        return $this.Children
    }

    [MenuTreeNode] AddChild([MenuItem] $menuItem) {
        $node = [MenuTreeNode]::New($menuItem)
        $node.Parent = $this
        $this.Children.Add($node)
        return $node
    }
}