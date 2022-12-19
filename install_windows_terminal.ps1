# Check if Windows Terminal is already installed
$installed = Get-WmiObject -Class Win32_Product | Where-Object {$_.Name -like "Windows Terminal*"}

if ($installed) {
    Write-Output "Windows Terminal is already installed."
}
else {
    # Install the Microsoft Terminal package from the Microsoft Store
    Add-AppxPackage -Path "Microsoft.WindowsTerminal_*" -Register
}
