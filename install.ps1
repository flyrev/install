# Install Chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

# Install other stuff
Set-ExecutionPolicy Bypass -Scope Process -Force

choco feature enable -n allowGlobalConfirmation
choco feature enable -n allowEmptyChecksums
choco upgrade all
cinst battle.net
cinst cmake
cinst cmder
cinst discord
cinst epicgameslauncher
cinst git
cinst googlechrome
cinst gsudo
cinst make
cinst maven
cinst oraclejdk
cinst pdftk
cinst powertoys
cinst steam
cinst vscode
cinst 7zip.install

cinst SetDefaultBrowser
SetDefaultBrowser chrome

cinst nvm
refreshenv
nvm install latest
npm install -g npm
npm install -g yarn

Invoke-WebRequest 'https://get.pnpm.io/v6.16.js' -UseBasicParsing -o pnpm.js; node pnpm.js add --global pnpm; Remove-Item pnpm.js
pnpm add -g pnpm

Install-PackageProvider -Name NuGet -Force
Install-Module PSWindowsUpdate -Force
Import-Module PSWindowsUpdate
Get-WindowsUpdate -Install -AcceptAll
