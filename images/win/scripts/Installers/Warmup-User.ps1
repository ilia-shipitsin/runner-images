################################################################################
##  File:  Warmup-User.ps1
##  Desc:  Performs user part of warm up and moves data to C:\Users\Default
################################################################################

Write-Host "Warmup 'devenv.exe /updateconfiguration'"

New-Item -Path 'HKLM:\SOFTWARE\Microsoft\Active Setup\Installed Components\devenv-updateconfiguration' -ItemType RegistryKey -Force
New-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Active Setup\Installed Components\devenv-updateconfiguration' -Name 'StubPath' -Value 'C:\Program Files\Microsoft Visual Studio\2022\Enterprise\Common7\IDE\devenv.com /updateconfiguration' -PropertyType String -Force
New-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Active Setup\Installed Components\devenv-updateconfiguration' -Name 'IsInstalled' -Value 1 -PropertyType DWord -Force

#
# https://github.com/actions/runner-images/issues/8164
#
New-Item -Path 'HKLM:\SOFTWARE\Microsoft\Active Setup\Installed Components\sqllocaldb' -ItemType RegistryKey -Force
New-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Active Setup\Installed Components\sqllocaldb' -Name 'StubPath' -Value 'C:\Program Files\Microsoft SQL Server\150\Tools\Binn\SqlLocalDB.exe create MSSQLLocalDB' -PropertyType String -Force
New-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Active Setup\Installed Components\sqllocaldb' -Name 'IsInstalled' -Value 1 -PropertyType DWord -Force

Write-Host "Warmup-User.ps1 - completed"
