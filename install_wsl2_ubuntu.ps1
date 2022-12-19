# Enable the Virtual Machine Platform feature
Enable-WindowsOptionalFeature -Online -FeatureName VirtualMachinePlatform

# Set WSL 2 as the default version
wsl --set-default-version 2

# Install a Linux distribution from the Microsoft Store
$distro = "Ubuntu"
$install = "Microsoft.LinuxDistribution"
Add-AppxPackage -Path "$install_$distro*" -Register
