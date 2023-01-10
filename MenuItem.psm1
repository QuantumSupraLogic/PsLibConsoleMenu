class MenuItem {
    [system.Guid] $id
    [string] $desription
    [System.Guid] $parentId
    [string] $action

    MenuItem ([MenuItem] $parent, [string] $description, [string] $action) {
        this.$id = System.Guid.NewGuid
        this.$description = $description
        this.$action = $action
        this.$parentId = $parent.id
    }

}