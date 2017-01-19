$option=$args[0]

#Requires -RunAsAdministrator

#Write-Host $option

if (-Not ($option -eq "enable" -or $option -eq "disable"))
{
	Write-Host "Script requires a parameter. Please pass 'enable' or 'disable'"
	Exit
}

# Get the Hyper-V feature and store it in $hyperv
$hyperv = Get-WindowsOptionalFeature -FeatureName Microsoft-Hyper-V-All -Online
#Write-Host "Hyper-V is " $hyperv.State

if($option -eq "enable") {
	if($hyperv.State = "Enabled")
	{
		Write-Host "Hyper-V is already enabled.  You requested to enable. Nothing to do - Bailing"
	} else {
		Write-Host "Enabling Hyper-V. You will be requested to restart your device."
	        Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V-All
	}
} else {
	if($hyperv.State = "Disabled")
        {
		Write-Host "Hyper-V is already disable.  You requested to disable. Nothing to do - Bailing"
        } else {
		Write-Host "Disabling Hyper-V. You will be requested to restart your device."
	        Disable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V-All
        }
}

