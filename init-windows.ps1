# Define the list of source paths and their target locations
$baseConfigDir = "C:\Users\amhariha\dotfiles"
$configMap = @{
    "hx" = "C:\Users\amhariha\AppData\Roaming\helix"
    "alacritty" = "C:\Users\amhariha\AppData\Roaming\alacritty"
    "wezterm\.wezterm.lua" = "C:\Users\amhariha\.wezterm.lua"
}

foreach ($relativePath in $configMap.Keys) {
    $source = Join-Path $baseConfigDir $relativePath
    $target = $configMap[$source]

    # Skip if target already exists
    if (Test-Path $target) {
        Write-Host "Skipped: Target already exists -> $target"
        continue
    }

    # Determine if source is a directory and set the /D flag accordingly
    $isDirectory = Test-Path $source -PathType Container
    $linkTypeFlag = if ($isDirectory) { "/D" } else { "" }

    # Create symbolic link using mklink
    cmd /c "mklink $linkTypeFlag `"$target`" `"$source`""
    Write-Host "Linked $source to $target"
}
