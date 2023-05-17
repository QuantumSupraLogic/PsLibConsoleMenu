class MenuItem {
    [system.Guid] $id
    [string] $description
    [System.Guid] $parentId
    [string] $action

    MenuItem ( [string] $description, [string] $action) {
        $this.id = New-Guid
        $this.description = $description
        $this.action = $action
    }
}

