#
# Windows PowerShell script for AD DS Deployment
# automates the process described here:
# https://cloud.google.com/solutions/deploying-microsoft-active-directory-domain-controllers-with-advanced-networking-configuration-on-gcp#configure_dc-1_as_a_domain_controller
#

Import-Module ADDSDeployment
Install-ADDSForest `
-CreateDnsDelegation:$false `
-DatabasePath "C:\Windows\NTDS" `
-DomainMode "WinThreshold" `
-DomainName "example.org" `
-DomainNetbiosName "EXAMPLE" `
-ForestMode "WinThreshold" `
-InstallDns:$true `
-LogPath "C:\Windows\NTDS" `
-NoRebootOnCompletion:$false `
-SysvolPath "C:\Windows\SYSVOL" `
-Force:$true
