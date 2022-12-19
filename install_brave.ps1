# Check if Brave is already installed
$installed = Get-WmiObject -Class Win32_Product | Where-Object {$_.Name -like "Brave*"}

if ($installed) {
    Write-Output "Brave is already installed."
}
else {
    # Download the Brave installer
    $url = "https://laptop-updates.brave.com/latest/winx64"
    $output = "C:\Temp\brave-installer.exe"
    Invoke-WebRequest -Uri $url -OutFile $output

    # Install Brave
    Start-Process -FilePath $output -ArgumentList '/S' -Wait
}
