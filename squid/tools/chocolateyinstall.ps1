﻿Install-ChocolateyZipPackage "$env:chocolateyPackageName" 'http://squid.acmeconsulting.it/download/squid-2.3.STABLE5-NT-bin.zip' "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)" -Checksum 'cdbdc6246a75f7dcd2a97839e2187fcf8f06202e612bb9dea0b78df076fdb447' -ChecksumType 'sha256'
