using namespace System.Collections.Generic
using module .\MenuItem.psm1
using module .\MenuTreeNode.psm1

class ConsoleMenu {
    hidden [MenuTreeNode] $CurrNode

    ConsoleMenu([MenuTreeNode] $root) {
        $this.CurrNode = $root

        $this.SelectNode
    }
    
    hidden [void] SelectNode() {
        Clear-Host

        $this.DisplayMenu

        $this.UserInput
    }

    hidden [void] UserInput() {

    }

    hidden [void] DisplayMenu() {
        Write-Host

        $i = 0
        foreach ($child in $this.CurrNode.Children) {
            Write-Host $child.MenuItem.description
        }
    }
}