# Check if the current process is running as administrator
$isAdmin = ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)

if ($isAdmin) {
    Write-Host "PowerShell is running as Administrator."
} else {
    Write-Warning "PowerShell is NOT running as Administrator. Please restart with elevated privileges."
    exit
  }
# Step 1: Determine the current location of the Windows Terminal settings
$basePath = "$env:LOCALAPPDATA\Packages"
# Search for the Windows Terminal package directory
$packageFolder = Get-ChildItem -Path $basePath -Directory -Filter "Microsoft.WindowsTerminal_*" | Select-Object -First 1

$settingsFolder = "" # Initialize to empty string

if ($packageFolder) {
    # Construct the full path to the LocalState folder
    $settingsFolder = Join-Path -Path $packageFolder.FullName -ChildPath "LocalState"
} else {
    Write-Warning "Could not automatically determine the Windows Terminal settings folder path."
    exit
}

# Step 2: Check if the folder exists
if (Test-Path -Path $settingsFolder) {
    Write-Host "Windows Terminal settings folder found at: $settingsFolder"

    # Step 3: Delete the existing folder
    Remove-Item -Path $settingsFolder -Recurse -Force
    Write-Host "Deleted the existing Windows Terminal settings folder."

    # Step 4: Create a symbolic link to the Terminal folder in this repository
    $repoTerminalFolder = "D:\source\profile\Terminal"
    New-Item -ItemType SymbolicLink -Path $settingsFolder -Target $repoTerminalFolder
    Write-Host "Symlink created from $settingsFolder to $repoTerminalFolder."
}