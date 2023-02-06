class MenuItem {
    [system.Guid] $id
    [string] $description
    [System.Guid] $parentId
    [string] $action

    MenuItem ([MenuItem] $parent, [string] $description, [string] $action) {
        $this.id = New-Guid
        $this.description = $description
        $this.action = $action
        if ($null -eq $parent){
            $this.parentId = [GUID]::Empty
        } else {
            $this.parentId = $parent.id
        }
    }

}

