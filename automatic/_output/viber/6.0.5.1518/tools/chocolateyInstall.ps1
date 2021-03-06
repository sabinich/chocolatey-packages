$packageName = 'viber'
$installerType = 'exe'
$silentArgs = '/install /quiet /norestart'
$url = 'http://download.cdn.viber.com/cdn/desktop/windows/ViberSetup.exe'
$checksum = '225226700d596a1f5c2c5203020cc97954f9721fcf90c45bb6aa7156bbb2390e'
$checksumType = 'sha256'
$validExitCodes = @(0)

$toolsPath = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$ahkFile = Join-Path $toolsPath 'chocolateyInstall.ahk'
Start-Process 'AutoHotKey' $ahkFile

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"