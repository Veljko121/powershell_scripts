# Check if Visual Studio Code is already installed
$installed = Get-WmiObject -Class Win32_Product | Where-Object {$_.Name -like "Visual Studio Code*"}

if ($installed) {
    Write-Output "Visual Studio Code is already installed."
}
else {
    # Download the Visual Studio Code installer
    $url = "https://aka.ms/win32-x64-user-stable"
    $output = "C:\Temp\vscode-installer.exe"
    Invoke-WebRequest -Uri $url -OutFile $output

    # Install Visual Studio Code
    Start-Process -FilePath $output -ArgumentList '/S' -Wait
}
