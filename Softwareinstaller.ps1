Set-ExecutionPolicy -ExecutionPolicy RemoteSigned
iwr https://chocolatey.org/install.ps1 -UseBasicParsing | iex
choco install 7zip -y
choco install googlechrome -y
choco install firefox -y
choco install ccleaner -y
choco install teamviewer --version=12.0.72365 -ignore-checksums -y
choco install vlc -y
choco install lastpass -y
choco install greenshot -y
choco install adobereader -y
choco install imgburn -y
choco install malwarebytes -y
choco install openoffice -y
choco install spark -y
choco update all -y
Set-ExecutionPolicy -ExecutionPolicy Restricted