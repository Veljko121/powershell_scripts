# Check if VirtualBox is already installed
$installed = Get-WmiObject -Class Win32_Product | Where-Object {$_.Name -like "VirtualBox*"}

if ($installed) {
    Write-Output "VirtualBox is already installed."
}
else {
    # Download the VirtualBox installer
    $url = "https://download.virtualbox.org/virtualbox/6.1.22/VirtualBox-6.1.22-140239-Win.exe"
    $output = "C:\Temp\virtualbox-installer.exe"
    Invoke-WebRequest -Uri $url -OutFile $output

    # Install VirtualBox
    Start-Process -FilePath $output -ArgumentList '/S' -Wait
}
