
#supress error messages, can't be bothered to do conditionals for the services actually existing :D
$ErrorActionPreference = 'silentlycontinue'

echo 'Disabling non-essential ASUS services'
Get-Service ASUSLinkNear | Stop-Service
Get-Service ASUSLinkNearExt | Stop-Service
Get-Service ASUSLinkRemote | Stop-Service
Get-Service ASUSSoftwareManager | Stop-Service
Get-Service ASUSSystemAnalysis | Stop-Service
Get-Service ASUSSystemDiagnosis | Stop-Service
Get-Service asus | Stop-Service
Get-Service asusm | Stop-Service
Get-Service AsusSwitch | Stop-Service
Get-Service AsusAppService | Stop-Service

echo 'Deleting non-essential ASUS services'
Get-Service ASUSLinkNear | Remove-Service
Get-Service ASUSLinkNearExt | Remove-Service
Get-Service ASUSLinkRemote | Remove-Service
Get-Service ASUSSoftwareManager | Remove-Service
Get-Service ASUSSystemAnalysis | Remove-Service
Get-Service ASUSSystemDiagnosis | Remove-Service
Get-Service asus | Remove-Service
Get-Service asusm | Remove-Service
Get-Service AsusSwitch | Remove-Service
Get-Service AsusAppService | Remove-Service

echo 'Removing Asus tasks'
Get-ScheduledTask '*ASUS Update Checker*' |  Unregister-ScheduledTask -InputObject {$_} -Confirm:$false
Get-ScheduledTask '*AsusSystemAnalysis*' |  Unregister-ScheduledTask -InputObject {$_} -Confirm:$false