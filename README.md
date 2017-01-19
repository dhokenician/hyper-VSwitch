# hyper-VSwitch
Simple PowerShell to turn Hyper-V on and Off on Windows

Sick of losing efficiency with Docker (runs better with Hper-V) and Virtual Box (oil and water).  Made a quick powershell that will enable or disable Hyper-V.

###Requirement
Windows with Powershell (Windows 7 or 10 for example)

After execution it will require a restart.

###Examples
Example for enabling Hyper-V

```bash
Powershell.exe -file C:\yourgitclone\hyper-VSwitch\PowerShellSwitch.ps enable -RunAsAdministrator
```

Example for disabling Hyper-V

```bash
Powershell.exe -file C:\yourgitclone\hyper-VSwitch\PowerShellSwitch.ps disable -RunAsAdministrator
```

Don't forget to set the execution policy of powerShell to run its magic.

Set-ExecutionPolicy Unrestricted


License
----

MIT
