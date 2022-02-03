# Install Chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

# Install other stuff
Set-ExecutionPolicy Bypass -Scope Process -Force

choco feature enable -n allowGlobalConfirmation
choco upgrade all
choco install googlechrome
choco install cmder
choco install git
choco install discord
choco install 7zip.install
choco install mingw
choco install make
choco install cmake
choco install powertoys
choco install pdftk
choco install yarn
choco install epicgameslauncher

Install-PackageProvider -Name NuGet -Force
Install-Module PSWindowsUpdate -Force
Import-Module PSWindowsUpdate
Get-WindowsUpdate -Install -AcceptAll
