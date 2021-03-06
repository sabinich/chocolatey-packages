$packageName = 'winprefetchview'
$url = 'http://www.nirsoft.net/utils/winprefetchview.zip'
$checksum = '80452a6b7c29c76b9f90dd0d77c4a18c936f91e3'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/winprefetchview-x64.zip'
$checksum64 = '8bfc9378e9bc45eb765aa7b17a052cf498cb0a5f'
$checksumType64 = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "$($packageName).exe"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"

Set-Content -Path ("$installFile.gui") `
            -Value $null