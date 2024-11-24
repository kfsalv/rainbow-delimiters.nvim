# broken/missing in tree-sitter-powershell
# and breaks treesitter and rainbow-delimiters sometimes
# terneary
$x = $false ? 0 : 1

# invokation_expression treesitter error
@(1, 2, 3).ForEach({$_})
@(1, 2, 3).Where{$_ -eq $true}

# invokation_expression works
@(1, 2, 3).Where({$_ -eq $true})
@(1, 2, 3).ForEach{$_}
